<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;
use Illuminate\Support\Facades\Hash;

class ChangePasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $item = User::where('id', Auth::user()->id)->first();
        return view('pages.change_password', compact(['item']));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($request->logo);
        if ($request->logo == null) {
             User::where('id', $id)->update([
         'username' => $request->username,
        'password' => Hash::make($request->password),
       ]);
        return redirect()->route('dashboard');
        }
        else{
        $nm = $request->logo;
        $namaFile = 'logo_super_admin.jpg'; 
        $nm->move(public_path().'/img/super_admin/',$namaFile);

        // dd($request->password);
       User::where('id', $id)->update([
         'username' => $request->username,
        'password' => Hash::make($request->password),
       ]);
        return redirect()->route('dashboard'); 
        }


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
