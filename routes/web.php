<?php

use Facade\FlareClient\View;
use App\Http\Middleware\IsAdmin;
use App\Http\Middleware\IsMahasiswa;
use App\Http\Middleware\IsUKM;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ChangePasswordController;
use App\Http\Controllers\Mahasiswa\EventController;
use App\Http\Controllers\Admin\UkmpoliwangiController;
use App\Http\Controllers\Admin\KeanggotaanController;
use App\Http\Controllers\Admin\DevisiController;
use App\Http\Controllers\SuperAdmin\ListUKMController;
use App\Http\Controllers\SuperAdmin\ManagementUserController;
use App\Http\Controllers\Mahasiswa\ProfilController;
use App\Http\Controllers\Mahasiswa\UkmpoliwangiController as MahasiswaUkmpoliwangiController;

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
Route::get('/cetak', function(){
    return view('pages.mahasiswa.sertifikat');
});

Route::get('/', function () {
    return view('auth.login');
});

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
Route::get('/API', [DashboardController::class, 'API']);
Route::get('/update_angkatan_anggota', [DashboardController::class, 'update_angkatan_anggota']);
Route::resource('/change_password', ChangePasswordController::class);

Route::middleware([IsUKM::class])
->prefix('admin')
->group(function() {
    // Route::get('profile', function(){
    //     return view('pages.profil');
    // });
    // Route::get('/edit-profile', function(){
    //     return view('pages.edit-profil');
    // });    
    Route::resource('keanggotaan', KeanggotaanController::class);
    Route::resource('devisi', DevisiController::class);
    Route::resource('ukm-poliwangi', UkmpoliwangiController::class);
    Route::resource('pendaftaran', '\App\Http\Controllers\Admin\PendaftaranController');
    Route::resource('kegiatan', '\App\Http\Controllers\Admin\KegiatanController');
    Route::resource('list_mahasiswa_join_event', '\App\Http\Controllers\Admin\ListMahasiswaJoinEvent');
    
});
Route::middleware([IsAdmin::class])
// ->prefix(['robotika','rbb', 'geniwangi' ,'olahraga','kwu','racana','persma','imam','mapala','ksr','menwa'])
->prefix('super_admin')
->group(function() {
    // Route::get('profile', function(){
    //     return view('pages.profil');
    // });
    // Route::get('/edit-profile', function(){
    //     return view('pages.edit-profil');
    // });    
    Route::resource('list-ukm', ListUKMController::class);
    Route::resource('management-user', ManagementUserController::class);
    // Route::resource('list-ukm', ListUKMController::class);
    // Route::resource('pendaftaran', '\App\Http\Controllers\Admin\PendaftaranController');
    // Route::resource('kegiatan', '\App\Http\Controllers\Admin\KegiatanController');
    
});
Route::middleware([IsMahasiswa::class])
->prefix('mahasiswa')
->group(function() {

    Route::resource('profile', ProfilController::class);
    // Route::get('/cetak', function(){
    //     return view('pages.mahasiswa.sertifikat');
    // });
    Route::resource('info-ukm', MahasiswaUkmpoliwangiController::class);
    Route::resource('recruitment', '\App\Http\Controllers\Mahasiswa\RecruitmentController');

    Route::get('/recruitment/cetak/{id}', '\App\Http\Controllers\Mahasiswa\RecruitmentController@pdf')->name('cetak');


    Route::resource('event', EventController::class);
});
// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');


require __DIR__.'/auth.php';
