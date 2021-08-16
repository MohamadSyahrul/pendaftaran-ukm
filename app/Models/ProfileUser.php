<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProfileUser extends Model
{
    use HasFactory;

    // protected $guarded = ['id'];
    use HasFactory;
    protected $table = "profile_users";
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
    ];
    public function user() {
        return $this->hasOne('App\Models\User', 'id');
    }
    public function anggota_ukm() {
        return $this->belongsTo('App\Models\anggota_ukm', 'id' , 'profile_id');
    }
}
