<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    //
	protected $fillable = ['name', 'description', 'price','quantity', 'likes', 'availability'];
	
    public function logProducts()
    {
        return $this->hasMany('App\LogProduct');
    }

    public function purchaseOrders()
    {
        return $this->hasMany('App\PurchaseOrder');
    }
}
