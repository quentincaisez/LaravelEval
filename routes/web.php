<?php

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

Route::get('/', 'BaseController@index');
Route::get('/create', 'CreateController@index');

Route::post('/play/insert', 'PlayController@insertOne');
Route::post('/play/update', 'PlayController@updateOneAction');

Route::get('/play/delete/{id}', 'PlayController@deleteOne');
Route::get('/play/update/{id}', 'PlayController@updateOne');
