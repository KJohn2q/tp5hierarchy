<?php


namespace app\api\validate;


class ScoreValidate extends BaseValidate
{
    protected $rule = [
        'uid' => 'require|isPositiveInteger',
        'type' => 'require|isType',
        'score' => 'require|isPositiveInteger',
        'desc'  => 'require'
    ];

    protected $message =  [
        'uid' => 'uid必须为正整数',
        'type' => '积分变动类型，只能为1或者2',
        'score' => '变动积分必须为正整数'
    ];

    protected function isType($value)
    {
        return ($value == 1 || $value == 2) ? true : false;
    }

    protected function isInteger($value)
    {
        if (is_numeric($value) && is_int($value + 0)) {
            return true;
        }
        return false;
    }
}