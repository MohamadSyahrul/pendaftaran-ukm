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
    
}
