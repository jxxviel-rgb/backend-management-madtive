<?php

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:api')->get('/email/resend', function (Request $request) {
    $request->user()->sendEmailVerificationNotification();
    return ['status' => 'sedang dikirim'];
});

// Email verification
Route::get('/email/verify/{id}', 'API\VerifyEmailController@verify')->name('verification.verify');


Route::post('logout', 'API\LoginController@logout')->middleware(['auth:api']);
// Authentication
Route::post('register', 'API\RegisterController@register');
Route::post('login', 'API\LoginController@login');



// Employees
Route::get('employees', 'API\EmployeeController@index');
Route::get('employees/{id}', 'API\EmployeeController@show');
Route::post('employees', 'API\EmployeeController@store');
Route::put('employees/{id}', 'API\EmployeeController@update');
Route::delete('employees/{id}', 'API\EmployeeController@delete');


// Position
Route::get('positions', 'API\PositionController@index');
Route::post('positions', 'API\PositionController@store');
Route::put('positions/{id}', 'API\PositionController@update');
Route::get('positions/{id}', 'API\PositionController@show');
Route::delete('positions/{id}', 'API\PositionController@destroy');


// PIC
Route::get('pics', 'API\PicController@index');
Route::get('pics/{id}', 'API\PicController@show');
Route::post('pics', 'API\PicController@store');
Route::put('pics/{id}', 'API\PicController@update');
Route::delete('pics/{id}', 'API\PicController@destroy');

// Client
Route::get('clients', 'API\ClientController@index');
Route::get('clients/{id?}', 'API\ClientController@show');
Route::post('clients', 'API\ClientController@store');
Route::delete('clients/{id?}', 'API\ClientController@destroy');
Route::put('clients/{id?}', 'API\ClientController@update');

// Project
Route::get('projects', 'API\ProjectController@index');
Route::get('projects/{id?}', 'API\ProjectController@show');
Route::post('projects', 'API\ProjectController@store');
Route::put('projects/{id?}', 'API\ProjectController@update');
Route::delete('projects/{id?}', 'API\ProjectController@destroy');


Route::apiResource('teams', 'API\ProjectTeamController');
Route::get('projects/{id}/teams', "API\ProjectTeamController@showProjectTeam");
Route::get('projects/show/{id}', "API\ProjectController@showForUpdate");
// Route::middleware(['XssSanitization', 'CleanRequest'])->group(function () {
// });
// Project Team
