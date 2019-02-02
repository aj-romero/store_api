<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

//Laravel - Passport
Use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        		'password', 'remember_token',
				];

    	public function roles()
    	{
    		return $this->belongsToMany('App\Role')->withTimestamps();
    	}

	public function authorizeRoles($roles)
	{
	    if ($this->hasAnyRole($roles)) {
	        return true;
	    }
	    abort(401, 'Esta acción no está autorizada.');

	    //return response()->json(['message' => 'Unauthorized'], 401);
	}

	public function hasAnyRole($roles)
	{
	    if (is_array($roles)) {
		        foreach ($roles as $role) {
		            if ($this->hasRole($role)) {
		                return true;
		            }
	        }
	    } else {
		        if ($this->hasRole($roles)) {
			            return true;
        	}
    	}
    	return false;
	}

	public function hasRole($role)
	{
	    if ($this->roles()->where('name', $role)->first()) {
	        return true;
	    }
	    return false;
	}

	public function purchaseOrders()
    {
        return $this->hasMany('App\PurchaseOrder');
    }
}
