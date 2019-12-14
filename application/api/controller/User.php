<?php


namespace app\api\controller;

use app\api\model\User as UserModel;
use app\api\validate\UserPhone;
use app\lib\exception\SuccessMessage;
use app\lib\exception\UserException;
use think\Controller;
use think\Request;

class User extends BaseController
{
    public function getInfo($phone)
    {
        (new UserPhone())->goCheck();
        $data = UserModel::getInfoByPhone($phone);

        if (!$data) {
            throw new UserException();
        }

        $params['data'] = $data;
        return new SuccessMessage($params);
    }
}