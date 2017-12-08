<?php
namespace app\index\controller;
use think\Session;	
class User extends \think\Controller
{
	//显示注册页面
	public function reg(){		
		return $this->fetch();
	}
	public function login(){
    	$login = new \app\index\model\User();
    	return $this->fetch();
    }
     public function logindo(){
    	$u = new \app\index\model\User();
		$username = input('post.username');
		$password = input('post.password');
		$sql = $u->where('user_name',$username)->where('user_pwd',md5($password))->find();
		if($sql){
			Session::set('name',$username);
			$this->success("<h1>登录成功</h1>","index/index/index");
		}else{
			$this->error("<h1>登录失败，用户名或密码错误,重新登录!</h1>","index/user/login");
		}
    }

    public function insert(){

		$u=new \app\index\model\User();
		$username=\think\Request::instance()->post('username'); // 获取某个post变量username
		$password=input('post.password');
		$password1=input('post.repass');
		$gender= input('post.gender'); //性别
		$email=input('post.email');
		$truename=input('post.truename');
		$tel=input('post.tel');
		$qq=input('post.qq');
		$address=input('post.address');
		$question=input('post.question');
		$answer=input('post.answer');
		$yb=input('post.yb');

		if (md5($password)==md5($password1)){
			$sql=$u->where('user_name',$username)->find();
			if($sql){
				echo '<h1>该用户已存在. 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
			}else{
				$data['user_name']=$username;
				$data['user_pwd']=md5($password);
				$data['user_sex']=$gender;
				$data['user_email']=$email;
				$data['user_truename']=$truename;
				$data['user_tel']=$tel;
				$data['user_qq']=$qq;
				$data['user_address']=$address;
				$data['user_question']=$question;
				$data['user_answer']=$answer;
				$data['user_yb']=$yb;
				$u->insert($data); // 插入数据库
				$this->success("<h1>注册成功</h1>","index/index/index");
			}
		}else{
			echo '<h1>两次密码不一样. 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
		}		
    }

    public function insert2(){
    	$data['user_name']=\think\Request::instance()->post('username'); // 获取某个post变量username
		$data['user_pwd']=input('post.password');
		$data['repass']=input('post.repass');
		$data['user_sex']=input('post.gender'); //性别
		$data['user_email']=input('post.email');
		$data['user_truename']=input('post.truename');
		$data['user_tel']=input('post.tel');
		$data['user_qq']=input('post.qq');
		$data['user_address']=input('post.address');
		$data['user_question']=input('post.question');
		$data['user_answer']=input('post.answer');
		$data['user_yb']=input('post.yb');

		$validate = \think\Loader::validate('User');
		if(!$validate->check($data)){
			//echo '<h1>'.$validate->getError().' 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
			$this->error($validate->getError());
		}

		$u=new \app\index\model\User();
		$u->user_name=\think\Request::instance()->post('username');
		$u->user_pwd=md5(input('post.password'));
		$u->user_sex=input('post.gender'); //性别
		$u->user_email=input('post.email');
		$u->save();
		$this->success("<h1>注册成功</h1>","index/index/index");
    }
    public function loginout(){
    	Session::delete('name');
    	$this->success("<h1>退出成功</h1>","index/index/index");
    }

		/*$u=new \app\index\model\User();
		$data['user_pwd']=md5(input('post.password'));
		$u->strict(false)->insert($data); // 插入数据库
		$this->success("<h1>注册成功</h1>","index/index/index");*/	


}