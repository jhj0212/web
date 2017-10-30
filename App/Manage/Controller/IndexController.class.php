<?php
namespace Manage\Controller;
use Common\Controller\AuthController;
use Think\Auth;

class IndexController extends AuthController {
    /*
     * '管理账号后台控制器
     */
    public function index(){
		//echo '管理账号后台控制器';
		$model=M();
        $data=$model->query('select * from db_manage');
        //dump($data);
        $this->assign( 'person',$data);

        $adminId = session('aid');
        /********** 取出当前管理员所拥有的前两级的权限 ************/
        // 取出当前管理员所有的权限
        if($adminId == 1){
            $sql = 'SELECT * FROM db_privilege';
        }
        else{
            $sql = 'SELECT b.*  FROM db_role_privilege a LEFT JOIN db_privilege b ON a.pri_id=b.id  LEFT JOIN db_manage_role c ON a.role_id=c.role_id WHERE c.manage_id='.$adminId;
        }
        $db = M();
        $pri = $db->query($sql);
        $btn = array();  // 放前两级的权限
        // 从所有的权限中取出前两级的权限
        foreach ($pri as $k => $v)
        {
            // 找顶级权限
            if($v['pri_pid'] == 0)
            {
                // 再循环把这个顶级权限的子权限
                foreach ($pri as $k1 => $v1)
                {
                    if($v1['pri_pid'] == $v['id'])
                    {
                        $v['children'][] = $v1;
                    }
                }
                $btn[] = $v;
            }
        }
        $this->assign('men', $btn);
        $this->assign('adminId', $adminId);

        $this->display();
	}
	/*
	 * 用户信息
	 */
    Public function copy () {
        $time = date('y-m-d H:i');
        $ip = get_client_ip();
        $info = <<<str
		{$_SESSION['uname']} 您好！<br/>
		您的上一次登录时间是：{$_SESSION['logintime']}<br/>
		您本次的登录时间是：{$time}<br/>
		您的上一次登录IP是：{$_SESSION['loginip']}<br/>
		您的本次登录IP是：{$ip}
str;
        echo $info;
    }
    /**
     * 验证原密码
     */
    Public function checkPwd () {
        if (!IS_AJAX) die('页面不存在');
        $pwd=md5($_POST['password']);
        $where = array('account' =>$_POST['account']);
        $password = M('manage')->where($where)->getField('password');
        if ($password && $password == $pwd) {
            $this->ajaxReturn(1);
        } else {
            $this->ajaxReturn(0);
        }
    }
    /*
     * 修改密码
     */
    public function edit()
    {

        // 取出当前管理员的ID
        $id = I('get.id');
        if(IS_POST)
        {
            $model = D('manage');
            if($model->create(I('post.'), 2))
            {
                if($_POST['pword']==""||$_POST['pword']==null){
                    $this->error('原始密码不能为空');
                }
                if($_POST['password']==""||$_POST['password']==null){
                    $this->error('新密码不能为空');
                }
                if($_POST['pwded']==""||$_POST['pwded']==null){
                    $this->error('确认密码不能为空');
                }
                if ($_POST['password'] != $_POST['pwded']){
                    $this->error('两次密码不一致');
                }
                $password = md5($_POST['password']);
                $model->where(array('id'=>array('eq', I('post.id'))))->setField('password', $password);

                if($id==1){
                    $this->success('修改成功！', U('Admin/index'));
                }else{
                    $this->success('修改成功！', U('Picture/index'));
                }
                exit;
            }
            $this->error($model->getError());
        }
        $model = M('manage');
        $data = $model->find($id);
        $this->assign('data', $data);

        // $this->setPageBtn('修改管理员', '管理员列表', U('lst?p='.I('get.p')));
        $this->display();
    }
    /*
    * 返回
    */
    public function back(){
        // 取出当前管理员的ID
        $adminId = session('aid');
        if($adminId==1){
            redirect(U('Admin/index'));
        }else{
            redirect(U('Picture/index'));
        }

    }
	/*
	 * 退出
	 */
	public function loginOut(){
        session('aid',null);
        //session_unset();//释放当前在内存中已经创建的所有$_SESSION变量，但不删除session文件以及不释放对应的sessionid
        //session_destroy();//删除当前用户对应的session文件以及释放session
        //$this->redirect('Login/index');
        redirect(U('Login/index'));
    }
}