<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('symlink', function () {
  Artisan::call('storage:link');
  echo "create symlink";
});
Route::get('optimize', function () {
  Artisan::call('optimize');
  echo "optimizing";
});
Route::get('config-clear', function () {
  Artisan::call('config:clear');
  echo "config been cleared";
});
