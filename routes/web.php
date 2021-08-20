<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('login');
});

Auth::routes(['register'=>false]);
Route::prefix('dashboard')->group(function(){
    Route::resource('/members', App\Http\Controllers\Dash\MemberController::class);
    Route::get('/member/getAllMembers', [App\Http\Controllers\Dash\MemberController::class,'getAllMembers']);

});

