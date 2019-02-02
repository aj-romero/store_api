<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogProduct extends Model
{
    protected $fillable = ['old_price','new_price'];

   public function products()
    	{
    		return $this->belongsTo('App\Product');
    	}
}
