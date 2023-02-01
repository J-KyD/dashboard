<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    public static function create($employee_number,$name,$role_id,$hire_date,$contact,$birthdate,$tenure,$total_it_exp){
        $employee = new Employee();
    
        $employee->name=$name;
        $employee->employee_number=$employee_number;
        $employee->role_id = $role_id;
        $employee->hire_date=$hire_date;
        $employee->contact=$contact;
        $employee->birthdate=$birthdate;
        $employee->$role_id;
        $employee->tenure=$tenure;
        $employee->total_it_exp=$total_it_exp;
       
        $employee->save();
    
        return $employee;
    }
}
