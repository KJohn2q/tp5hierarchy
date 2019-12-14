<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;

Route::post('api/user/getInfo', 'api/User/getInfo');
Route::post('api/user/integralOperator', 'api/Score/scoreOperate');
Route::post('/api/order/saorderRecord', 'api/Order/saorderRecord');
Route::post('/api/order/reorderRecord', 'api/Order/reorderRecord');