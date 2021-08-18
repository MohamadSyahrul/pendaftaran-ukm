<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Models\PendaftaranEvent;
use Illuminate\Http\Request;
use Auth;
class KegiatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         if(Auth::user()->desk_ukm != null) {
        $item = Event::where('ukm_id', Auth::user()->desk_ukm->id)->get();
    
        return view('pages.admin.kegiatan.index', compact(['item']));
        }
        else{
             $item = Event::where('ukm_id', Auth::user()->desk_ukm)->get();
    
        return view('pages.admin.kegiatan.index', compact(['item']));
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.admin.kegiatan.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $event = new Event;
        $event->judul = $request->judul;
        $event->keterangan = $request->keterangan;
        $event->ukm_id = Auth::user()->desk_ukm->id;
        if ($request->hasFile('gambar')) {
            $nm = $request->gambar;
            $namaFile = time() . rand(100, 999) . "." . $nm->getClientOriginalExtension();
            $event->gambar = $namaFile;
            $nm->move(public_path() . '/img', $namaFile);
        }else{
            $event->gambar = 'default.png';
        }
        $event->save();
        return redirect()->route('kegiatan.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $event = Event::findOrFail($id);

        return view('pages.admin.kegiatan.detail',[
            "event" => $event
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $event = Event::findOrFail($id);

        return view('pages.admin.kegiatan.edit',[
            "item" => $event
        ]);
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
        $validation = $request->validate([
            'judul' => 'required | max:100',
            'keterangan' => 'required | max:1000'
        ]);
        
        $ubah = Event::findorfail($id);
        $awal = $ubah->gambar;

        $dt =[
            'judul' =>$request['judul'],
            'keterangan' =>$request['keterangan'],
            'gambar' => $awal,
        ];
        $request->gambar->move(public_path().'/img', $awal);
        $ubah->update($dt);
        return redirect()->route('kegiatan.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hapus = Event::findOrFail($id);

        $file = public_path('img/').$hapus->gambar;
        //cek jika ada gambar
        if (file_exists($file)){
            //maka hapus file diforder public/img
            @unlink($file);
        }
        //hapus data didatabase
        $hapus->delete();
        return back();
    }
}
