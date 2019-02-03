<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PurchaseOrder extends Model
{
    //
    protected $fillable = ['quantity','price'];

    public function product()
         {
             return $this->belongsTo('App\Product');
         }
    public function user()
         {
             return $this->belongsTo('App\User');
         }
}
