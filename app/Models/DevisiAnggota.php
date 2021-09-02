<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DevisiAnggota extends Model
{
    use HasFactory;
    protected $table = "devisi_anggotas";
	protected $primaryKey = 'id';
	protected $fillable = [
	     // 'foto',
        // 'id_user',
        'ukm_id',
        'nama_devisi',
	];

}
