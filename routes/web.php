<?php

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
//Frontend Route
route::get('/', 'FrontendController@index')->name('home');
Route::get('/cart', 'FrontendController@cart')->name('cart');
Route::get('/checkout', 'FrontendController@showCheckOut')->name('checkout');
Route::post('/checkout', 'OrderController@order')->name('order');
route::get('/collections', 'FrontendController@shop')->name('shop');

route::get('/collections/{slug}', 'FrontendController@productCat')->name('product-cat');
route::get('/product/{slug}', 'FrontendController@productDetail')->name('product-detail');
route::post('/product/search', 'FrontendController@autoSearch')->name('auto-search');
route::get('/search', 'FrontendController@productSearch')->name('product-search');

//Cart
Route::post('/cart/update', 'CartController@update')->name('update-cart');
route::post('/cart/store', 'CartController@store')->name('add-cart');
route::delete('/cart/delete', 'CartController@delete')->name('delete-cart');
//user
Route::prefix('user')->group(function () {
    route::get('/register', 'FrontendController@showRegisterForm')->name('user.register');
    Route::get('/login', 'FrontendController@showLoginForm')->name('user.login');
    route::post('/register', 'FrontendController@register')->name('user.register.submit');
    Route::post('/login', 'FrontendController@login')->name('user.login.submit');
    Route::group(['middleware' => ['is_user']], function () {
        Route::get('/logout', 'FrontendController@logout')->name('user.logout');
        route::get('/dashboard', 'FrontendController@getUserDashboard')->name('user.dashboard');
        route::get('/address', 'FrontendController@getUserAddress')->name('user.address');
        route::get('/order', 'FrontendController@getUserOrders')->name('user.orders');
        route::get('/address-edit', 'FrontendController@getUserAddressEdit')->name('user.address-edit');
    });
});

//backend Route

Route::prefix('admin')->group(function () {
    Route::get('/login', 'AdminController@showLoginForm')->name('admin.login');
    Route::post('/login', 'AdminController@login')->name('admin.login.submit');
    Route::group(['middleware' => ['is_admin']], function () {
        Route::get('/logout', 'AdminController@logout')->name('logout');
        //dashboard
        route::get('/', 'AdminController@index')->name('admin');

        //banner route
        route::resource('/banner', 'BannerController');
        route::post('bannerStatus', 'BannerController@status')->name('banner.status');
        //category route
        route::resource('/category', 'CategoryController');
        route::post('categoryStatus', 'CategoryController@status')->name('category.status');

        route::post('getChild', 'CategoryController@getChildByParentId')->name('category.getChild');
        //Brand route
        route::resource('/brand', 'BrandController');
        route::post('brandStatus', 'BrandController@status')->name('brand.status');
        //Product route
        route::resource('/product', 'ProductController');
        route::post('productStatus', 'ProductController@status')->name('product.status');
        //Coupon route
        route::resource('/coupon', 'CouponController');
        route::post('couponStatus', 'CouponController@status')->name('coupon.status');
        //order route
        route::resource('/order', 'OrderController');
        route::post('orderStatus', 'OrderController@status')->name('order.status');
    });
});





Route::group(['prefix' => 'laravel-filemanager'], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});