<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\anggota_ukm;
use Auth;
class PendaftaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->orderBy('status', 'asc')->get();
        $data_count_accepted = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Diterima')->count('nim');
        $data_count = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Belum Diterima')->count('nim');
        $data_count_demis = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'EX Anggota')->count('nim');
        // dd($data_count);
        return view('pages.admin.pendaftaran.pendaftaran',compact(['data','data_count','data_count_accepted','data_count_demis']));   
     
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.admin.pendaftaran.detail');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = anggota_ukm::where('id', $id)->first();
        // dd($data->status);
        if ($data->status == 'Diterima') {
             anggota_ukm::where('id', $id)->update([
            'status' => 'EX Anggota',
        ]);
        }
      else{
          anggota_ukm::where('id', $id)->update([
            'status' => 'Diterima',
        ]);
      }
        return redirect()->route('pendaftaran.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $item = anggota_ukm::find($id);
       return view('pages.admin.pendaftaran.edit',compact('item'));
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
       anggota_ukm::where('id', $id)->update([
            'devisi' => $request->input('devisi'),
        ]);
        return redirect()->route('pendaftaran.index');

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
        return redirect()->route('pendaftaran.index');
       
    }
}
