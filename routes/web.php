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

Route::get('/', 'WelcomeController@index');
Route::get('/posts', 'PostsController@index');
Route::get('/posts/{post}', 'PostsController@show');
Route::get('/search', 'PostsController@search');

Route::get('/contacts', 'WelcomeController@contacts');
Route::post('/send', 'WelcomeController@sendEmail');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});