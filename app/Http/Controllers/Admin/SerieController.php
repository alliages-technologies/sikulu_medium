<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Serie;

class SerieController extends Controller
{
    public function index(){
        $series = Serie::all();
        return view('admin.series.index', compact('series'));
    }

    public function show(Serie $serie){
        return view('admin.series.show', compact('serie'));
    }

    public function create(){
        return view('admin.series.create');
    }

    public function store(Request $request){
        Serie::create($request->all());
        return redirect()->route('serie.index');
    }

    public function edit(Serie $serie){
        return view('admin.series.edit', compact('serie'));
    }

    public function update(Request $request, Serie $serie){
        $serie->update($request->all());
        return redirect()->route('serie.index');
    }

    public function enable(Serie $serie){
        if ($serie->active == 0) {
            $serie->active = 1;
            $serie->save(); 
        }
        return back();
    }

    public function disable(Serie $serie){
        if ($serie->active == 1) {
            $serie->active = 0;
            $serie->save(); 
        }
        
        return back();
    }
}
