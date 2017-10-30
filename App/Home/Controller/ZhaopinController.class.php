<?php
namespace Home\Controller;
use Think\Controller;
class ZhaopinController extends Controller {
    public function zhaopin(){

        $data=D('job')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function zhuce(){

        $data=D('zhuce')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function daili(){

        $data=D('daili')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function dailiInfo(){
        $id=$_GET['id'];
        $data=D('daili')->where('id='.$id)->find();
        $this->assign('id',$id);
        $this->assign('data',$data);
        $this->display();
    }
    public function peixun(){

        $data=D('peixun')->select();
        $this->assign('data',$data);
        $this->display();
    }
}