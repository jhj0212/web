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
        $count = $M->count();//��ѯ����Ҫ����ܼ�¼��
        $Page = new Page($count, 10);// ʵ������ҳ�� �����ܼ�¼����ÿҳ��ʾ��(5)
        /*$Page->setConfig('header', '������');
        $Page->setConfig('prev', '��һҳ');
        $Page->setConfig('next', '��һҳ');
        $Page->setConfig('first', '��ҳ');
        $Page->setConfig('end', 'ĩҳ');*/
        $show = $Page->show();//��ҳ�����ʾ
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