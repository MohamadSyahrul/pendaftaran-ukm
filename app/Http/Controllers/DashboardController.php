<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\anggota_ukm;
use Auth;
use App\Models\Event;
use App\Models\PendaftaranEvent;
use GuzzleHttp\Client;
use App\Models\User;
use App\Models\ProfileUser;
use Illuminate\Support\Facades\Hash;
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


public function update_angkatan_anggota(Request $request)
{
     $data = ProfileUser::all();

    foreach ($data as $key => $value) {
       
        anggota_ukm::where('id_user', $value->id_user)->update([
            'angkatan' => $value->angkatan,
        ]);
    }
       
}

    public function API()
    {
         $client = new Client();
        $response = $client->request('GET', 'https://jpc.poliwangi.ac.id/Api/Alumni/list/', ['verify' => false]);
        $response = json_decode($response->getBody());
        set_time_limit(600);

        // dd($response->data);




  foreach ($response->data as $data_profil) {
           
        $prodi_angkatan = explode(' ', $data_profil->prodi);
        $angkatan_sesuai_prodi = str_replace('D', '', $prodi_angkatan[0]);
        
   

        if ($angkatan_sesuai_prodi == 3) {
            $angkatan = ((int)$data_profil->tahun_lulus) - 3;
            
            ProfileUser::where('id_user', $data_profil->id)->update([

                'angkatan' => $angkatan,

                 ]);
            // dd($angkatan);
            
        }
        else{
            $angkatan = ((int)$data_profil->tahun_lulus) - 4;

             ProfileUser::where('id_user', $data_profil->id)->update([

                'angkatan' => $angkatan,

                 ]);
        }


}

        // foreach ($response->data as $data_profil) {
           // User::insert([
           //      'id' => $data_profil->id,
           //      'name' => $data_profil->nama,
           //      'nim' => $data_profil->nim,
           //      'password' =>  Hash::make($data_profil->nim),
           //      'email' => $data_profil->email,
           //      'role_id' => 'mahasiswa',
           //  ]);
            // ProfileUser::where('id_user', $data_profil->id)->update([

                // 'nim' => $data_profil->nim,
                //  'user_id' => $data_profil->id,
                // 'nama' => $data_profil->nama,
                // 'prodi' => $data_profil->prodi,
                // 'angkatan' => $data_profil->tahun_lulus,
                // 'telepon' => $data_profil->telp,
        //     ]);
        // }

        
    }
}
