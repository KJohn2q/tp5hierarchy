<?php


namespace app\api\validate;


class UserPhone extends BaseValidate
{
    protected $rule = [
        'phone' => 'require|isMobile'
    ];

    protected $message = [
        'phone' => 'phone参数必须为手机号'
    ];
}