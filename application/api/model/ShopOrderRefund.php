<?php


namespace app\api\model;


use think\Model;

class ShopOrderRefund extends Model
{
    public function orderAdd($params = [])
    {
        $data['order_id'] = $params['order_id'];
        $data['uid'] = $params['uid'];
        $data['price'] = $params['refund_price'];
        $data['reply_time'] = strtotime($params['refund_time']);
        $data['status'] = 1;

        return $this->allowField(true)->save($data);
    }
}