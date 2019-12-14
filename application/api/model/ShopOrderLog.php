<?php


namespace app\api\model;


use think\Model;

class ShopOrderLog extends Model
{
    // 退货时记录日志 方便查询订单退款时间
    public function addLog($params)
    {
        $data['order_id'] = $params['order_id'];
        $data['status'] = 9;  // 状态为用户退款
        $data['dateline'] = strtotime($params['refund_time']);

        return $this->allowField(true)->save($data);
    }
}