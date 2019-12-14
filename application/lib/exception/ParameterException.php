<?php


namespace app\lib\exception;


class ParameterException extends BaseException
{
    public $status = '10000';
    public $msg = 'invalid parameters';
}