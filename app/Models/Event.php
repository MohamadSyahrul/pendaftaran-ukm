<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;
    // protected $guarded = ['id'];
    protected $primaryKey = 'id';
    protected $table = 'tb_event';
    protected $fillable =[
        'judul',
        'keterangan',
        'gambar'
    ];
}
