<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){  
    	$data = M('about_content as p')->fetchSql(false)
            ->join('db_about_us c ON p.pid=c.id')
            ->field('p.*,c.name')
            ->limit('6')
            ->order('p.id asc')->select();

        $intro = M('about_content')->where('pid = 1')->find();

        $this->assign('intro',$intro);
        $this->assign('about',$data);
        $this->display();
    }
    public function info(){  
		$id=$_GET['id'];
		//var_dump($id);
    	$data = M('about_content as p')->fetchSql(false)
            ->join('db_about_us c ON p.pid=c.id')
			->where(array('p.id'=>$id))
            ->field('p.*,c.name')
            ->order('p.id asc')
			->select();
		//var_dump($data);
        $this->assign('res',$data);
        $this->display();
    }
}