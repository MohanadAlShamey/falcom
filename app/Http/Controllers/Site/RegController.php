<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class RegController extends Controller
{
    public function store(Request $request){
        $country=Country::find($request->phone[0]);
        \App\Models\Member::create([
            'full_name'=>$request->fname.' '.$request->lname,
            'phone'=>$country->phone_code.$request->phone[1],
            'email'=>$request->email,
            'country_id'=>$country->id,
            'page'=>'criptop.online',

        ]);
        return redirect()->back()->with('success','تم التسجيل بنجاح');
    }
}
