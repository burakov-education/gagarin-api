<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\FlightController;
use App\Http\Controllers\GagarinController;
use App\Http\Controllers\LunarMissionController;
use Illuminate\Support\Facades\Route;

Route::post('/registration', [AuthController::class, 'registration']);
Route::post('/authorization', [AuthController::class, 'authorization']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/profile', function () {
        return auth()->user();
    });
    Route::get('/logout', [AuthController::class, 'logout']);

    Route::get('/gagarin-flight', GagarinController::class);
    Route::get('/flight', FlightController::class);

    Route::get('/lunar-missions', [LunarMissionController::class, 'index']);
    Route::post('/lunar-missions', [LunarMissionController::class, 'store']);
    Route::delete('/lunar-missions/{mission}', [LunarMissionController::class, 'delete'])->can('manage,mission');
    Route::patch('/lunar-missions/{mission}', [LunarMissionController::class, 'update'])->can('manage,mission');
});
