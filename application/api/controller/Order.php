<?php


namespace app\api\controller;


use app\api\validate\RefundOrder;
use app\api\validate\SaleOrder;
use app\api\service\Order as OrderService;
use app\lib\exception\OrderException;
use app\lib\exception\SuccessMessage;

class Order extends BaseController
{
    /**
     *  销售订单信息录入接口
     *  /api/order/saorderRecord
     */
    public function saorderRecord()
    {
        $params = (new SaleOrder())->goCheck();
        $res = OrderService::saorderRecord($params);
        if ($res) {
            $data = [
                'order_id' => $res
            ];
            return new SuccessMessage([
                'data' => $data
            ]);
        } else {
            throw new OrderException([
                'msg' => '销售订单信息录入失败'
            ]);
        }
    }

    /**
     *  退款订单信息录入接口
     *  /api/order/reorderRecord
     */
    public function reorderRecord()
    {
        $params = (new RefundOrder())->goCheck();
        $res = OrderService::reorderRecord($params);

        if ($res) {
            return new SuccessMessage();
        } else {
            throw new OrderException([
                'msg' => '退款订单信息录入失败'
            ]);
        }
    }
}