<?php

namespace App\Http\Controllers\Mahasiswa;

use Auth;
use App\Models\anggota_ukm;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RecruitmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->profileUser != null) {
        
        $data = anggota_ukm::where('profile_id', Auth::user()->profileUser->id)->get();

         return view('pages.mahasiswa.pendaftaran_mahasiswa.index',compact('data'));
            
        }
        else{

         return view('pages.mahasiswa.pendaftaran_mahasiswa.404_data_profile');
        }
         
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
         anggota_ukm::create([
            'ukm_id' => $request->input('ukm_id'),
            'profile_id' => Auth::user()->profileUser->id,
        ]);
        return redirect()->route('recruitment.index')->with(['success' => 'Berhasil Mendaftar']);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
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
        //
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

    public function pdf($id){

        $user = anggota_ukm::with(['profile', 'ukm'])->find($id);
        
        $pdf = \PDF::loadView('pages.mahasiswa.sertifikat', compact('user'))->setPaper('a4', 'landscape');
        return $pdf->download('Sertifikat.pdf');
        // return view('pages.mahasiswa.sertifikat');
    }

}
