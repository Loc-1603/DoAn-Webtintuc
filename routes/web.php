<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoaiTinController;
use App\Http\Controllers\TheLoaiController;
use App\Http\Controllers\TinTucController;
use App\Http\Controllers\SlideController;
use App\Http\Controllers\AjaxController;

Route::get('/', [PagesController::class, 'getIndex']);
Route::get('loai-tin/{id}/{url}.html', [PagesController::class, 'getLoaiTin']);
Route::get('chi-tiet/{id}/{url}.html', [PagesController::class, 'getChiTiet'])->where(['url' => '[a-zA-z0-9\-\.]+']);
Route::get('gioi-thieu.html', [PagesController::class, 'getGoiThieu']);
Route::get('lien-he.html', [PagesController::class, 'getLienHe']);
Route::get('dang-nhap.html', [PagesController::class, 'getDangNhap']);
Route::post('dang-nhap.html', [PagesController::class, 'postDangNhap']);
Route::get('dangxuat.html', [PagesController::class, 'getDangXuat']);
Route::get('dang-ky.html', [PagesController::class, 'getDangKy']);
Route::post('dang-ky.html', [PagesController::class, 'postDangKy']);
Route::get('thong-tin-ca-nhan.html', [PagesController::class, 'getThongTin'])->middleware('userlogin');
Route::post('thong-tin-ca-nhan.html', [PagesController::class, 'postThongTin'])->middleware('userlogin');
Route::get('tim-kiem.html', [PagesController::class, 'getTimKiem']);
Route::post('tim-kiem.html', [PagesController::class, 'postTimKiem']);
Route::post('comment/{id}', [PagesController::class, 'postComment'])->middleware('userlogin');

Route::get('admin/login', [UserController::class, 'getLoginAd']);
Route::post('admin/login', [UserController::class, 'postLoginAd']);
Route::get('admin/logout', [UserController::class, 'getLogoutAd']);
Route::get('admin/', fn() => redirect('admin/user/danhsach'));

Route::prefix('admin')->middleware('adminlogin')->group(function () {
    Route::prefix('loaitin')->group(function () {
        Route::get('danhsach', [LoaiTinController::class, 'getDanhSach']);
        Route::get('them', [LoaiTinController::class, 'getThem']);
        Route::post('them', [LoaiTinController::class, 'postThem']);
        Route::get('sua/{id}', [LoaiTinController::class, 'getSua']);
        Route::post('sua/{id}', [LoaiTinController::class, 'postSua']);
        Route::get('xoa/{id}', [LoaiTinController::class, 'getXoa']);
    });

    Route::prefix('theloai')->group(function () {
        Route::get('danhsach', [TheLoaiController::class, 'getDanhSach']);
        Route::get('them', [TheLoaiController::class, 'getThem']);
        Route::post('them', [TheLoaiController::class, 'postThem']);
        Route::get('sua/{id}', [TheLoaiController::class, 'getSua']);
        Route::post('sua/{id}', [TheLoaiController::class, 'postSua']);
        Route::get('xoa/{id}', [TheLoaiController::class, 'getXoa']);
    });

    Route::prefix('tintuc')->group(function () {
        Route::get('danhsach', [TinTucController::class, 'getDanhSach']);
        Route::get('them', [TinTucController::class, 'getThem']);
        Route::post('them', [TinTucController::class, 'postThem']);
        Route::get('sua/{id}', [TinTucController::class, 'getSua']);
        Route::post('sua/{id}', [TinTucController::class, 'postSua']);
        Route::get('xoa/{id}', [TinTucController::class, 'getXoa']);
    });

    Route::prefix('user')->group(function () {
        Route::get('danhsach', [UserController::class, 'getDanhSach']);
        Route::get('them', [UserController::class, 'getThem']);
        Route::post('them', [UserController::class, 'postThem']);
        Route::get('sua/{id}', [UserController::class, 'getSua']);
        Route::post('sua/{id}', [UserController::class, 'postSua']);
        Route::get('xoa/{id}', [UserController::class, 'getXoa']);
    });

    Route::prefix('slide')->group(function () {
        Route::get('danhsach', [SlideController::class, 'getDanhSach']);
        Route::get('them', [SlideController::class, 'getThem']);
        Route::post('them', [SlideController::class, 'postThem']);
        Route::get('sua/{id}', [SlideController::class, 'getSua']);
        Route::post('sua/{id}', [SlideController::class, 'postSua']);
        Route::get('xoa/{id}', [SlideController::class, 'getXoa']);
    });

    Route::prefix('ajax')->group(function () {
        Route::get('loaitin/{id}', [AjaxController::class, 'getLoaiTin']);
    });
});
