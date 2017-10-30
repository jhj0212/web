<?php
namespace Manage\Controller;
use Common\Controller\AuthController;
use Think\Auth;
use Think\Page;
use Think\Upload;

class NewsController extends IndexController
{
    public function index()
    {
        $M = M('News');
        $adminId=session('aid');
        /**************************************** 搜索 ****************************************/
        $where = array();
        $wor = $_POST['keywords'];
        if ($_POST['keywords'] != '') {
            $where['title'] = array('like', "%$wor%");
        }
        /************************************* 翻页 ****************************************/
        $count = $M->where($where)->count();//查询满足要求的总记录数
        $Page = new Page($count, 5);// 实例化分页类 传入总记录数和每页显示的(5)
        $show = $Page->show();//分页输出显示
        /************************************** 取数据 ******************************************/

        //$data = $M->where($where)->order('id desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        //dump($data);
        $data = M('news as p')->fetchSql(false)
            ->join('db_news_type c ON p.pid=c.id')
            ->where($where)
            ->field('p.*,c.type')
            ->order('p.id desc')
            ->limit($Page->firstRow . ',' . $Page->listRows)
            ->select();
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        //$list = $M->where('status=1')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('adminId', $adminId);
        $this->assign('page', $show);
        $this->assign('person', $data);
        $this->display();
    }
    /*
     * 添加新闻
     */
    public function addNews()
    {
        $this->display();
    }
    /*
     * 保存新增
     */
    public function runAddNews()
    {
        if ($data = M('News')->create()) {
            if($_FILES['url']['error']==0) {
			
                $upload = new \Think\Upload();// 实例化上传类
                $upload->maxSize = 3145728;// 设置附件上传大小
                $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
                $upload->rootPath = './Public/uploads/'; // 设置附件上传根目录
                // 上传单个文件
                $info = $upload->uploadOne($_FILES['url']);
                //echo '/uploads/' . $info['savepath'] . $info['savename'];
                //echo "<img src='" . 'http://' . $_SERVER['HTTP_HOST'] . '/htdocs/public/uploads/' . $info['savepath'] . $info['savename'] . "'>";
                $imaAddress='/uploads/' . $info['savepath'] . $info['savename'];
            }
            $data = array(
                'title'     => $_POST['title'],
                'content'   => $_POST['content'],
                'pid'       => $_POST['pid'],
                'time'      => time(),
                /*'url'       => $imaAddress*/
            );
            if (M('News')->add($data)) {
                $this->success('添加成功', U('index'));
                exit;
            } else {
                $this->error('添加失败');
            }

        }
        $this->error('添加失败');
    }

    /*
     * 修改新闻
     */
    public function edit()
    {
        $model = D('news');
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
               /* $url=$_POST['url'];
                if($url){
                    $imaAddress=$url;
                }*/
                $data = array(
                    'title' => $_POST['title'],
                    'content' => $_POST['content'],
                    'time' => time(),
                    /*'url'=>$imaAddress*/
                );

                $model = D('news');
                $where['id'] = $_POST['id'];
                if ($model->where($where)->save($data)) {
                    $this->success('修改成功', U('index'));
                    exit;
                } else {
                    $this->error('修改失败');
                }

        }
        $res = M('news')->find($_GET['id']);
        $this->assign('data', $res);//把数据发送到模板上
        $this->display();//调用数据
    }

    /*
    * 删除新闻
    */
    public function delete()
    {
        $model = D('News');
        if ($model->delete(I('get.id', 0)) !== FALSE) {
            D('news_picture')->where(array('news_id'=>array('eq', I('get.id'))))->delete();
            $this->success('删除成功！', U('News/index'));
            exit;
        } else {
            $this->error($model->getError());
        }
    }

    /*
    * 返回
    */
    public function back(){
        redirect(U('News/index'));
    }
}

