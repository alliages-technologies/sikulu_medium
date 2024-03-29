<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classe extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function getFullName(){
        return $this->level->name.' '.$this->serie->name;
    }

    public function classrooms(){
        return $this->hasMany(Classroom::class);
    }

    public function level(){
        return $this->belongsTo(Level::class, 'level_id');
    }

    public function serie(){
        return $this->belongsTo(Serie::class, 'serie_id');
    }

    public function cours(){
        return $this->hasMany(Cours::class);
    }
    
}
