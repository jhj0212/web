<?php
namespace Manage\Controller;
use Common\Controller\AuthController;
use Think\Auth;
use Think\Page;
use Think\Upload;

class PeixunController extends IndexController
{
    public function index()
    {
        $M=M('peixun');
        $where = array();
        $wor = $_POST['keywords'];
        if ($_POST['keywords'] != '') {
            $where['title'] = array('like', "%$wor%");
        }
        $count = $M->where($where)->count();//查询满足要求的总记录数
        $Page = new Page($count, 5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show = $Page->show();//分页输出显示
        $data = M('peixun')->where($where)->fetchSql(false)
            ->limit($Page->firstRow . ',' . $Page->listRows)
            ->select();
        $this->assign('page',$show);
        $this->assign('data',$data);
        $this->display();
    }
    //内容详情
    public function content($id){
        $data = M('peixun')->fetchSql(false)->find($id);
        $this->assign('info',$data);
        $this->display();
    }
    /*
     * 添加
     */
    public function addPeixun()
    {
        $this->display();
    }
    /*
     * 保存新增
     */
    public function runAddNews()
    {
        if ($data = M('peixun')->create()) {

                $data = array(
                    'title'     => $_POST['title'],
                    'content'   => $_POST['content'],
                    'time'      => time(),
                );
                if (M('peixun')->add($data)) {
                    $this->success('添加成功', U('index'));
                    exit;
                } else {
                    $this->error('添加失败');
                }
        }
        $this->error('添加失败');
    }
    /*
     * 修改
     */
    public function edit()
    {
        if(IS_POST) {
            $data = array(
                'title' => $_POST['title'],
                'content' => $_POST['content'],
                'time'     =>time(),
            );
            $model = D('peixun');
            $where['id'] = $_POST['id'];
            if( $model->where($where)->save($data)){
                $this->success('修改成功', U('index'));
                exit;
            }else{
                $this->error('修改失败');
            }

        }
        $res = M('peixun')->find($_GET['id']);
        $this->assign('data', $res);//把数据发送到模板上
        $this->display();//调用数据
    }
    /*
    * 删除
    */
    public function delete()
    {
        $model = D('peixun');
        if ($model->delete(I('get.id', 0)) !== FALSE) {
            /*D('news_picture')->where(array('id'=>array('eq', I('get.id'))))->delete();*/
            $this->success('删除成功！', U('Peixun/index'));
            exit;
        } else {
            $this->error($model->getError());
        }
    }
    /*
    * 返回
    */
    public function back(){
        redirect(U('index'));
    }
}

