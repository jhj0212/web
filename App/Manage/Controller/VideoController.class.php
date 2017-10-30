<?php
namespace Manage\Controller;
use Think\Page;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/4/7
 * Time: 9:59
 */
class VideoController extends IndexController{
    /*
     * 视频管理后台控制器
     */
    public function index()
    {
        $M=D('video');
        $where = array();
        $wor = $_POST['keywords'];
        if ($_POST['keywords'] != '') {
            $where['title'] = array('like', "%$wor%");
        }
        $count = $M->where($where)->count();//查询满足要求的总记录数
        $Page = new Page($count, 5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show = $Page->show();//分页输出显示
        $data=$M->where($where)
            ->limit($Page->firstRow . ',' . $Page->listRows)
            ->select();

        $this->assign('page',$show);
        $this->assign('person',$data);

        $this->display();
    }
    /*
     * 列表页视频是否启用
     */
    public function ajaxUpdateStatus()
    {
        $adminId = I('get.id');

        $model = M('video');
        $info = $model->find($adminId);
        // 判断如果当前是启用的就修改为禁用
        if($info['state'] == 1)
        {
            $model->where(array('id'=>array('eq', $adminId)))->setField('state', 0);
            echo 0;
        }
        else
        {
            $model->where(array('id'=>array('eq', $adminId)))->setField('state', 1);
            echo 1;
        }
    }
    /*
     * 添加
     */
    public function addVideo()
    {
        if(IS_POST)
        {
            $data = array(
                'title' => $_POST['title'],
                'content' => $_POST['content'],
                'url'  => $_POST['url'],
                'time' => time(),
                'state'=>$_POST['state']
            );
            if (M('video')->add($data)) {
                $this->success('添加成功', U('index'));
                exit;
            } else {
                $this->error('添加失败');
            }
        }
        $this->display();
    }
    /*
     * 修改
     */
    public function edit()
    {
        $model = D('video');
        if(IS_POST) {
            $data = array(
                'title' => $_POST['title'],
                'content' => $_POST['content'],
                'url'  => $_POST['url'],
                'time' => time(),
            );
            $where['id'] = $_POST['id'];
            if( $model->where($where)->save($data)){
                $this->success('修改成功', U('index'));
                exit;
            }else{
                $this->error('修改失败');
            }
        }
        $res = M('video')->find($_GET['id']);
        $this->assign('data', $res);//把数据发送到模板上
        $this->display();//调用数据
    }

    public function content($id){
        $data = M('video')->fetchSql(false)->find($id);
        $this->assign('info',$data);
        $this->display();
    }
    /*
    * 返回
    */
    public function back(){
        redirect(U('index'));
    }
}