<?php


namespace app\api\model;


use think\Model;

class ShopRefundDetail extends Model
{
    public function addGoods($params = [])
    {
        $goods_data = $params['goods_data'];
        foreach ($goods_data as $v) {
            $data = array();

            $data['refund_id'] = $params['refund_id'];
            $data['order_id'] = $params['order_id'];
            $data['goods_id'] = $v['goods_id'];
            $data['name'] = $v['goods_name'];
            $data['price'] = $v['price'];
            $data['num'] =  $v['goods_number'];

            $res = $this->allowField(true)->isUpdate(false)->data($data, true)->save();

            if (!$res) {
                return false;
            }
        }
        return true;
    }
}