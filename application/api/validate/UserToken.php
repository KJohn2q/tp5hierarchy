<?php


namespace app\api\validate;


class UserToken extends BaseValidate
{
    protected $rule = [
        'token' => 'require|isSecret'
    ];

    protected $message = [
        'token' => 'token不能为空，且必须为给定的值'
    ];

    protected function isSecret($value)
    {
        return strcmp($value, '5AcqdDB3eAJGFBPSNK8gbJ5gD5QXDbm1') ? false : true;
    }

}