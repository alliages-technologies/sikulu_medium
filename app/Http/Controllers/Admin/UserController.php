<?php

namespace App\Http\Controllers\Admin;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
class UserController extends Controller
{
    public function index(){
        $users = User::all();
        return view('admin.users.index', compact('users'));
    }

    public function show(User $user){
        return view('admin.users.show', compact('user'));
    }

    public function create(){
        $roles = Role::all();
        return view('admin.users.create', compact('roles'));
    }

    public function store(Request $request){
        $user = User::create($request->all());
        $user->role_id = $request->role_id;
        $user->save();
        return redirect()->route('user.index');
    }

    public function edit(User $user){
        $roles = Role::all();
        return view('admin.users.edit', compact(['roles', 'user']));
    }

    public function update(Request $request, User $user){
        $user->update($request->all());
        $user->role_id = $request->role_id;
        $user->save();
        return redirect()->route('user.index');
    }

    public function enable(User $user){
        if ($user->active == 0) {
            $user->active = 1;
            $user->save(); 
        }
        return back();
    }

    public function disable(User $user){
        if ($user->active == 1) {
            $user->active = 0;
            $user->save(); 
        }
        
        return back();
    }
}
