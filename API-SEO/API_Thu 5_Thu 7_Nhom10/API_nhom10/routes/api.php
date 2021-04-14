<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\testController;
use App\Http\Controllers\APIController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//cau 1 .. Quản Lý User

Route:: get("Userlist",[testController::class,'Userslist']);                    // Lấy danh sách User
Route:: get("Userlist/{id}",[testController::class,'UserbyID']);                //Lấy User theo ID
Route:: get("Userlist/search/{name}",[testController::class,'search']);         //tìm User theo tên
Route:: post("Userlist",[testController::class,'adUser']);                      //Thêm User
Route:: put("Userlist/{id}",[testController::class,'Update']);                  // Update User
Route:: delete("Userlist/{id}",[testController::class,'delete']);               //Xóa User theo ID


//
Route:: get("Login",[testController::class,'Login']);                       
