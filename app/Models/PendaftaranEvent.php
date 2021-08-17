<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PendaftaranEvent extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'pendaftaran_events';
    protected $fillable =[
        'ukm_id',
        'profile_id',
        'event_id',
    ];

	public function ukm() {
		return $this->belongsTo('App\Models\Ukm', 'ukm_id' , 'id');
	}
	public function profile() {
		return $this->belongsTo('App\Models\ProfileUser', 'profile_id' , 'id');
	}
	public function event() {
		return $this->belongsTo('App\Models\ProfileUser', 'profile_id' , 'id');
	}
}
