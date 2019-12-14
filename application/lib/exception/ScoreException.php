<?php


namespace app\lib\exception;


class ScoreException extends BaseException
{
    public $status = '3004';
    public $msg = 'request failed';
}