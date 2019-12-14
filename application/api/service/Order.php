<?php


namespace app\api\service;


use app\api\model\ShopOrderLog;
use app\api\model\ShopOrderRefund;
use app\api\model\ShopRefundDetail;
use think\Db;
use think\Exception;
use think\Model;
use app\api\model\ShopOrder;
use app\api\model\ShopOrderDetail;

class Order extends Model
{
    public static function saorderRecord($params)
    {
        // 开启事务
        Db::startTrans();
        try {
            $shopOrder = new ShopOrder();
            $shopOrderDetail = new ShopOrderDetail();
            $resOrder = $shopOrder->orderAdd($params);
            if ($resOrder) {
                $order_id = $shopOrder->order_id;
                $params['order_id'] = $order_id;
                $resDetail = $shopOrderDetail->addGoods($params);

                if ($resDetail) {
                    Db::commit();
                    return $order_id;
                } else {
                    Db::rollback();
                    return false;
                }
            } else {
                Db::rollback();
                return false;
            }
        } catch (\Exception $e) {
            Db::rollback();
            return false;
        }
    }

    public static function reorderRecord($params)
    {
        // 开启事务
        Db::startTrans();
        try {
            $shopOrder = new ShopOrderRefund();
            $shopSaleOrder = new ShopOrder();
            $shopOrderDetail = new ShopRefundDetail();
            $shopSaleOrderDetail = new ShopOrderDetail();
            $shopOrderLog = new ShopOrderLog();
            $resOrder = $shopOrder->orderAdd($params);
            if ($resOrder) {
                $params['refund_id'] = $shopOrder->getAttr('id');
                $resDetail = $shopOrderDetail->addGoods($params);
                $sagoods_data = $shopSaleOrderDetail->getGoods($params);

                if ($resDetail) {
                    $regoods_data = self::goodsHandle($params['goods_data']);
                    $i = 0;
                    foreach ($sagoods_data as $item) {
                        if (!array_key_exists($item['goods_id'], $regoods_data)) {
                            break;
                        }
                        ++$i;
                    }
                    if ($i == count($sagoods_data)) {
                        $resLog = $shopOrderLog->addLog($params);
                        $resStatus = $shopSaleOrder->updateOrderStatus($params);

                        if ($resLog && $resStatus) {
                            Db::commit();
                            return true;
                        }
                        else {
                            Db::rollback();
                            throw new \Exception('退款订单日志添加失败');
                            return false;
                        }
                    }
                    else {
                        Db::commit();
                        return true;
                    }

                } else {
                    Db::rollback();
                    throw new \Exception('退款订单详情录入失败');
                    return false;
                }
            } else {
                Db::rollback();
                throw new \Exception('退款订单信息录入失败');
                return false;
            }
        } catch (\Exception $e) {
            Db::rollback();
            throw new \Exception($e->getMessage());
            return false;
        }
    }

    public static function goodsHandle($goods_data)
    {
        $goods_new = array();

        foreach ($goods_data as $v) {
            $goods_new[$v['goods_id']] = $v;
        }

        return $goods_new;
    }
}