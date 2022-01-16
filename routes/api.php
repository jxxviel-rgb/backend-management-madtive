<?php

use App\Http\Controllers\MessageController;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;


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



// Email verification
Route::get('/email/verify/{id}', 'API\VerifyEmailController@verify')->name('verification.verify');



Route::prefix('v1')->group(function () {
    Route::middleware('auth:api')->get('/user', function (Request $request) {
        return $request->user();
    });

    Route::middleware('auth:api')->get('/email/resend', function (Request $request) {
        $request->user()->sendEmailVerificationNotification();
        return ['status' => 'sedang dikirim'];
    });

    Route::post('logout', 'API\LoginController@logout')->middleware(['auth:api']);
    // Authentication
    Route::post('register', 'API\RegisterController@register');
    Route::post('login', 'API\LoginController@login');



    // Employees
    Route::get('employees', 'API\EmployeeController@index');
    Route::post('employees/projects', 'API\EmployeeController@employeeAvaibility');
    Route::get('employees/{id}', 'API\EmployeeController@show');
    Route::post('employees', 'API\EmployeeController@store');
    Route::put('employees/{id}', 'API\EmployeeController@update');
    Route::delete('employees/{id}', 'API\EmployeeController@delete');


    // Position



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
    Route::get("clients/{id}/pics", 'API\ClientController@showPicsClient');

    // Project
    Route::get('projects', 'API\ProjectController@index');
    Route::get('projects/{id?}', 'API\ProjectController@show');
    Route::post('projects', 'API\ProjectController@store');
    Route::put('projects/{id?}', 'API\ProjectController@update');
    Route::delete('projects/{id?}', 'API\ProjectController@destroy');
    Route::get('projects/{id}/addl_costs', 'API\ProjectController@projectWithAddlCost');

    Route::apiResource('teams', 'API\ProjectTeamController');
    Route::get('projects/{id}/teams', "API\ProjectTeamController@showProjectTeam");
    Route::get('projects/show/{id}', "API\ProjectController@showForUpdate");
    // Route::middleware(['XssSanitization', 'CleanRequest'])->group(function () {
    // });
    // Project Team
    Route::prefix('messages')->group(function () {
        Route::get('/logs', 'API\NotificationBillController@messagesHistory');
        Route::get('/nextpage', 'API\NotificationBillController@nextPageMessages');
    });
    Route::apiResource('reminders', 'API\NotificationBillController');
    Route::apiResource('addl_costs', 'API\AdditionalCostController');
    // Route::get('projects/{id}/costs', 'API\AddiotionalCostController@addCosts');
    Route::prefix('configurations')->group(function () {
        Route::put('projects/cost/{id}', 'API\ProjectCostController@update');
        Route::get('projects/cost', 'API\ProjectCostController@index');
        Route::get('projects/cost/{id?}', 'API\ProjectCostController@show');
        Route::apiResource('messages', 'API\MessageController');
    });
    Route::get('positions', 'API\PositionController@index');
    Route::post('positions', 'API\PositionController@store');
    Route::put('positions/{id}', 'API\PositionController@update');
    Route::get('positions/{id}', 'API\PositionController@show');
    Route::delete('positions/{id}', 'API\PositionController@destroy');
});
