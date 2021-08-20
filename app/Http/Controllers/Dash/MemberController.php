<?php

namespace App\Http\Controllers\Dash;

use App\Http\Controllers\Controller;
use App\Models\Member;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        return view('dash.members.index');
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }

    public function getAllMembers(Request $request){
        $q=$request->input('q');
    return Member::where(function($query)use ($q){
            $query->where('full_name','like','%'.$q.'%');
            $query->orWhere('email','like','%'.$q.'%');
            $query->orWhere('phone','like','%'.$q.'%');
            $query->orWhere('page','like','%'.$q.'%');
        })->latest()->paginate(15);
    }
}
