<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Mahasiswa\EventController;
use App\Http\Middleware\IsAdmin;
use App\Http\Middleware\IsMahasiswa;
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

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

Route::middleware([IsAdmin::class])
->prefix('admin')
->group(function() {
    Route::get('profile', function(){
        return view('pages.profil');
    });
    Route::get('/edit-profile', function(){
        return view('pages.edit-profil');
    });
    Route::resource('ukm-poliwangi', '\App\Http\Controllers\Admin\UkmpoliwangiController');
    Route::resource('pendaftaran', '\App\Http\Controllers\Admin\PendaftaranController');
    Route::resource('kegiatan', '\App\Http\Controllers\Admin\KegiatanController');
    
});

Route::middleware([IsMahasiswa::class])
->prefix('mahasiswa')
->group(function() {

    Route::resource('profile', '\App\Http\Controllers\Mahasiswa\ProfilController');
    // Route::get('/edit-profile', function(){
    //     return view('pages.edit-profil');
    // });
    Route::resource('ukmpoliwangi', '\App\Http\Controllers\Mahasiswa\UkmpoliwangiController');
    Route::resource('recruitment', '\App\Http\Controllers\Mahasiswa\RecruitmentController');
    Route::resource('event', EventController::class);
});
// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
