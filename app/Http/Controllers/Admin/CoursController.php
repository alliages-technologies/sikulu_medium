<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Classe;
use App\Models\Cours;
use App\Models\Matter;
use App\Http\Requests\Admin\CoursRequest;

class CoursController extends Controller
{
    public function index(){
        $cours = Cours::all();
        return view('admin.cours.index', compact('cours'));
    }

    public function show(Cours $cours){
        return view('admin.cours.show', compact('cours'));
    }

    public function create(){
        $matters = Matter::all();
        $classes = Classe::all();
        return view('admin.cours.create', compact(['matters', 'classes']));
    }

    public function store(CoursRequest $request){
        Cours::create($request->validated());
        return redirect()->route('cours.index');
    }

    public function edit(Cours $cours){
        $matters = Matter::all();
        $classes = Classe::all();
        return view('admin.cours.edit', compact(['matters', 'classes', 'cours']));
    }

    public function update(CoursRequest $request, Cours $cours){
        $cours->update($request->validated());
        return redirect()->route('cours.index');
    }

    public function enable(Cours $cours){
        if ($cours->active == 0) {
            $cours->active = 1;
            $cours->save(); 
        }
        return back();
    }

    public function disable(Cours $cours){
        if ($cours->active == 1) {
            $cours->active = 0;
            $cours->save(); 
        }

        return back();
    }
}
