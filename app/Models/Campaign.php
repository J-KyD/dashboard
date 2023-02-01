<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class Campaign extends Model
{

    use HasFactory;

    public static function create($employeeid,$projectid){
        $campaign = new campaign();

        $campaign->employee_id = $employeeid;
        $campaign->project_id = $projectid;
        $campaign->save();
    
        return $campaign;
    }

}
