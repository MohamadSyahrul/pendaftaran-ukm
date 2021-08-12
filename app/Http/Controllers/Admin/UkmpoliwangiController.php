<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Ukm;
use Illuminate\Http\Request;

class UkmpoliwangiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ukm = Ukm::all();
        return view('pages.admin.ukm-poliwangi',compact('ukm'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.admin.tambah-data');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $nm = $request->logo;
        $img = $request->foto;
        $ft = $request->foto1;

        $namaFile = time().rand(100,999).".".$nm->getClientOriginalName(); 
        $name = time().rand(100,999).".".$img->getClientOriginalName(); 
        $imgName = time().rand(100,999).".".$ft->getClientOriginalName(); 

 
        $dtUpload = new Ukm; 
        $dtUpload->ukm = $request->ukm; 
        $dtUpload->keterangan = $request->keterangan; 

        $dtUpload->logo =  $namaFile; 
        $dtUpload->foto =  $name; 
        $dtUpload->foto1 =  $imgName; 

 
        $nm->move(public_path().'/img',$namaFile); 
        $img->move(public_path().'/img',$name); 
        $ft->move(public_path().'/img',$imgName); 

        $dtUpload->save(); 
 
        return redirect()->route('ukm-poliwangi.index');
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
        $item = Ukm::find($id);
        return view('pages.admin.ukm-edit',compact('item'));
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
        $nm = $request->logo;
        $img = $request->foto;
        $ft = $request->foto1;

        $namaFile = time().rand(100,999).".".$nm->getClientOriginalName(); 
        $name = time().rand(100,999).".".$img->getClientOriginalName(); 
        $imgName = time().rand(100,999).".".$ft->getClientOriginalName(); 

 
        $dtUpload = Ukm::find($id); 
        $dtUpload->ukm = $request->ukm; 
        $dtUpload->keterangan = $request->keterangan; 

        $dtUpload->logo =  $namaFile; 
        $dtUpload->foto =  $name; 
        $dtUpload->foto1 =  $imgName; 

 
        $nm->move(public_path().'/img',$namaFile); 
        $img->move(public_path().'/img',$name); 
        $ft->move(public_path().'/img',$imgName); 

        $dtUpload->update(); 
 
        return redirect()->route('ukm-poliwangi.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hapus = Ukm::findOrFail($id);

        $file = public_path('img/').$hapus->logo;
        $ft = public_path('img/').$hapus->foto;
        $ftp = public_path('img/').$hapus->foto1;

                //cek jika ada gambar
                if (file_exists($ftp)){
                    //maka hapus ftp diforder public/img
                    @unlink($file);
                }
                //cek jika ada gambar
                if (file_exists($ft)){
                    //maka hapus ft diforder public/img
                    @unlink($ft);
                }
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
