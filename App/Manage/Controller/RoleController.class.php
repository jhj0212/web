<?php
namespace Manage\Controller;
use Think\Page;
/**
 * Created by PhpStorm.
 * Admin: Administrator
 * Date: 2017/4/7
 * Time: 10:01
 */
class RoleController extends IndexController{
    /*
     * 角色管理后台控制器
     */
    public function index()
    {
        $M=D('manage/role');
        /**************************************** 搜索 ****************************************/
        $where = array();
        $wor=$_POST['keywords'];
        if($_POST['keywords']!=''){
            $where['role_name'] = array('like', "%$wor%");
        }
        /************************************* 翻页 ****************************************/
        $count= $M->where($where)->count();//查询满足要求的总记录数
        $Page=new Page($count,5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show=$Page->show();//分页输出显示
        /************************************** 取数据 ******************************************/

        $data= $M->field('a.*,GROUP_CONCAT(c.pri_name) pri_name')
            ->alias('a')->join('LEFT JOIN db_role_privilege b ON a.id=b.role_id LEFT JOIN db_privilege c ON b.pri_id=c.id')
            ->where($where)->group('a.id')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();

        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        //$list = $M->where('status=1')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('page',$show);
        $this->assign('person',$data);

        $this->display();
    }
    /*
     * 添加
     */
    public function addRole()
    {
        if(IS_POST)
        {
            //var_dump($_POST);die;
            $model = D('manage/role');
            if($model->create(I('post.'), 1))
            {
                if($id = $model->add())
                {
                    $priId = I('post.pri_id');
                    if($priId)
                    {
                        $rpModel = M('role_privilege');
                        foreach ($priId as $k => $v)
                        {
                            $rpModel->add(array(
                                'pri_id' => $v,
                                'role_id' => $id,
                            ));
                        }
                    }
                    $this->success('添加成功！', U('Role/index'));
                    exit;
                }
            }
            $this->error($model->getError());
        }

        // 取出所有的权限
        $priModel = D('privilege');
        $priData = $priModel->getTree();
        $this->assign('priData', $priData);

        //$this->setPageBtn('添加角色', '角色列表', U('lst?p='.I('get.p')));
        $this->display();
    }
    /*
     * 编辑
     */
    public function edit()
    {

        $id = I('get.id');

        //$rpModel = M('role_privilege');
        /*$rm=$rpModel->where(array('role_id'=>array('eq', I('get.id'))))->delete();*/
        if(IS_POST)
        {
            $model = D('manage/role');
            if($model->create(I('post.'), 2))
            {
                // 先清除原来的权限
                $rpModel = M('role_privilege');
                $rpModel->where(array('role_id'=>array('eq', I('post.rid'))))->delete();
                // 接收表单重新添加一遍
                $priId = I('post.pri_id');
                if($priId)
                {
                    foreach ($priId as $k => $v)
                    {
                        $rpModel->add(array(
                            'pri_id' => $v,
                            'role_id' => $_POST['rid'],
                        ));
                    }
                }
                $this->success('修改成功！', U('Role/index'));
                exit;
            }
            $this->error($model->getError());
        }
        $model = M('role');
        $data = $model->find($id);
        $this->assign('data', $data);

        // 取出所有的权限
        $priModel = D('privilege');
        $priData = $priModel->getTree();
        $this->assign('priData', $priData);
        // 取出当前角色所拥有的权限的ID
        $rpModel = M('role_privilege');
        $rpData = $rpModel->field('GROUP_CONCAT(pri_id) pri_id')->where(array('role_id'=>array('eq', $id)))->find();
        $this->assign('pri_id', $rpData['pri_id']);

        //$this->setPageBtn('修改角色', '角色列表', U('lst?p='.I('get.p')));
        $this->display();
    }
    /*
     * 删除
     */
    public function delRole()
    {
        $arModel = M('manage_role');
        $has = $arModel->where(array('role_id'=>array('eq', I('get.id'))))->count();
        if($has > 0)
        {
            $this->error = '有管理员属于这个角色，无法删除！';
            return FALSE;
        }
        // 把这个角色所拥有的权限的数据也一起删除
        $rpModel = M('role_privilege');
        $rpModel->where(array('role_id'=>array('eq', I('get.id'))))->delete();
        $model = D('manage/role');
        if($model->delete(I('get.id', 0)) !== FALSE)
        {
            $this->success('删除成功！', U('Role/index'));
            exit;
        }
        else
        {
            $this->error($model->getError());
        }
    }
    /*
    * 返回
    */
    public function back(){
        redirect(U('Role/index'));
    }
}