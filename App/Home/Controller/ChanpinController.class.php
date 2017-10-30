<?php
namespace Home\Controller;
use Think\Controller;
use Think\Page;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/28
 * Time: 15:11
 */
class ChanpinController extends IndexController {

    public function chanpin()
    {       
        /*$data = M('product')->fetchSql(false)
            ->order('id')->select();*/
        $M=M('product');
        $count = $M->count();//查询满足要求的总记录数
        $Page = new Page($count, 10);// 实例化分页类 传入总记录数和每页显示的(5)
        /*$Page->setConfig('header', '条数据');
        $Page->setConfig('prev', '上一页');
        $Page->setConfig('next', '下一页');
        $Page->setConfig('first', '首页');
        $Page->setConfig('end', '末页');*/
        $show = $Page->show();//分页输出显示
        $data = $M->fetchSql(false)
            ->limit($Page->firstRow . ',' . $Page->listRows)
            ->select();
        $this->assign('page',$show);
        $this->assign('chanpin', $data);
        $this->display();
    }
    public function info(){
        $id=$_GET['id'];
        $data = M('product')->fetchSql(false)
            /*->join('db_product_type c ON p.pid=c.id')
            ->field('p.*,c.type')*/
            ->where(array('id'=>$id))
            ->order('id asc')
            ->find();
        //var_dump($data);
        $this->assign('res',$data);
        $this->display();
    }
}