<?php


namespace app\api\model;


use think\Model;

class ShopOrderDetail extends Model
{
    /**
     * 在销售订单对应的商品表中插入记录
     */
    public function addGoods($params = [])
    {
        $goods_data = $params['goods_data'];
        foreach ($goods_data as $v) {
            $data = array();
            $data['store_id'] = config('store.store_id');
            $data['order_id'] = $params['order_id'];
            $data['goods_id'] = $v['goods_id'];
            $data['name'] = $v['goods_name'];
            $data['price'] = $v['price'];
            $data['discount_price'] = $v['price'];
            $data['num'] =  $v['goods_number'];

            $res = $this->allowField(true)->isUpdate(false)->data($data,true)->save();

            if (!$res) {
                return false;
            }
        }
        return true;
    }

    public function getGoods($params = [])
    {
        $goods_data = $this->field(['goods_id', 'name', 'price'])->where('order_id', $params['order_id'])->select();
        $goods_new = array();

        foreach ($goods_data as $v) {
            $goods_new[$v['goods_id']] = $v;
        }

        return $goods_new;
    }
}