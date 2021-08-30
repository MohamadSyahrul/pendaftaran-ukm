<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ukm;
use App\Models\ProfileUser;

class anggota_ukm extends Model
{
	use HasFactory;
	protected $table = "anggota_ukms";
	protected $primaryKey = 'id';
	protected $fillable = [
	     'foto',
        'nama',
        'nim',
        'no_tlp',
        'alamat',
        'angkatan',
        'prodi',
        'id_user',
        'ukm_id',
        'status'
	];
	public function ukm() {
		return $this->belongsTo('App\Models\Ukm', 'ukm_id' , 'id');
	}
	// public function profile() {
	// 	return $this->belongsTo('App\Models\ProfileUser', 'profile_id' , 'id');
	// }
}
