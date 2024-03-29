<?php

use App\Http\Controllers\Admin\ClasseController;
use App\Http\Controllers\Admin\ClassroomController;
use App\Http\Controllers\Admin\LevelController;
use App\Http\Controllers\Admin\SerieController;
use App\Http\Controllers\Admin\SiteController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::prefix('/level')->controller(LevelController::class)->name('level.')->group(function(){
    Route::get('/', 'index')->name('index');
    Route::get('/show/{level}', 'show')->name('show');    
    Route::get('/create', 'create')->name('create');
    Route::post('/store', 'store')->name('store');   
    Route::get('/edit/{level}', 'edit')->name('edit');
    Route::post('/update/{level}', 'update')->name('update');
    Route::post('/enable/{level}', 'enable')->name('enable');
    Route::post('/disable/{level}', 'disable')->name('disable');
});

Route::prefix('/serie')->controller(SerieController::class)->name('serie.')->group(function(){
    Route::get('/', 'index')->name('index');
    Route::get('/show/{serie}', 'show')->name('show');    
    Route::get('/create', 'create')->name('create');
    Route::post('/store', 'store')->name('store');   
    Route::get('/edit/{serie}', 'edit')->name('edit');
    Route::post('/update/{serie}', 'update')->name('update');
    Route::post('/enable/{serie}', 'enable')->name('enable');
    Route::post('/disable/{serie}', 'disable')->name('disable');
});

Route::prefix('/classe')->controller(ClasseController::class)->name('classe.')->group(function(){
    Route::get('/', 'index')->name('index');
    Route::get('/show/{classe}', 'show')->name('show');    
    Route::get('/create', 'create')->name('create');
    Route::post('/store', 'store')->name('store');   
    Route::get('/edit/{classe}', 'edit')->name('edit');
    Route::post('/update/{classe}', 'update')->name('update');
    Route::post('/enable/{classe}', 'enable')->name('enable');
    Route::post('/disable/{classe}', 'disable')->name('disable');
});

Route::prefix('/classroom')->controller(ClassroomController::class)->name('classroom.')->group(function(){
    Route::get('/', 'index')->name('index');
    Route::get('/show/{classroom}', 'show')->name('show');    
    Route::get('/create', 'create')->name('create');
    Route::post('/store', 'store')->name('store');   
    Route::get('/edit/{classroom}', 'edit')->name('edit');
    Route::post('/update/{classroom}', 'update')->name('update');
    Route::post('/enable/{classroom}', 'enable')->name('enable');
    Route::post('/disable/{classroom}', 'disable')->name('disable');
});

Route::prefix('/site')->controller(SiteController::class)->name('site.')->group(function(){
    Route::get('/', 'index')->name('index');
    Route::get('/show/{site}', 'show')->name('show');    
    Route::get('/create', 'create')->name('create');
    Route::post('/store', 'store')->name('store');   
    Route::get('/edit/{site}', 'edit')->name('edit');
    Route::post('/update/{site}', 'update')->name('update');
    Route::post('/enable/{site}', 'enable')->name('enable');
    Route::post('/disable/{site}', 'disable')->name('disable');
});