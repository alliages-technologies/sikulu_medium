<?php

namespace App\Http\Controllers\Admin;

use App\Models\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RoleController extends Controller
{
    public function index(){
        $roles = Role::all();
        return view('admin.roles.index', compact('roles'));
    }

    public function show(Role $role){
        return view('admin.roles.show', compact('role'));
    }

    public function create(){
        return view('admin.roles.create');
    }

    public function store(Request $request){
        Role::create($request->all());
        return redirect()->route('role.index');
    }

    public function edit(Role $role){
        return view('admin.roles.edit', compact('role'));
    }

    public function update(Request $request, Role $role){
        $role->update($request->all());
        return redirect()->route('role.index');
    }

    public function enable(Role $role){
        if ($role->active == 0) {
            $role->active = 1;
            $role->save(); 
        }
        return back();
    }

    public function disable(Role $role){
        if ($role->active == 1) {
            $role->active = 0;
            $role->save(); 
        }
        
        return back();
    }
}
