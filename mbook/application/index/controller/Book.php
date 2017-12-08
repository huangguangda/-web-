<?php
namespace app\index\controller;
use app\index\model\Bigtype;
use think\Db;

class Book extends \think\Controller
{
    public function book(){
        $book = new \app\index\model\Book();
        $data = $book->where('book_id',input('get.book_id'))->find();
        $this->assign('book',$data);
        return $this->fetch();
    }



    public function booklist(){
		$book = new \app\index\model\Book();
        /*接受从booktype通过get传过来的参数sid*/
        $sid=input('get.sid');
        $data=$book->where('s_id',$sid)->select();
        $this->assign('blist',$data);
        return $this->fetch();
	}

    

    public function booktype()
    {
        $bigtype = new Bigtype();
        $data1 = $bigtype->field('b_id,b_name')->paginate(5);
        $this->assign('bb',$data1);

        $data2=$bigtype->alias('a')->join('tb_smalltype b','a.b_id = b.b_id')->select();
        $this->assign('ss',$data2);

        return $this->fetch();
    }
    public function booksel(){
        return $this->fetch();
    }
    public function bookseldo(){
        $book = new \app\index\model\Book();
        $fullname = input('post.fullname');
        $data = $book->where('book_name','like','%'.$fullname.'%')->select();
        $this->assign('book_sel',$data);
        return $this->fetch();
    }

}