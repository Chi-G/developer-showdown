<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

Route::resource('users', UserController::class);

Route::get('/test', function () {
    return response()->json(['message' => 'API is working']);
});
