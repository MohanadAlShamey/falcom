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
    $countries=\App\Models\Country::OrderBy('phone_code')->get();
    return view('welcome',compact('countries'));
});

Route::post('registerPage',[\App\Http\Controllers\Site\RegController::class,'store'])->name('register.trade');


Route::prefix('dashboard')->group(function(){
    Auth::routes(['register'=>false]);
    Route::get('/',function(){
        return redirect()->route('login');
    });
    Route::resource('/members', App\Http\Controllers\Dash\MemberController::class);
    Route::get('/member/getAllMembers', [App\Http\Controllers\Dash\MemberController::class,'getAllMembers']);

});

