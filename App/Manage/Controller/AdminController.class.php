<?php
namespace Manage\Controller;
use think\Controller;
use Think\Page;

/**
 * Created by PhpStorm.
 * Admin: Administrator
 * Date: 2017/3/31
 * Time: 13:23
 */
class AdminController extends IndexController {
    public function index(){
        //echo '管理账号后台控制器';
        $M=M('manage');

        /**************************************** 搜索 ****************************************/
        $where = array();
        $wor=$_POST['keywords'];
        if($_POST['keywords']!=''){
            $where['account'] = array('like', "%$wor%");
        }
        $status = I('get.status');
        if($status != '' && $status != '-1'){
            $where['status'] = array('eq', $status);
        }
        /************************************* 翻页 ****************************************/
        $count= $M->where($where)->count();//查询满足要求的总记录数
        $Page=new Page($count,5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show=$Page->show();//分页输出显示
        /************************************** 取数据 ******************************************/

        $data=$M->where($where)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();

        $this->assign('page',$show);
        $this->assign('person',$data);
        $this->display();
    }
    /*
     * 列表页管理员是否启用
     */
    public function ajaxUpdateStatus()
    {
        $adminId = I('get.id');
        // 超级管理员不能修改
        if($adminId == 1)
        {
            return FALSE;
        }
        // 不能修改别人的启用状态,除非是超级管理员
        $myId = session('aid');
        if($adminId != $myId && $myId > 1)
        {
            return FALSE;
        }
        $model = M('manage');
        $info = $model->find($adminId);
        // 判断如果当前是启用的就修改为禁用
        if($info['status'] == 1)
        {
            $model->where(array('id'=>array('eq', $adminId)))->setField('status', 0);
            echo 0;
        }
        else
        {
            $model->where(array('id'=>array('eq', $adminId)))->setField('status', 1);
            echo 1;
        }
    }
    /*
     * 跳转添加角色页面
     */
    public function addAdmin(){
        // 取出所有的角色
        $roleModel = M('role');
        $roleData = $roleModel->select();
        $this->assign('roleData', $roleData);
        $this->display();
    }
    /*
     * 用户查重
     */
    public function checkAccount(){
        if (!IS_AJAX){
            die('页面不存在');
        }
        $where['account']=$_GET['account'];
        $data=M('manage')->field('account')->where($where)->find();
        if($data){
            $this->ajaxReturn(1);	//已存在
        }else{
            $this->ajaxReturn(0);	//不存在
        }
    }

    /*
     * 添加用户表单处理
     */
    Public function runAddAdmin () {
        $M=D('manage');
        if($data=$M->create()) {
            if($_FILES['enclosure']['error']==0) {
                $upload = new \Think\Upload();// 实例化上传类
                $upload->maxSize = 3145728;// 设置附件上传大小
                $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
                $upload->rootPath = './Public/uploads/'; // 设置附件上传根目录
                // 上传单个文件
                $info = $upload->uploadOne($_FILES['enclosure']);
                //echo '/uploads/' . $info['savepath'] . $info['savename'];
                //echo "<img src='" . 'http://' . $_SERVER['HTTP_HOST'] . '/htdocs/public/uploads/' . $info['savepath'] . $info['savename'] . "'>";
                $imaAddress='/uploads/' . $info['savepath'] . $info['savename'];
                $data = array(
                    'account' => $_POST['account'],
                    'password' =>md5($_POST['password']),
                    'login_time' => time(),
                    'login_ip' => get_client_ip(),
                    'enclosure'=>$imaAddress,
                    'status'=>$_POST['status'],
                );
                if($id=$M->add($data)){
                    //绑定角色
                    $roleId = I('post.role_id');
                    if($roleId)
                    {
                        $arModel = M('manage_role');
                        foreach ($roleId as $v)
                        {
                            $arModel->add(array(
                                'manage_id' => $id,
                                'role_id' => $v,
                            ));
                        }
                    }
                    $this->success('添加成功', U('index'));
                }else{
                    $this->error('添加失败');
                }
            }
        }
    }
    /*
     * 修改用户
     */
    public function edit()
    {
        // 要修改的管理员的ID
        $id = I('get.id');
        // 先判断是否有权修改
        $adminId = session('aid');   // 取出当前管理员的ID
        // 如果是普通管理员要修改其他管理员的信息提示无权
        if($adminId > 1 && $adminId != $id) {
            $this->error('无权修改！');
        }
        if(IS_POST)
        {
            $model = D('manage');
            if($model->create(I('post.'), 2))
            {

                // 如果是超级管理员必须是启用的
                if(I('post.id') == 1)
                {
                    //$data['status'] = 1;         // 直接设置为启用状态
                    $model->where(array('id'=>array('eq', I('post.id'))))->setField('status', 1);// 直接设置为启用状态
                }
                $roleId = I('post.role_id');
                // 先清除原来的数据
                $arModel = M('manage_role');
                $arModel->where(array('manage_id'=>array('eq', I('post.id'))))->delete();
                if($roleId)
                {
                    foreach ($roleId as $v)
                    {
                        $arModel->add(array(
                            'manage_id' => I('post.id'),
                            'role_id' => $v,
                        ));
                    }
                }
                // 判断密码为空就不修改这个字段
                if(empty($_POST['password']))
                {
                    unset($_POST['password']);
                }else{
                    //$data['password'] = md5($data['password'] . C('MD5_KEY'));
                    $password = md5($_POST['password']);
                    $model->where(array('id'=>array('eq', I('post.id'))))->setField('password', $password);
                }
                $this->success('修改成功！', U('Admin/index'));
                exit;
                /*if($model->save() !== FALSE)
                {
                    $this->success('修改成功！', U('Admin/index'));
                    exit;
                }*/
            }
            $this->error($model->getError());
        }
        $model = M('manage');
        $data = $model->find($id);
        $this->assign('data', $data);

        // 取出所有的角色
        $roleModel = M('role');
        $roleData = $roleModel->select();
        $this->assign('roleData', $roleData);
        // 取出当前管理员所在的角色的ID
        $arModel = M('manage_role');
        $rid = $arModel->field('GROUP_CONCAT(role_id) role_id')->where(array('manage_id'=>array('eq', $id)))->find();
        $this->assign('rid', $rid['role_id']);


       // $this->setPageBtn('修改管理员', '管理员列表', U('lst?p='.I('get.p')));
        $this->display();
    }
    /*
     * 删除用户
     */
    Public function delUser () {
        if(I('get.id') == 1)
        {
            $this->error = '超级管理员不能被删除！';
            return FALSE;
        }
        // 在删除manage表中管理员的信息之前先删除manage_rolee表中这个管理员对应的数据s
        $arModel = M('manage_role');
        $arModel->where(array('manage_id'=>array('eq', I('get.id'))))->delete();
        $model = D('manage');
        if($model->delete(I('get.id', 0)) !== FALSE){
            $this->success('删除成功！', U('Admin/index'));
            exit;
        }else{
            $this->error($model->getError());
        }
    }
    /*
     * 返回
     */
    public function back(){
        redirect(U('Admin/index'));
    }
}