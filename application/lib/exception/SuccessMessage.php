<?php


namespace app\lib\exception;


class SuccessMessage extends BaseException
{
    public $status = '200';
    public $msg = 'ok';
    public $data = array();
}