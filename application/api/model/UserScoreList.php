<?php


namespace app\api\model;


use think\Model;
use think\Request;

class UserScoreList extends Model
{
    public function scoreOperate($params = [])
    {
        $request = Request::instance();

        $data['uid'] = $params['uid'];
        $data['type'] = $params['type'];
        $data['score'] = $params['score'];
        $data['time'] = time();
        $data['ip'] = $request->ip();
        $data['desc'] = $params['desc'];
        $data['score_type'] = 0;
        return $this->allowField(true)->save($data);
    }
}