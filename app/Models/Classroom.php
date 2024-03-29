<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classroom extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function classe(){
        return $this->belongsTo(Classe::class, 'classe_id');
    }

    public function site(){
        return $this->belongsTo(Site::class,'site_id');
    }
}
