<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Matter;
use App\Http\Requests\Admin\MatterRequest;
class MatterController extends Controller
{
    public function index(){
        $matters = Matter::all();
        return view('admin.matters.index', compact('matters'));
    }

    public function show(Matter $matter){
        return view('admin.matters.show', compact('matter'));
    }

    public function create(){
        return view('admin.matters.create');
    }

    public function store(MatterRequest $request){
        Matter::create($request->validated());
        return redirect()->route('matter.index');
    }

    public function edit(Matter $matter){
        return view('admin.matters.edit', compact('matter'));
    }

    public function update(MatterRequest $request, Matter $matter){
        $matter->update($request->validated());
        return redirect()->route('matter.index');
    }

    public function enable(Matter $matter){
        if ($matter->active == 0) {
            $matter->active = 1;
            $matter->save(); 
        }
        return back();
    }

    public function disable(Matter $matter){
        if ($matter->active == 1) {
            $matter->active = 0;
            $matter->save(); 
        }
        
        return back();
    }
}
