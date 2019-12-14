<?php


namespace app\api\validate;

use app\lib\exception\ParameterException;
use think\Request;
use think\Validate;

class BaseValidate extends Validate
{
    public function goCheck()
    {
        $request = Request::instance();
        $params = $request->param();

        if (!$this->batch()->check($params)) {
            $exception = new ParameterException([
               'msg' => is_array($this->error) ? implode(';', $this->error) : $this->error
            ]);
            throw $exception;
        }

        return $params;
    }

    protected function isPositiveInteger($value)
    {
        if (is_numeric(intval($value)) && is_int(intval($value) + 0) && (intval($value) + 0) > 0) {
            return true;
        }
        return false;
    }

    protected function isMobile($value)
    {
        $rule = '^1(3|4|5|7|8)[0-9]\d{8}$^';
        $result = preg_match($rule, $value);
        if ($result) {
            return true;
        } else {
            return false;
        }
    }
}