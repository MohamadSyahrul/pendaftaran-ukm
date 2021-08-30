<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ListUkm;

class ListUKMController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ukm = ListUkm::orderBy('nama_ukm')->get();
        return view('pages.super_admin.ukm.index',compact('ukm'));
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
        if (ListUkm::where('nama_ukm', '=',   $request->input('ukm'))->exists() ){
        return redirect()->route('list-ukm.index')->with(['error' => 'Data Sudah Ada']);
        
    }
    else{
         ListUkm::create([
            'nama_ukm' => $request->input('ukm'),
        ]);
        // return view('pages.super_admin.ukm.index',compact('ukm'));
        return redirect('/super_admin/list-ukm');
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
        $item = ListUkm::find($id);
        return view('pages.super_admin.ukm.edit',compact('item'));
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
        ListUkm::where('id', $id)->update([
            'nama_ukm' => $request->input('ukm'),
        ]);
        return redirect('/super_admin/list-ukm');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
          ListUkm::where('id', $id)->delete();
        return redirect('/super_admin/list-ukm');

    }
}
