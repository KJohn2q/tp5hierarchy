<?php


namespace app\api\service;


use app\api\model\User;
use app\api\model\UserScoreList;
use think\Db;
use think\Model;

class Score extends Model
{
    public static function scoreOperate($params)
    {
        Db::startTrans();
        try {
            $userModel = new User();
            $userScoreListModel = new UserScoreList();
            $resUser = $userModel->scoreChange($params);
            $resScoreList = $userScoreListModel->scoreOperate($params);
            if ($resUser && $resScoreList) {
                Db::commit();
                return true;
            } else {
                Db::rollback();
                return false;
            }
        } catch (\Exception $e) {
            Db::rollback();
            return false;
        }
    }
}