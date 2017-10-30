<?php
namespace Manage\Controller;
use Common\Controller\AuthController;
use Think\Auth;
use Think\Page;
use Think\Upload;

class ProductController extends IndexController
{
    //产品展示
    public function index(){
        /*$data = M('product_type')->fetchSql(false)
//            ->join('db_product_type c ON p.pid=c.id')
//            ->field('p.*,c.type')
            ->order('id asc')->select();*/
        $M=M('product');
        $where = array();
        $wor = $_POST['keywords'];
        if ($_POST['keywords'] != '') {
            $where['title'] = array('like', "%$wor%");
        }
        $count = $M->where($where)->count();//查询满足要求的总记录数
        $Page = new Page($count, 5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show = $Page->show();//分页输出显示
        $data = $M->where($where)->fetchSql(false)
            ->limit($Page->firstRow . ',' . $Page->listRows)
            ->select();
        $this->assign('page',$show);
        $this->assign('person', $data);
        $this->display();
    }

    /*
     * 新增
     */
    public function addPro()
    {
        if(IS_POST) {
            if($_FILES['url']['error']==0) {
                $upload = new \Think\Upload();// 实例化上传类
                $upload->maxSize = 3145728;// 设置附件上传大小
                $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
                $upload->rootPath = './Public/uploads/'; // 设置附件上传根目录
                // 上传单个文件
                $info = $upload->uploadOne($_FILES['url']);
                //echo '/uploads/' . $info['savepath'] . $info['savename'];
                //echo "<img src='" . 'http://' . $_SERVER['HTTP_HOST'] . '/htdocs/public/uploads/' . $info['savepath'] . $info['savename'] . "'>";
                $imaAddress = '/uploads/' . $info['savepath'] . $info['savename'];
            }
            $url=$_POST['url'];
            if($url){
                $imaAddress=$url;
            }
            $data = array(
                'title' => $_POST['title'],
                'content' => $_POST['content'],
                'pid' => $_POST['pid'],
                'time' => time(),
                /*'url'=>$imaAddress*/
            );
            if (M('product_content')->add($data)) {
                $this->success('添加成功', U('index'));
                exit;
            } else {
                $this->error('添加失败');
            }

        }
        $this->display();
    }

    /*
     * 修改
     */
    public function edit()
    {
        $model = D('product');
        if(IS_POST) {
            /*if($_FILES['url']['error']==0) {
                $upload = new \Think\Upload();// 实例化上传类
                $upload->maxSize = 3145728;// 设置附件上传大小
                $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
                $upload->rootPath = './Public/uploads/'; // 设置附件上传根目录
                // 上传单个文件
                $info = $upload->uploadOne($_FILES['url']);
                //echo '/uploads/' . $info['savepath'] . $info['savename'];
                //echo "<img src='" . 'http://' . $_SERVER['HTTP_HOST'] . '/htdocs/public/uploads/' . $info['savepath'] . $info['savename'] . "'>";
                $imaAddress = '/uploads/' . $info['savepath'] . $info['savename'];
            }
            $url=$_POST['url'];
            if($url){
                $imaAddress=$url;
            }*/
            $data = array(
                /*'title' => $_POST['title'],*/
                'content' => $_POST['content'],
                'introduce' => $_POST['introduce'],
                'time' => time(),
                /*'pic'=>$imaAddress*/
            );
            /*var_dump($data);exit();*/
            $where['id'] = $_POST['id'];
            if ($model->where($where)->save($data)) {
                $this->success('修改成功', U('index'));
                exit;
            } else {
                $this->error('修改失败');
            }
        }
        $res = M('product')->find($_GET['id']);
        $this->assign('data', $res);//把数据发送到模板上
        $this->display();//调用数据
    }

    /*
    * 删除
    */
    public function delete()
    {
        $model = D('product');
        if ($model->delete(I('get.id', 0)) !== FALSE) {
            $this->success('删除成功！', U('index'));
            exit;
        } else {
            $this->error($model->getError());
        }
    }

    /*
    * 返回
    */
    public function back(){
        redirect(U('Product/index'));
    }
}

