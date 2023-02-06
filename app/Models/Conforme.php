<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Conforme extends Model
{
    use HasFactory;
    public static function create($name_of_campaign,$client_server_manager,$sincerely_date,$by1,$by2,$conforme_date){
        $conforme = new Conforme();
    
        $conforme->name_of_campaign=$name_of_campaign;
        $conforme->client_server_manager=$client_server_manager	;
        $conforme->sincerely_date = $sincerely_date;
        $conforme->by1=$by1;
        $conforme->by2=$by2;
        $conforme->conforme_date=$conforme_date;
   
        $conforme->save();
    
        return $conforme;
    }
}
