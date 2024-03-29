<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cours extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function matter(){
        return $this->belongsTo(Matter::class, 'matter_id');
    }

    public function classe(){
        return $this->belongsTo(Classe::class, 'matter_id');
    }
}
