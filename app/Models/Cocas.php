<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cocas extends Model
{
    use HasFactory;

    public static function create($date, $services, $location, $po_number, $vendor, $address, $completion_date)
    {
        $coca = new Cocas();

        $coca->date = $date;
        $coca->services = $services;
        $coca->location = $location;
        $coca->po_number = $po_number;
        $coca->vendor = $vendor;
        $coca->address = $address;
        $coca->completion_date = $completion_date;
        $coca->save();

        return $coca;
    }
}
