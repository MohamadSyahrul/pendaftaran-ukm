<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ukm;

class ListUkm extends Model
{

	use HasFactory;
    protected $table = "list_ukms";
    protected $primaryKey = 'id';
    protected $fillable = [
        'nama_ukm',
        // 'ukm_id',
    ];

    public function ukm() {
        return $this->belongsTo('App\Models\Ukm', 'nama_ukm' , 'ukm');
    }

     

}
