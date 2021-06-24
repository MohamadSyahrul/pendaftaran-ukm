<?php

use Facade\FlareClient\View;
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

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware(['auth'])
->group(function() {
    Route::get('/dashboard', function(){
        return view('pages.home');
    });
    Route::get('/profile', function(){
        return view('pages.profil');
    });
    Route::get('/edit-profile', function(){
        return view('pages.edit-profil');
    });
    Route::get('/ukm-poliwangi', function(){
        return view('pages.ukm-poliwangi');
    });
});
// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
