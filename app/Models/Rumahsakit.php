<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RumahSakit extends Model
{
    protected $table = 'rumah_sakits';
    protected $fillable = [
        'nama_rumah_sakit',
        'alamat',
        'no_telepon',
        'tipe',
        'latitude',
        'longitude',
    ];
}
