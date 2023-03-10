<?php
/*
|--------------------------------------------------------------------------
| Install Routes
|--------------------------------------------------------------------------
|
| This route is responsible for handling the intallation process
|
|
|
*/
Route::get('/cc', function() {
    $exitCode = \Artisan::call('cache:clear');
    $exitCode = \Artisan::call('config:clear');
    $exitCode = \Artisan::call('route:clear');
    $exitCode = \Artisan::call('view:clear');
    $exitCode = \Artisan::call('config:cache');
    return '<h1>All Config cleared</h1>';
});

Route::get('/cc', function() {
    $exitCode = \Artisan::call('cache:clear');
    $exitCode = \Artisan::call('config:clear');
    $exitCode = \Artisan::call('route:clear');
    $exitCode = \Artisan::call('view:clear');
    $exitCode = \Artisan::call('config:cache');
    return '<h1>All Config cleared</h1>';
});

use Illuminate\Support\Facades\Route;

Route::get('/step0', 'InstallController@step0')->name('step0');
Route::get('/step1', 'InstallController@step1')->name('step1');
Route::get('/', 'InstallController@step2')->name('step2');
Route::get('/step3/{error?}', 'InstallController@step3')->name('step3')->middleware('installation-check');
Route::get('/step4', 'InstallController@step4')->name('step4')->middleware('installation-check');
Route::get('/step5', 'InstallController@step5')->name('step5')->middleware('installation-check');

Route::post('/database_installation', 'InstallController@database_installation')->name('install.db')->middleware('installation-check');
Route::get('import_sql', 'InstallController@import_sql')->name('import_sql')->middleware('installation-check');
Route::post('system_settings', 'InstallController@system_settings')->name('system_settings');
Route::post('purchase_code', 'InstallController@purchase_code')->name('purchase.code');
