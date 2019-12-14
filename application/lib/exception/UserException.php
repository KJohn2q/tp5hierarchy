<?php


namespace app\lib\exception;


class UserException extends BaseException
{
    public $status = '404';
    public $msg = '该用户不存在';
}