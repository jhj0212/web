<?php
namespace Home\Controller;
use Think\Page;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/4/7
 * Time: 9:59
 */
class VideoController extends IndexController{
    /*
     * 视频
     */
    public function index()
    {

        $data=D('video')->select();

        $this->assign('person',$data);

        $this->display();
    }



}