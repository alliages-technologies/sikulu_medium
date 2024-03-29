<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Site;
use App\Http\Requests\Admin\SiteRequest;

class SiteController extends Controller
{
    public function index(){
        $sites = Site::all();
        return view('admin.site.index', compact('sites'));
    }

    public function show(Site $site){
        return view('admin.site.show', compact('site'));
    }

    public function create(SiteRequest $request,Site $site){
        $quartiers=array(['id'=>1,'name'=>'test']);
        return view('admin.site.create',compact('quartiers'));
    }

    public function store(SiteRequest $request){
        $site = Site::create($request->validated());
        if ($request->hasFile('image_uri')) {
            $path = $request->file('image_uri')->store('images', 'public');
            $site->image_uri = $path;
            $site->save();
        } 
        return redirect()->route('site.index');
    }
    public function edit(Site $site){
        $quartiers=array(['id'=>1,'name'=>'test']);
        return view('admin.site.edit', compact(['site','quartiers']));
    } 
    public function update(SiteRequest $request, Site $site){
        $site->update($request->validated());
        if ($request->hasFile('image_uri')) {
            $path = $request->file('image_uri')->store('images', 'public');
            $site->image_uri = $path;
            $site->save();
            return redirect()->route('site.index');
        } 
        else {
            return redirect()->back()->with('error', 'Aucune image n\'a été téléchargée.');
        }
    }
    public function enable(Site $site){
        if ($site->active == 0) {
            $site->active = 1;
            $site->save(); 
        }
        return back();
    }
    public function disable(Site $site){
        if ($site->active == 1) {
            $site->active = 0;
            $site->save(); 
        }
        
        return back();
    }
}
