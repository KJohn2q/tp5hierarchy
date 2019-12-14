<?php


namespace app\api\model;

use think\Model;

class ShopOrder extends Model
{
    public function orderAdd($params = [])
    {
        $data['mer_id'] = config('store.mer_id');  // 商家为神利电器
        $data['mer_id'] = config('store.mer_id');  // 商家为神利电器
        $data['store_id'] = config('store.store_id');  // 店铺为神利电器
        $data['uid'] = $params['uid'];
        $data['username'] = $params['username'];
        $data['userphone'] = $params['phone'];
        $data['address'] = $params['address'];
        $data['price'] = $params['total_price'];
        $data['total_price'] = $params['total_price'];
        $data['goods_price'] = $params['total_price'];
        $data['discount_price'] = $params['total_price'];
        $data['status'] = 2; // 订单状态：已使用
        $data['order_status'] =  6; // 配送状态： 配送结束
        $data['paid'] = 1;  // 支付状态： 已支付
        $data['pay_type'] = 'offline';
        $data['create_time'] = time();
        $data['order_from'] = 1;
        $data['use_time'] = strtotime($params['use_time']);
        $data['real_orderid'] = 'jr'.$params['orderid'];
        $data['third'] = rand(1000, 9999);

        return $this->allowField(true)->save($data);
    }

    public function getOrderByOrderid($params)
    {
        return $this->where('real_orderid', $params['orderid'])->select();
    }

    public function getStatusByOrderid($params)
    {
        return $this->field(['status','order_id'])->where('order_id', $params['order_id'])->find();
    }

    public function updateOrderStatus($params)
    {
        $data['status'] = 4;  // 退款
        return $this->allowField(true)->isUpdate(true)->where('order_id', $params['order_id'])
            ->data($data, true)->update();
    }
}