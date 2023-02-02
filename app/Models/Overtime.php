<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Overtime extends Model
{
    use HasFactory;
    public static function create($name_of_campaign,$employee_name,$number_of_hours,$billable_amount,$billing_address,$activity){
        $overtime = new Overtime();
    
        $overtime->name_of_campaign=$name_of_campaign;
        $overtime->employee_name=$employee_name;
        $overtime->number_of_hours = $number_of_hours;
        $overtime->billable_amount=$billable_amount;
        $overtime->billing_address=$billing_address;
        $overtime->activity=$activity;
   
        $overtime->save();
    
        return $overtime;
    }
}
