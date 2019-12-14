<?php


namespace app\lib\exception;

class OrderException extends  BaseException
{
    public $status = '3004';
    public $msg = 'request failed';
}