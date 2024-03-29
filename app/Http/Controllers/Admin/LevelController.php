<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\LevelRequest;
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

    public function store(LevelRequest $request){
        Level::create($request->validated());
        return redirect()->route('level.index');
    }

    public function edit(Level $level){
        return view('admin.levels.edit', compact('level'));
    }

    public function update(LevelRequest $request, Level $level){
        $level->update($request->validated());
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
