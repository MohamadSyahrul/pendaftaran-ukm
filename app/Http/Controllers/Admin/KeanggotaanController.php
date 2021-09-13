<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DevisiAnggota;
use App\Models\anggota_ukm;
use Auth;

class KeanggotaanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
             $data = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', '!=', 'Belum Diterima')->orderBy('status', 'asc')->get();
          $devisi = DevisiAnggota::where('ukm_id', Auth::user()->desk_ukm->id)->get();

        $data_count_accepted = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Diterima')->count('nim');
        $data_count = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Belum Diterima')->count('nim');
        $data_count_demis = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'EX Anggota')->count('nim');
        // dd($data_count);
        return view('pages.admin.anggota.index',compact(['data','data_count','data_count_accepted','data_count_demis','devisi'])); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      

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
        // dd($id);
         anggota_ukm::where('id_user', $id)->update([
            'devisi' => $request->input('nama_devisi'),
        ]);
        return redirect()->route('keanggotaan.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
          anggota_ukm::where('id', $id)->delete();
        return redirect()->route('keanggotaan.index');
    }
}
