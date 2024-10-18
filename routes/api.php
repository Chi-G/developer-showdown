<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BatchUpdateController;
use App\Http\Controllers\UserController;

// Route for batch update
Route::post('/users/batch-update', [BatchUpdateController::class, 'handleBatchUpdate']);

// API resource route for users
Route::get('users', [UserController::class, 'index']);
Route::post('users', [UserController::class, 'store']);
