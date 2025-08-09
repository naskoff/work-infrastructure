<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    \Illuminate\Support\Facades\Cache::get('key1', 'default');
    return view('welcome');
});
