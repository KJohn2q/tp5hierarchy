<?php


namespace app\api\model;


use think\Model;

class UserAdress extends Model
{
    public function user()
    {
        $this->belongsTo('User');
    }
}