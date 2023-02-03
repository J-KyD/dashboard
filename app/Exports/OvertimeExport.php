<?php

namespace App\Exports;

use App\Models\Overtime;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;


class OvertimeExport implements FromView, ShouldAutoSize
{

    use Exportable;
    private $data;
    private $solo;
 
    

public function __construct($data){

    $this->data = Overtime::where('name_of_campaign',$data->name_of_campaign)->get();
    $this->solo = Overtime::where('name_of_campaign',$data->name_of_campaign)->count();

}
    public function view() : View{
        $get = ['many' => $this->data, 'solo' => $this->solo];
        return view('tryheader',['data' =>$get]);
    }
}
