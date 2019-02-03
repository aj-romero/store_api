<?php

use Illuminate\Http\Request;

/**
**Basic Routes for a RESTful service:
**Route::get($uri, $callback);
**Route::post($uri, $callback);
**Route::put($uri, $callback);
**Route::delete($uri, $callback);
**
*/
Route::post('login', 'AuthController@login');
Route::post('signup', 'AuthController@signup');

Route::group(['middleware' => 'auth:api'], function() {
                Route::get('logout', 'AuthController@logout');			
                Route::get('user', 'AuthController@user');
                Route::post('products','ProductsController@store');//** This route for add products */
                Route::delete('products/{product}', 'ProductsController@delete');/**This route for delete products. */
                Route::put('products/{product}','ProductsController@update');/**This route for update */
                Route::put('products/{product}/like','ProductsController@setLike'); /**route for set like to product */
                Route::post('purchaseorders','PurchaseOrdersController@store'); /** Buy a product, this get the user and log the product */
  });

Route::get('products', 'ProductsController@index');
Route::get('products/{product}', 'ProductsController@show');
Route::get('purchaseorders/list', 'PurchaseOrdersController@list');