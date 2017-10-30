<?php
namespace Manage\Controller;
use Think\Page;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/4/7
 * Time: 9:59
 */
class PrivilegeController extends IndexController{
    /*
     * 权限管理后台控制器
     */
    public function index()
    {
        $M=D('privilege');

        /**************************************** 搜索 ****************************************/
        $where = array();
        $wor=$_POST['keywords'];
        if($_POST['keywords']!=''){
            $where['pri_name'] = array('like', "%$wor%");
        }
        /************************************* 翻页 ****************************************/
        $count= $M->where($where)->count();//查询满足要求的总记录数
        $Page=new Page($count,5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show=$Page->show();//分页输出显示
        /************************************** 取数据 ******************************************/

        $data=$M->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();

        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        //$list = $M->where('status=1')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('page',$show);
        $this->assign('person',$data);

        /*$this->setPageBtn('角色列表', '添加角色', U('add'));*/
        $this->display();
    }
    /*
     * 添加
     */
    public function addPri()
    {
        if(IS_POST)
        {
            $model = D('manage/privilege');
            if($model->create(I('post.'), 1))
            {
                if($id = $model->add())
                {
                    $this->success('添加成功！', U('lst?p='.I('get.p')));
                    exit;
                }
            }
            $this->error($model->getError());
        }
        $parentModel = D('manage/privilege');
        $parentData = $parentModel->getTree();
        $this->assign('parentData', $parentData);

        //$this->setPageBtn('添加权限', '权限列表', U('lst?p='.I('get.p')));
        $this->display();
    }
}