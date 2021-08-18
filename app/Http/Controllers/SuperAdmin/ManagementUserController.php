<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class ManagementUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $item = User::where('role', '!=' , 'admin')->where('role', '!=' , 'mahasiswa')->get();
        return view('pages.super_admin.user_ukm.management-user', compact(['item']));

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
        User::create([
        'email' => $request->email,
        'password' => Hash::make($request->password),
        'role' => $request->name,
        'username' => $request->name,
       ]);
        return redirect()->route('management-user.index');
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
         $item = User::where('id', $id)->first();
        return view('pages.super_admin.user_ukm.change_user_ukm', compact(['item']));
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
        // $nm = $request->logo;
        // $namaFile = 'logo_super_admin.jpg'; 
        // $nm->move(public_path().'/img/super_admin/',$namaFile);

        // dd($request->password);
       User::where('id', $id)->update([
        'email' => $request->email,
        'password' => Hash::make($request->password),
       ]);
        return redirect()->route('management-user.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::where('id', $id)->delete();
        return redirect()->route('management-user.index');

    }
}
