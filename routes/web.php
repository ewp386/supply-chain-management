<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PerusahaanController;
use App\Models\Perusahaan;
use App\Http\Controllers\LoginController;
use App\Models\Login;
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
    $jumlahperusahaan = Perusahaan::count();
    return view('welcome',compact('jumlahperusahaan'));
});

//Perusahaan
Route::get('/perusahaan',[PerusahaanController::class, 'index'])->name('perusahaan')->middleware('auth');
Route::get('/tambahperusahaan',[PerusahaanController::class, 'tambahperusahaan'])->name('tambahperusahaan');
Route::post('/insertdata',[PerusahaanController::class, 'insertdata'])->name('insertdata');

Route::get('/tampilkandata/{id}',[PerusahaanController::class, 'tampilkandata'])->name('tampilkandata');
Route::post('/updatedata/{id}',[PerusahaanController::class, 'updatedata'])->name('updatedata');
Route::get('/delete/{id}',[PerusahaanController::class, 'delete'])->name('delete');

Route::get('/login',[LoginController::class, 'login'])->name('login');
Route::post('/loginproses',[LoginController::class, 'loginproses'])->name('loginproses');

Route::get('/register',[LoginController::class, 'register'])->name('register');
Route::post('/registeruser',[LoginController::class, 'registeruser'])->name('registeruser');

Route::get('/logout',[LoginController::class, 'logout'])->name('logout');