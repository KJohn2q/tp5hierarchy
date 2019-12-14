<?php


namespace app\lib\exception;


use think\Exception;
use Throwable;

class BaseException extends Exception
{
    public $status = '999';
    public $msg = 'invalid parameters';
    public $data = array();

    public function __construct($params = [])
    {
        if (!is_array($params)) {
            return;
        }
        if (array_key_exists('status',$params)) {
            $this->status = $params['status'];
        }
        if (array_key_exists('msg',$params)) {
            $this->msg = $params['msg'];
        }
        if (array_key_exists('data', $params)) {
            $this->data = $params['data'];
        }
    }
}