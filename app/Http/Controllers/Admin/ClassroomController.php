<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Classroom;
use App\Models\Classe;

class ClassroomController extends Controller
{
    public function index(){
        $classrooms = Classroom::all();
        return view('admin.classrooms.index', compact('classrooms'));
    }

    public function show(Classroom $classroom){
        return view('admin.classrooms.show', compact('classroom'));
    }

    public function create(){
        $classes = Classe::all();
        return view('admin.classrooms.create', compact('classes'));
    }

    public function store(Request $request){
        Classroom::create($request->all());
        return redirect()->route('classroom.index');
    }

    public function edit(Classroom $classroom){
        $classes = Classe::all();
        return view('admin.classrooms.edit', compact(['classes', 'classroom']));
    }

    public function update(Request $request, Classroom $classroom){
        $classroom->update($request->all());
        return redirect()->route('classroom.index');
    }

    public function enable(Classroom $classroom){
        if ($classroom->active == 0) {
            $classroom->active = 1;
            $classroom->save(); 
        }
        return back();
    }

    public function disable(Classroom $classroom){
        if ($classroom->active == 1) {
            $classroom->active = 0;
            $classroom->save(); 
        }
        
        return back();
    }
}
