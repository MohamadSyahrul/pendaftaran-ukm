<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\anggota_ukm;
use Auth;
use App\Models\Event;
use App\Models\PendaftaranEvent;
class DashboardController extends Controller
{
    public function index()
    {
          if(Auth::user()->role != "admin" && Auth::user()->role != "mahasiswa"){
    	 $data = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Belum Diterima')->orderBy('status', 'asc')->get();
        $data_count_accepted = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Diterima')->count('nim');
        $data_count = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'Belum Diterima')->count('nim');
        $data_count_demis = anggota_ukm::where('ukm_id', Auth::user()->desk_ukm->id)->where('status', 'EX Anggota')->count('nim');
        // dd($data_count);
        $item = Event::where('ukm_id', Auth::user()->desk_ukm->id)->count('id');
         $event = Event::where('ukm_id', Auth::user()->desk_ukm->id)->get();
    
        // dd($data_count_accepted);

            return view('pages.home' , [
                'data_count_accepted' => $data_count_accepted,
                'data_count' => $data_count,
                'data_count_demis' => $data_count_demis,
                'item' => $item,
                'event' => $event,

        ]);
        }
        if (Auth::user()->role == "mahasiswa") {

       

            return view('pages.home');
        }

        

    }
}
