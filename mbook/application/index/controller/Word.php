<?php
namespace app\index\controller;
use think\Db;
use think\Session;	
class Word  extends \think\Controller
{
    public function word()
    {
        $word = new \app\index\model\Word();
		$data = $word->paginate(3);
		$this->assign('word',$data);
		return $this->fetch();	
    }
    public function worddo(){
    	$worddo = new \app\index\model\Word();
    	$textarea = input('post.textarea');
    	if (Session::get('name')) {
    		$user = Session::get('name');
	    	$date = date("Y-m-d");
	    	$datetime = date("Y-m-d h:i:s");
	    	$data = ['user'=> $user,'word'=>$textarea,'date'=>$date,'datetime'=>$datetime];
	    	$worddo->insert($data);
	    	$this->success("<h1>留言成功</h1>","index/word/word");
    	}else{
    		$this->error("<h1>你还未登录，留言需要登录</h1>","index/user/login");
    	}
    
    }
    public function contact(){
    	return $this->fetch();
    }
    public function notice(){
        return $this->fetch();
    }
}
