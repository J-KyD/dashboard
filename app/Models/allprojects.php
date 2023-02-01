<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class allprojects extends Model
{
    use HasFactory;

    public static function create($project_name,$team_leader,$project_status){
        $campaign = new allprojects();
    
        $campaign->project_name=$project_name;
        $campaign->team_leader=$team_leader;    
        $campaign->project_status=$project_status;
        $campaign->save();
    
        return $campaign;
    }




}
