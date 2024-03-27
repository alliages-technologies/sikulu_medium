<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Level;

class LevelController extends Controller
{
    public function index(){
        $levels = Level::all();
        return view('admin.levels.index', compact('levels'));
    }

    public function show(Level $level){
        return view('admin.levels.show', compact('level'));
    }

    public function create(){
        return view('admin.levels.create');
    }

    public function store(Request $request){
        Level::create($request->all());
        return redirect()->route('level.index');
    }

    public function edit(Level $level){
        return view('admin.levels.edit', compact('level'));
    }

    public function update(Request $request, Level $level){
        $level->update($request->all());
        return redirect()->route('level.index');
    }

    public function enable(Level $level){
        if ($level->active == 0) {
            $level->active = 1;
            $level->save(); 
        }
        return back();
    }

    public function disable(Level $level){
        if ($level->active == 1) {
            $level->active = 0;
            $level->save(); 
        }
        
        return back();
    }
}
