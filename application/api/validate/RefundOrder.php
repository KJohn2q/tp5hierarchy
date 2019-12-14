<?php


namespace app\api\validate;


use app\api\model\ShopOrder;

class RefundOrder extends BaseValidate
{
    protected $rule = [
        'order_id' => 'require|isPositiveInteger|isRefund',
        'uid' => 'require|isPositiveInteger',
        'phone' => 'require|isMobile',
        'address' => 'require',
        'goods_data' => 'require|isGoods',
        'refund_time' => 'require|date',
        'refund_price' => 'require'
    ];

    protected $message = [
        'uid' => 'uid为空或不是正整数',
        'phone' => '下单人手机号为空或格式不正确',
        'refund_time' => '退款时间为空或格式不正确'
    ];

    protected function isRefund($value)
    {
        $shopOrder = new ShopOrder();
        $res = $shopOrder->getStatusByOrderid([
            'order_id' => $value
        ]);
        if ($res['status'] == 4) {
            // 不为空
            return '该订单已经退款';
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