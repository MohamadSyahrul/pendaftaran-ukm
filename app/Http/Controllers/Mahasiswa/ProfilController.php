<?php

namespace App\Http\Controllers\Mahasiswa;

use App\Http\Controllers\Controller;
use App\Models\ProfileUser;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Profiler\Profile;
use Auth;
class ProfilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $profil = ProfileUser::all(); 
        return view('pages.profil');
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
        // $user = ProfileUser::findorfail($id);
        // $user->nama = $request->nama;
        // $user->nim = $request->nim;
        // $user->no_tlp = $request->no_tlp;
        // $user->alamat = $request->alamat;
        // $user->angkatan = $request->angkatan;
        // $user->prodi = $request->prodi;

        if($request->hasFile('foto')) {
            $nm = $request->foto;
            $namaFile = time() . rand(100, 999) . "." . $nm->getClientOriginalExtension();
            // $user->foto = $namaFile;
            $nm->move(public_path() . '/img', $namaFile);
            ProfileUser::create([
            'nama' => $request->input('nama'),
            'nim' => $request->input('nim'),
            'no_tlp' => $request->input('no_tlp'),
            'alamat' => $request->input('alamat'),
            'angkatan' => $request->input('angkatan'),
            'prodi' => $request->input('prodi'),
            'foto' => $namaFile,
            'id_user' => Auth::user()->id,

        ]);
        }else{
            $namaFile = 'default.png';
            ProfileUser::create([
            'nama' => $request->input('nama'),
            'nim' => $request->input('nim'),
            'no_tlp' => $request->input('no_tlp'),
            'alamat' => $request->input('alamat'),
            'angkatan' => $request->input('angkatan'),
            'prodi' => $request->input('prodi'),
            'foto' => $namaFile,
            'id_user' => Auth::user()->id,
        ]);
        }
        // $user->save();

        return redirect()->route('profile.index');
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
        $user = ProfileUser::find($id);
        return view('pages.edit-profil', compact(['user']));
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
        $user = ProfileUser::findorfail($id);
        $user->nama = $request->nama;
        $user->nim = $request->nim;
        $user->no_tlp = $request->no_tlp;
        $user->alamat = $request->alamat;
        $user->angkatan = $request->angkatan;
        $user->prodi = $request->prodi;
        if ($request->hasFile('foto')) {
            $nm = $request->foto;
            $namaFile = time() . rand(100, 999) . "." . $nm->getClientOriginalExtension();
            $user->foto = $namaFile;
            $nm->move(public_path() . '/img', $namaFile);
        }else{
            $user->foto = 'default.png';
        }
        $user->save();
        return redirect()->route('profile.index');
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
