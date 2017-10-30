<?php
namespace Manage\Controller;
use Common\Controller\AuthController;
use Think\Auth;
use Think\Page;
use Think\Upload;

class OurController extends IndexController
{
    public function index()
    {
        $data = M('about_content as p')->fetchSql(false)
            ->join('db_about_us c ON p.pid=c.id')
            ->where('p.pid=1')
            ->field('p.*,c.name')
            ->order('p.id asc')
            ->select();
        $this->assign('data',$data);
        $this->display();
    }
    //内容详情
    public function content($id){
        /*$data = D('Book');
        $cases = $data->find($id);*/
        $data = M('about_content as p')->fetchSql(false)
            ->join('db_about_us c ON p.pid=c.id')
            ->where(array('p.id'=>$id))
            ->field('p.*,c.name')
            ->order('p.id asc')
            ->find();
        $this->assign('info',$data);
        $this->display();
    }
    /*
     * 修改
     */
    public function edit()
    {
        if(IS_POST) {
            if($_FILES['pic']['error']==0) {
                $upload = new \Think\Upload();// 实例化上传类
                $upload->maxSize = 3145728;// 设置附件上传大小
                $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
                $upload->rootPath = './Public/uploads/'; // 设置附件上传根目录
                // 上传单个文件
                $info = $upload->uploadOne($_FILES['pic']);
                //echo '/uploads/' . $info['savepath'] . $info['savename'];
                //echo "<img src='" . 'http://' . $_SERVER['HTTP_HOST'] . '/htdocs/public/uploads/' . $info['savepath'] . $info['savename'] . "'>";
                $imaAddress = '/uploads/' . $info['savepath'] . $info['savename'];
            }

            /*$url = $_POST['url'];
            $pic = $_POST['pic'];
            if ($url) {
                $imaAddress = $url;
            }else{
                $imaAddress = $pic;
            }*/
            $data = array(
                'title' => $_POST['title'],
                'content' => $_POST['content'],
                'time' => time(),
                /*'pic'=>$imaAddress*/
            );
            $model = D('about_content');
            $where['id'] = $_POST['id'];
            if ($model->where($where)->save($data)) {
                $this->success('修改成功', U('index'));
                exit;
            } else {
                $this->error('修改失败');
            }

        }
        $res = M('about_content')->find($_GET['id']);
        $this->assign('data', $res);//把数据发送到模板上
        $this->display();//调用数据
    }
    /*
    * 返回
    */
    public function back(){
        redirect(U('index'));
    }
}

