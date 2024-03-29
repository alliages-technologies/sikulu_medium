<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ClasseRequest;

use Illuminate\Http\Request;
use App\Models\Classe;
use App\Models\Level;
use App\Models\Serie;

class ClasseController extends Controller
{
    public function index(){
        $classes = Classe::all();
        return view('admin.classes.index', compact('classes'));
    }

    public function show(Classe $classe){
        return view('admin.classes.show', compact('classe'));
    }

    public function create(){
        $levels = Level::all();
        $series = Serie::all();
        return view('admin.classes.create', compact(['levels', 'series']));
    }

    public function store(ClasseRequest $request){
        Classe::create($request->validated());
        return redirect()->route('classe.index');
    }

    public function edit(Classe $classe){
        $levels = Level::all();
        $series = Serie::all();
        return view('admin.classes.edit', compact(['levels', 'series', 'classe']));
    }

    public function update(ClasseRequest $request, Classe $classe){
        $classe->update($request->validated());
        return redirect()->route('classe.index');
    }

    public function enable(Classe $classe){
        if ($classe->active == 0) {
            $classe->active = 1;
            $classe->save(); 
        }
        return back();
    }

    public function disable(Classe $classe){
        if ($classe->active == 1) {
            $classe->active = 0;
            $classe->save(); 
        }

        return back();
    }
}
