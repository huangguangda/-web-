<?php
namespace app\index\validate;
use think\Validate;

class User extends Validate
{
    protected $rule = [
        'user_name'  =>  'require|max:25',
        'user_email' =>  'email',
        'user_pwd'=>'length:3,25',
        'repass'=>'require|confirm:user_pwd',
        'user_name'   => 'unique:user',
        'user_yb'=> 'length:6',
        'user_qq'=> 'length:4,10',
        'user_tel'=> 'number|length:11',

    ];
}