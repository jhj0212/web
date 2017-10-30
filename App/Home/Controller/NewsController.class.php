<?php
namespace Home\Controller;

use Think\Page;

class NewsController extends IndexController
{
    //新闻类别查询
    public function news()
    {
        // $data = M('news as a')->join('db_news_type as t on a.pid=t.id')
        // ->field('a.*,t.type')->select();
         //var_dump($data);

        $data = M('news_type')->select();
        $info = M('news')->order('time desc')->select();

        // var_dump($data);
        // var_dump($info);
        $this->assign('newstype', $data);
        $this->assign('news', $info);
        $this->display();
    }
    public function info(){
        $id=$_GET['id'];
        //var_dump($id);
        $data = M('news as p')->fetchSql(false)
            ->join('db_news_type c ON p.pid=c.id')
            ->where(array('p.id'=>$id))
            ->field('p.*,c.type')
            ->order('p.id desc')
            ->select();
        $this->assign('res',$data);
        $this->display();
    }
    public function more(){
        $pid=$_GET['pid'];
        $count= M('news')->where(array('pid'=>$pid))->count();//查询满足要求的总记录数
        $Page=new Page($count,8 );// 实例化分页类 传入总记录数和每页显示的(5)
        $show=$Page->show();//分页输出显示
        $data = M('news as p')->fetchSql(false)
            ->join('db_news_type c ON p.pid=c.id')
            ->where(array('p.pid'=>$pid))
            ->field('p.*,c.type')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('p.id desc')
            ->select();
        $this->assign('page',$show);
        $this->assign('res',$data);
        $this->display();
    }
}


