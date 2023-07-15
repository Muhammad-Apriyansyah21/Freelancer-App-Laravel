<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class tagline extends Model
{
    // use HasFactory;
    use SoftDeletes;

    public $table = 'tagline';

    protected $dates =[
        'updated_at',
        'created_at',
        'deleted_at',
    ];

    protected $fillable = [
        'service_id', 
        'tagline', 
        'updated_at',
        'created_at',
        'deleted_at',
    ];


     // One to many DB
     public function service()
     {
         return $this->belongsTo('App\Models\Service', 'service_id', 'id');
     }

}
