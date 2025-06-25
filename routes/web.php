<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Ini adalah tempat untuk mendaftarkan semua route aplikasi.
| Gunakan prefix `api/rumah-sakit` untuk semua endpoint rumah sakit.
|
*/

$router->get('/', function () use ($router) {
    return response()->json([
        'status' => 'API Rumah Sakit Aktif 🚑',
        'version' => $router->app->version()
    ]);
});

// Group untuk endpoint rumah sakit
$router->group(['prefix' => 'api/rumah-sakit'], function () use ($router) {
    $router->get('/',        'RumahSakitController@index');   // GET semua data
    $router->get('{id}',     'RumahSakitController@show');    // GET by ID
    $router->post('/',       'RumahSakitController@store');   // POST create
    $router->put('{id}',     'RumahSakitController@update');  // PUT update
    $router->delete('{id}',  'RumahSakitController@destroy'); // DELETE
});
