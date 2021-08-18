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
        'gambar',
        'ukm_id'
    ];
    public function ukm() {
        return $this->belongsTo('App\Models\Ukm', 'ukm_id' , 'id');
    }
     public function pendaftaran_event() {
        return $this->belongsTo('App\Models\PendaftaranEvent', 'id' , 'event_id');
    }

}
