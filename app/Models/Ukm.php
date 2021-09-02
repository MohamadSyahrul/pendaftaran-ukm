<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ukm extends Model
{
    use HasFactory;
    protected $table = "tb_ukm";
    protected $primaryKey = 'id';
    protected $fillable = [
        'ukm',
        'keterangan',
        'foto',
        'foto1',
        'logo',
    ];
        public function event() {
        return $this->belongsTo('App\Models\Event', 'id' , 'ukm_id');
    }

    public function anggota() {
        return $this->hasMany('App\Models\anggota_ukm', 'id' , 'ukm_id');
    }
    public function desk_ukm() {
        return $this->hasOne('App\Models\User', 'role' , 'ukm');
    }
}
