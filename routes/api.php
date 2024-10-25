<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BatchUpdateController;
use App\Http\Controllers\UserController;

// API Routes
Route::prefix('v1')->group(function () {
    // User Routes
    Route::apiResource('users', UserController::class);

    // Batch Update Route
    Route::post('users/batch-update', [BatchUpdateController::class, 'handleBatchUpdate']);
});
