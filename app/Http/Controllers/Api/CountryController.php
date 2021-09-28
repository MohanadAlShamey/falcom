<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function index(){
        $countries=Country::all();
        return response()->json(['countries'=>$countries],200);
    }

    public function store(Request $request){
        $country=Country::find($request->code);
        \App\Models\Member::create([
            'full_name'=>$request->fname.' '.$request->lname,
            'phone'=>$country->phone_code.$request->phone,
            'email'=>$request->email,
            'country_id'=>$country->id,
            'page'=>$request->page,

        ]);
    }
}
