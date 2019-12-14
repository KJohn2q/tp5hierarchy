<?php


namespace app\api\controller;

use app\api\validate\UserToken;
use think\Controller;
use think\Request;

class BaseController extends Controller
{
    public function __construct(Request $request = null)
    {
        (new UserToken())->goCheck();
    }
}