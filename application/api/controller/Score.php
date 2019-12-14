<?php


namespace app\api\controller;

use app\api\validate\ScoreValidate;
use app\api\service\Score as ScoreService;
use app\lib\exception\ScoreException;
use app\lib\exception\SuccessMessage;
use MongoDB\Driver\Monitoring\CommandSucceededEvent;
use think\Request;

class Score extends BaseController
{
    public function scoreOperate()
    {
        $params = (new ScoreValidate())->goCheck();
        $res = ScoreService::scoreOperate($params);
        if ($res) {
            return new SuccessMessage();
        } else {
            throw new ScoreException();
        }
    }
}