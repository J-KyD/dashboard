<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\user as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Hash;
class user extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    public static function create($name,$employee_number,$password,$type){
        $user = new user();
    
        $user->name=$name;
        $user->employee_number=$employee_number;    
        $user->password=Hash::make($password);
        $user->type=$type;
      
        $user->save();
    
        return $user;
    }
  
    protected $fillable = [
        'name',
        'employee_number',
        'type',
        'password',
        'status',
    ];

    
}
