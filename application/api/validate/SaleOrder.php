<?php


namespace app\api\validate;


use app\api\model\ShopOrder;

class SaleOrder extends BaseValidate
{
    protected $rule = [
        'orderid' => 'require|length:20|isRepeat',
        'uid' => 'require|isPositiveInteger',
        'username' => 'require',
        'phone' => 'require|isMobile',
        'address' => 'require',
        'goods_data' => 'require|isGoods',
        'use_time' => 'require|date',
        'total_price' => 'require'
    ];

    protected $message = [
        'uid' => 'uid为空或不是正整数',
        'phone' => '下单人手机号为空或格式不正确',
        'goods_data' => '商品数据不能为空',
        'use_time' => '送达时间不能为空'
    ];

    protected function isRepeat($value)
    {
        $shopOrder = new ShopOrder();
        $res = $shopOrder->getOrderByOrderid([
            'orderid' => 'jr'.$value
        ]);
        if ($res) {
            // 不为空
            return '重复的订单编号';
        } else {
            return true;
        }
    }

    protected function isGoods($value, $rule = '', $data = '', $field = '')
    {
        if (!is_array($value) || empty($value)) {
            return $field . '为空或不是数组';
        }
        // 确保商品数据中的每个商品信息完整
        foreach ($value as $item) {
            if (!array_key_exists('goods_id', $item))
            {
                return 'goods_id为空';
            }
            if (!array_key_exists('goods_name', $item))
            {
                return 'goods_name为空';
            }
            if (!array_key_exists('goods_number', $item))
            {
                return 'goods_number为空';
            }
            if (!array_key_exists('price', $item))
            {
                return 'price为空';
            }
        }
        return true;
    }
}