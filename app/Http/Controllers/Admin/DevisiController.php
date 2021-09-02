<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DevisiAnggota;
use Auth;

class DevisiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          $data = DevisiAnggota::where('ukm_id', Auth::user()->desk_ukm->id)->get();
        return view('pages.admin.devisi.index',compact(['data'])); 
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
          if (DevisiAnggota::where('nama_devisi', '=',   $request->input('nama_devisi'))->exists() ){
        return redirect()->route('devisi.index')->with(['error' => 'Data Sudah Ada']);
        
    }
    else{
         DevisiAnggota::create([
            'nama_devisi' => $request->input('nama_devisi'),
            'ukm_id' => Auth::user()->desk_ukm->id,
            // 'devisi' => $request->input('devisi'),
        ]);
        // return view('pages.super_admin.ukm.index',compact('ukm'));
        return redirect()->route('devisi.index')->with(['success' => 'Data Berhasil Ditambahkan']);
        }
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
           $item = DevisiAnggota::find($id);
        return view('pages.admin.devisi.edit',compact('item'));
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
        DevisiAnggota::where('id', $id)->update([
            'nama_devisi' => $request->input('nama_devisi'),
        ]);
       return redirect()->route('devisi.index')->with(['success' => 'Data Berhasil Diubah']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         DevisiAnggota::where('id', $id)->delete();
        return redirect()->route('devisi.index');
    }
}
