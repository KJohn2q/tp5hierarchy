<?php


namespace app\api\model;

use think\Exception;
use think\Model;

class User extends Model
{
//    protected $visible = ['uid', 'nickname', 'phone', 'address'];
    protected $hidden = ['adress', 'detail'];

    public function userAdress()
    {
        return $this->hasOne('UserAdress', 'uid', 'uid')->bind(['adress','detail']);
    }

    public static function getInfoByPhone($phone)
    {
        $res = self::with(['userAdress'=>function($query) {
            $query->where('default', 1);
        }])->field(['uid', 'nickname as username', 'phone'])->where('phone', $phone)->find();
        if ($res) {
            $res['address'] = $res->getAttr('adress').$res->getAttr('detail');
        }
        return $res;
    }

    public static function getInfoByUid($uid)
    {
        return self::field(['uid', 'score_count'])->where('uid', $uid)->find();
    }

    /*
     * 用户积分变动
     */
    public function scoreChange($params)
    {
        $uid = $params['uid'];
        $userInfo = self::getInfoByUid($uid);
        $userScore = $userScore = $userInfo['score_count'];

        if ($params['type'] == 1) {
            $userScore += $params['score'];
        } else {
            $userScore -= $params['score'];
        }
        $data['score_count'] = $userScore;
        return $this->allowField(true)->isUpdate(true, ['uid' => $uid])->save($data);
    }
}