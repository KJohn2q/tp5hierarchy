<?php


namespace app\lib\exception;


use Exception;
use think\exception\Handle;
use think\Log;
use think\Request;

class ExceptionHandler extends Handle
{
    private $msg;
    private $status;
    private $data;

    public function render(Exception $e)
    {
        //如果是自定义异常，则控制http状态码，不需要记录日志
        //因为这些通常是因为客户端传递参数错误或者是用户请求造成的异常
        //不应当记录日志

        if ($e instanceof BaseException)
        {
            $this->status = $e->status;
            $this->msg = $e->msg;
            $this->data = $e->data;
        }
        else {
            // 如果是服务器未处理的异常，将http状态码设置为500，并记录日志
            if (config('app_debug')) {
                // 调试状态下需要显示TP默认的异常页面，因为TP的默认页面
                // 很容易看出问题
                return parent::render($e);
            }

            $this->status = '999';
            $this->msg = 'sorry, we make a mistake';
            $this->recordErrorLog($e);
        }

        $request = Request::instance();
        $result = [
            'status' => $this->status,
            'msg' => $this->msg,
            'request url' => $request = $request->url(),
            'data' => array()
        ];
        return json($result);
    }

    private function recordErrorLog(Exception $e)
    {
        Log::init([
            'type' => 'File',
            'path' => LOG_PATH,
            'level' => ['error']
        ]);

        Log::record($e->getMessage(), 'error');
    }
}