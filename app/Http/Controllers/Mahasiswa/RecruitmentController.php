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
        
        
        $data = anggota_ukm::where('id_user', Auth::user()->id)->get();
// dd($data);
         return view('pages.mahasiswa.pendaftaran_mahasiswa.index',compact('data'));
            
    
         
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
        if (anggota_ukm::where('nim', '=',   $request->input('nim'))->exists() && anggota_ukm::where('ukm_id', '=',   $request->input('ukm_id'))->exists()){

        return redirect()->back()->with(['error' => 'Data Sudah Ada']);

        }
        else{


          if($request->hasFile('foto')) {
            $nm = $request->foto;
            $namaFile = time() . rand(100, 999) . "." . $nm->getClientOriginalExtension();
            // $user->foto = $namaFile;
            $nm->move(public_path() . '/img', $namaFile);
            anggota_ukm::create([
            'nama' => $request->input('nama'),
            'nim' => $request->input('nim'),
            'no_tlp' => $request->input('no_tlp'),
            'alamat' => $request->input('alamat'),
            'angkatan' => $request->input('angkatan'),
            'prodi' => $request->input('prodi'),
            'foto' => $namaFile,
            'id_user' => Auth::user()->id,
            'ukm_id' => $request->input('ukm_id'),


        ]);
        }else{
            $namaFile = 'default.png';
            anggota_ukm::create([
            'nama' => $request->input('nama'),
            'nim' => $request->input('nim'),
            'no_tlp' => $request->input('no_tlp'),
            'alamat' => $request->input('alamat'),
            'angkatan' => $request->input('angkatan'),
            'prodi' => $request->input('prodi'),
            'foto' => $namaFile,
            'id_user' => Auth::user()->id,
            'ukm_id' => $request->input('ukm_id'),


        ]);
        }
        return redirect()->route('recruitment.index')->with(['success' => 'Berhasil Mendaftar']);
        }
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
