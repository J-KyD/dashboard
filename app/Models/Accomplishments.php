<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Accomplishments extends Model
{
    use HasFactory;
    public static function create($task, $accomplishment, $status, $coca_id)
    {
        $accomplishments = new Accomplishments();

        $accomplishments->task = $task;
        $accomplishments->accomplishment = $accomplishment;
        $accomplishments->status = $status;
        $accomplishments->coca_id = $coca_id;
        $accomplishments->save();

        return $accomplishments;

    }
}


