<?php
namespace Home\Controller;
use Think\Controller;
class LianxiController extends Controller {

    public function contact(){
      $this->display();
    }

    public function update(){
        $book = D('Book');
        //var_dump($_POST);
        $getcontent = $_POST;
        // dump($getcontent);
         $data = array(
            'name' => $getcontent['name'],
            'content'=>$getcontent['content'],
            'time'=>time(),
            'tel'=>$getcontent['tel']
          );
        $z = $book->add($data);
        // $this->assign('info',$info);
        $this->display('contact');      
    }


}