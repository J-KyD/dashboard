<?php

namespace App\Http\Controllers;
use App\Exports\OvertimeExport;
use App\Models\Campaign;
use App\Models\allProjects;
use App\Models\Cocas;
use App\Models\Accomplishments;
use App\Models\Employee;
use App\Models\User;
use Hash, Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\Welcome;
use Dompdf\Dompdf;
use Dompdf\Options;
use App\Models\Overtime;
use App;



class campaigncontroller extends Controller
{
    
    // All Projects/ Campaign

    function allProjectsUser(){
        $client= allProjects::get(); 
        return view('userdashboard',['data'=>$client]);
    }

    function campaignAll(Request $request){
        $campaign=Campaign::where('project_id',$request->id)->get();
        
      
        return view('campaignall',['data'=>$campaign]);
        
        
    }
    function deleteEmployee(Request $request){
        $campaign=Campaign::find($request->idcamp);
        $employee = Employee::find($request->idemp);
        $campaign->delete();
        $employee->delete();
   
        
      
        return back()->with("Delete successfully");
        
    }
    function deleteAccount(Request $request){
        $Account=User::find($request->iddeluser);
        $Account->delete();
   
        
      
        return back()->with("Delete successfully");
        
    }
    // Display Admin Accounts

    function allAdmin(){
        $client= User::where('type','admin')->get(); 
        return view('adminaccounts',['data'=>$client]);
    }
    function allUser(){
        
        $client=User::where('type','user')->get();
    
    
        return view('useraccounts',['data'=>$client]);
       
    }
    
    function overtime(Request $request){
        
         $project = allProjects::where('team_leader',session('name'))->get();
     
         if($project){
            $over = Overtime::where('name_of_campaign', $request->campaign)->get()->first();
         $overtime=Overtime::where('name_of_campaign',$request->campaign)->get();
         $campaign=Overtime::all();
     
     
        $all = ['overtime' => $overtime, 'project' => $project,'over'=>$over,'campaign' => $campaign];
        return view('overtime',['data'=>$all]);
       
    }
    else{
        return view('overtime',['data'=>$project]);
    }
  
    }
    
 

    function addOvertime(Request $request){
        Overtime::create($request->name,$request->employee,$request->hours,$request->amount,$request->address,$request->activity);

        return back()->with('status', 'Successfully added');
         
    }

  
    function uploadImage(Request $request){
        if($request->type =='0'||$request->title == ''){
            return back()->with('status', 'Empty / invalid fields');
        }
        elseif($request->description !="" && $request->file('image') == null){
            $photo = new Welcome;
            $photo->description = $request->description;
            $photo->type = $request->type;
            $photo->picture = 'none';
            $photo->title = $request->title;
            $photo->save();
            return back()->with('status', 'Succesfully Added');
        }
        elseif($request->file('image')!= null && $request->description == ""){
            $name = $request->file('image')->getClientOriginalName();
            $file = request()->file('image');
            $file->storeAS('toPath/', $name, ['disk' => 'my_files']);

            $photo = new Welcome;
            $photo->description = 'none';
            $photo->type = $request->type;
            $photo->picture = $name;
            $photo->title = $request->title;
            $photo->save();
            return back()->with('status', 'Succesfully Added');
        }
        else {
            $name = $request->file('image')->getClientOriginalName();
            $file = request()->file('image');
            $file->storeAS('toPath/', $name, ['disk' => 'my_files']);

            $photo = new Welcome;
            $photo->description = $request->description;
            $photo->type = $request->type;
            $photo->picture = $name;
            $photo->title = $request->title;
            $photo->save();
            return back()->with('status', 'Succesfully Added');
        }
       
 
    }

    function updateAnnounce(Request $request){
        $client =Welcome::find($request->uid);
        
        if($request->description ==""&& $request->file('image')== null  )
        {
            return back()->with('status','Invalid / empty fields.');
        }
        elseif($request->type =="0" ||$request->title ==""){
            return back()->with('status','Invalid / empty fields');
   
        }
        elseif($request->description !="" && $request->file('image') == null){
          
            $client ->description = $request->description;
            $client ->type = $request->type;
            $client ->picture = 'none';
            $client->title = $request->title;
            $client ->save();
            return back()->with('status', 'Succesfully Added');
        }
        elseif($request->file('image')!= null && $request->description == ""){
            $name = $request->file('image')->getClientOriginalName();
            $file = request()->file('image');
            $file->storeAS('toPath/', $name, ['disk' => 'my_files']);

            
            $client ->description = 'none';
            $client ->type = $request->type;
            $client ->picture = $name;
            $client->title = $request->title;
            $client ->save();
            return back()->with('status', 'Succesfully Added');
        }
        else{
            $name = $request->file('image')->getClientOriginalName();
            $file = request()->file('image');
            $file->storeAS('toPath/', $name, ['disk' => 'my_files']);

            $client->description = $request->description;
            $client->picture = $name;
            $client->type = $request->type;
            $client->title = $request->title;
        
            $client->save();
          
           return back()->with('status',"update successfully");
            
        }
    }
    function deleteAnnounce(Request $request){
        $Account=Welcome::find($request->iddelannounce);
        $Account->delete();
    
        
      
        return back()->with('status',"Delete successfully");
        
    
    }

    function welcome(){
     
      
        $date = date('m/d');
        $announcement = Welcome::where('type','announcement')->get();
        
        $holiday = Welcome::where('type', 'holiday')->get();
        $birthday = Employee::where('birthdate','like',$date.'%')->get();
        $employee = Employee::all()->count();
        $Projects = allProjects::all()->count();
     
      
        $data = ['birthday' => $birthday, 'employee' => $employee,'projects'=>$Projects, 'announcement' =>$announcement,'holiday'=>$holiday];
        return view('welcome')->with('data', $data);
    }
    function getAnnouncement(){
        $welcome=Welcome::all();
        return view('announcement', ['data' => $welcome]);
    }

    //show birthdays


    // Update Campaign//

    function updateProject(Request $request){
        $client =allprojects::find($request->uid);
        
        if($request->name ==""||$request->leader=="" || $request->status =="0" )
        {
            return back()->with('status','Invalid / empty fields.');
        }
        else{
            $client->project_name = $request->name;
            $client->team_leader = $request->leader;
            $client->project_status = $request->status;
        
            $client->save();
          
           return back()->with('status',"update successfully");
            
        }

}
function deleteProject(Request $request){
    $campaign = Campaign::where('project_id',$request->iddelproj)->get();
      foreach($campaign as $campaign){
        $campaign->delete();
        $employee = Employee::where('id', $campaign->employee_id)->get();
        foreach($employee as $employee){
          $employee->delete();
        }
      }


    $Account=allProjects::find($request->iddelproj);
  

    $Account->delete();

    
  
    return back()->with('status',"Delete successfully");
    
}


function updateAccount(Request $request){
    $client =User::find($request->accid);
  
    if($request->name =="" || $request->employeenumber == "" || $request->status =="0" || $request->type =="0")
    {
        return back()->with('status','Invalid / empty fields.');
    }
    else{
        $client->name = $request->name;
        $client->employee_number = $request->employeenumber;
        $client->status = $request->status;
        $client->type = $request->type;
        
        $client->save();
        
        return back()->with('status',"update successfully");
        
    }


}

//update password



      // Update Employee//

  function updateEmployee(Request $request){
    $client =Employee::find($request->uid);
  

if($client){
$client->name= $request->name;
$client->employee_number= $request->employeenumber;
$client->hire_date = $request->hiredate;
$client->contact = $request->contact;
$client->birthdate = $request->birthdate;
$client->tenure = $request->tenure;
$client->total_it_exp = $request->totalit ;
$client->status = $request->status;

$client->save();

return back()->with("update successfully");
}
}

//Function for COCA
public function addCoca(request $request)
{
    Cocas::create($request->date, $request->services, $request->location, $request->po_number, $request->vendor, $request->address, $request->completion_date);
    return back()->with('status', "update successfully");
}

public function showCoca(request $request)
{
    $allCoca = Cocas::all();
    return view("coca", ["data" => $allCoca]);

}

function updateCoca(Request $request)
{
    $coca = Cocas::find($request->uid);

    if ($coca) {
        $coca->date = $request->date;
        $coca->services = $request->services;
        $coca->location = $request->location;
        $coca->po_number = $request->po_number;
        $coca->vendor = $request->vendor;
        $coca->address = $request->address;
        $coca->completion_date = $request->completion_date;
        $coca->save();
        return back()->with("update successfully");
    }
}

function deleteCoca(Request $request)
{
    $coca = Cocas::find($request->uid);
    $coca->delete();
    return back()->with("delete successfully");
}

//function for Accomplishement
function showAccomplishment(Request $request)
{
    $id = $request->query('uid');
    $accomplishment = Accomplishments::where('coca_id', $id)->get();
    $count = Accomplishments::where('coca_id', $id)->count();
    if($count > 0){
        return view('accomplishment', ['data' => $accomplishment, 'request' => $request]);
    }else{
        return view("accomplishment", ['data' => "no task is set.", 'request' => $request]);
    }
}
public function addAccomplishment(Request $request)
{
    Accomplishments::create($request->task, $request->accomplishment, $request->status, $request->uid);
    $accomplishment = Accomplishments::where('coca_id', $request->uid)->get();
    $count = Accomplishments::where('coca_id', $request->uid)->count();
    if($count > 0){
        return view('accomplishment', ['data' => $accomplishment, 'request' => $request]);
    }else{
        return view("accomplishment", ['data' => "no task is set.", 'request' => $request]);
    }
}

function updateAccomplishment(Request $request)
{
    $accomplishment = Accomplishments::find($request->uid);

    if ($accomplishment) {
        $accomplishment->task = $request->task;
        $accomplishment->accomplishment = $request->accomplishment;
        $accomplishment->task = $request->status;            
        $accomplishment->save();
        return back()->with("update successfully");
    }
}

    // Add Campaign //

    function addProject(Request $request){
        if($request->campaign =="" || $request->leader =="" ||$request->type =="0" )
        {
            return back()->with('status','Invalid empty fields.');
        }
        else{
            $randomString = Str::random(5);
            $number = $randomString;
            $name = 'try';
            $desination = random_int(1,56);
            $hiredate = 'try';
            $contact = 'try';
            $birth = date('m/d/y');
            $tenure = 'try';
            $exp = 'try';

          
            allprojects::create($request->campaign,$request->leader,$request->type);
            $project = allProjects::where('project_name', $request->campaign)->get()->first();
     
       
            Employee::create($number,$name,$desination,$hiredate,$contact,$birth,$tenure,$exp);
            $employee= Employee::where('employee_number', $number)->get()->first();
           
            Campaign::create($employee->id,$project->id);
       
            
            return back()->with('status','Campaign Added.');
        }
    }

    //Delete Campaign //

    function deletecampaign(Request $request){
        
        $client =allProjects::find($request->did);
        
   if($client){

    $client->status = $request->delete;

    $client->save();
    return back()->with("update successfully");
    

   }
   else{
    return back()->with("failed");
   }
    }


    //Add Employee//

    function addemployee(Request $request){
        if($request->name =="" || $request->employeenumber =="" ||$request->hiredate ==""||$request->contactnumber ==""||$request->birthdate ==""||$request->project ==""||$request->designation =="0"||$request->tenure ==""||$request->totalit =="")
        {
            return back()->with('status','Invalid empty fields.');
        }
        else{
            $status = 'Active';
            
            Employee::create($request->employeenumber,$request->name,$request->designation,$request->hiredate,$request->contactnumber,$request->birthdate,$request->tenure,$request->totalit);
           $employee= Employee::where('employee_number', $request->employeenumber)->get()->first();
           
            Campaign::create($employee->id,$request->project);
            return back()->with('status','Campaign Added.');
        }
    }



    // Signup //

   
    //Admin Signup

    function adminsignup(Request $request){
      
           
            $user = User::create($request->name,$request->employee_number,$request->password,$request->type);
            return back()->with('status','Account Created.');
            
   
    }   
    function usersignup(Request $request){

            $user = User::create($request->name,$request->employee_number,$request->password,$request->type);
            return back()->with('status','Account Created.');
            
     
    }  



    //userlogin
    function userLogin(Request $request){ 
 
        $credential=[
          'employee_number' => $request->employee_number,
          'password' => $request->password
        ];

            
        $loginAttempt= Auth::attempt($credential);
        if( $loginAttempt){
          $request->session()->regenerate();
          $user = user::firstWhere('employee_number', $request->employee_number);
         session()->put('name', $user->name);
         session()->put('employee_number', $user->employee_number);
         session()->put('password', $user->password);
         session()->put('type', $user->type);
         session()->put('ids', $user->id);

         session()->save();
      
         if ($user->type == "admin") {
            return redirect('/landing');
          }
          elseif($user->type =="user"){
          
            return redirect('/landing');
          }
          elseif($user->type =="leader"){
          
            return redirect('/landing');
          }
      }
    
      elseif($request->employee_number == "" || $request->password ==""){
        return back()->with('status',"You need to input something");
      }
      else{
          return back()->with('status',"incorrect username or password");
      }
    }

//change
 function changePass(Request $request)
{
    $client =User::find($request->uid);
    if(Hash::check($request->old,$client->password)){
        if($request->new == $request->confirm){
            $client->password = Hash::make($request->new);
            $client->save();
            return back()->with('status',"update successfully");
             }
           else {
            return back()->with('status',"Confirm password and new password doesn't match");
           }
    }
    else{
        return back()->with("failed");
       }
}
function getLogOut(Request $request){
    Auth::logout();
    $request->session()->invalidate();
    return redirect('/')->with(['loginstatus' => 'Logged Out']);
}

 function generatePDF(Request $request)
{
    $data=User::find(session('ids'));
    

    if (!$data) {
        return 'No data found';
    }
    $options = new Options();
    $options->set('chroot', realpath(''));
    $pdf = new Dompdf($options);
    $pdf->loadHTML($this->getHTML($data));
    $pdf->render();
    $pdf->stream();
    $pdf->setPaper('A4', 'portrait');
}
public function getHTML($data)
{
        
    $output = '
    <style>
    td,
    th{
    border: 2px solid black;}
    </style>
        <table >
            <thead>
                <tr >
                    <th >Column 1</th>
                    <th >Column 2</th>
                    <th >Column 3</th>
                </tr>
            </thead>
            <tbody>';

   
        $output .= '
            <tr>
                <td >'.$data->name.'</td>
                <td >'.$data->employee_number.'</td>
                <td >'.$data->type.'</td>
                <img src="img/absicover.jpg" alt="logo" align="middle" style="height:100px; margin-left: auto; margin-right: auto">  </body>
       
            </tr>';
         
   

    $output .= '
            </tbody>
        </table>';

    return $output;
}

//COCA template v3

function generateCOCAtempV3()
{
    $data = Accomplishments::where('coca_id','3')->get();

    if (!$data) {
        return 'No data found';
    }
    $options = new Options();
    $options->set('chroot', realpath(''));

    $pdf = new Dompdf($options);

    $pdf->loadHTML($this->getPDF($data));
    $pdf->render();
    $pdf->stream();
    $pdf->setPaper('A4', 'portrait');
}

public function getPDF($data)
{
    $output = '
    <div style="text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top: 1.31cm">
        <b style="font-size: 15pt;">CERTIFICATE OF COMPLETION and ACCOMPLISHMENT</b>
        <p></p>
    </div>
    
    <div style="font-family:Arial, Helvetica, sans-serif; display:flex; justify-content:center; flex-direction:column; margin: 0 1cm 0.49cm 1.4cm">

    <table style="font-size: 10pt; font-weight:bold; border-bottom: 1px solid black;">
        <tr>
            <td style="width:150px;">DATE</td>
            <td>:</td>
            <td>JANUARY 2023</td>
        </tr>
        <tr>
            <td>SERVICES/ PROJECT</td>
            <td>:</td>
            <td>ITG UnionBank Project Alpha</td>
        </tr>
        <tr>
            <td>LOCATION</td>
            <td>:</td>
            <td>Renaissance Tower 29 Meralco Avenue, The Renaissance Center, Pasig</td>
        </tr>
        <tr>
            <td>OWNER</td>
            <td>:</td>
            <td>UNIONBANK</td>
        </tr>
    </table>

    <table style="font-size: 10pt; font-weight:bold; border-bottom: 1px solid black; margin-bottom:25px;">
        <tr>
            <td style="width:150px;">P.O. #</td>
            <td>:</td>
            <td>P.O. # HERE</td>
        </tr>

        <tr>
            <td>VENDOR</td>
            <td>:</td>
            <td>Asti Business Services Inc.</td>
        </tr>
        <tr>
            <td>ADDRESS</td>
            <td>:</td>
            <td>234 Bayantel Building Roosevelt Avenue Quezon City </td>
        </tr>
        <tr>
            <td>COMPLETION DATE</td>
            <td>:</td>
            <td>JANUARY 25,2023</td>
        </tr>
    </table>

    <div style="margin-bottom:20px;">
        <ol style="margin-bottom:0cm;list-style-type: upper-roman;margin-left:44px;">
            <li><b>SCOPE OF WORK</b></li>
        </ol>
    </div>
    <p><b>ACCOMPLISHMENTS</b></p>
    <p style="text-indent:50px;">Please see the attach file for the Scope of work &ndash; Accomplishment Prior to Project
        Engagement</p>
    <p>The Vendor<b>, Asti Business Services Inc.&nbsp;</b> has delivered the above services in accordance with the
        agreed scope of works and other related Contract Documents.</p>
    <p>&lt;SCOPES AND STATUS&gt;</p>


    <table style="border: 1px solid black; border-collapse:collapse; margin-bottom: 50px; width:100%;">
        <thead>
            <tr style="border: 1px solid black;">
                <th style="border:solid windowtext 1.0pt; width:20%; background:#3C85C5; color: white;">Task</th>
                <th style="border:solid windowtext 1.0pt; width:60%; background:#3C85C5; color: white;">
                    Activity/Accomplishments</th>
                <th style="border:solid windowtext 1.0pt; width:20%; background:#3C85C5; color: white;">Status</th>
            </tr>
        </thead>
        <tbody>';

    foreach ($data as $row) {
        $output .= '
            <tr>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.$row->task.'</td>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.$row->accomplishment.'</td>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.$row->status.'</td>
            </tr>';
    }

    $output .= '
            </tbody>
        </table>
        
        <img src="img/client-11.jpg" alt="description of myimage" style="height:auto; width:5.68cm; margin-bottom:10px;">
        <br>
        <span style="font-size:8pt; margin-bottom: 50px;">The Globe Tower, 32nd St. cor. 7th Ave., Bonifacio Global City, Taguig City, Philippines</span>    


        <div style="margin-bottom:50px;">
        <ol style="margin-bottom:0cm;list-style-type: upper-roman;margin-left:44px;">
            <li><b>CERTIFICATION</b></li>
            <p>The Vendor certified that the Scope of Work involving delivery <b>&lt;CAMPAIGN NAME&gt;</b> has been
                delivered and made available and operational as required and provided for in the scope of works/Contract
                Documents.</p>
            <p> The Vendor likewise agrees to correct any defect associated with the delivery of the service within the
                contract period due to negligence or fault on the Vendor`s part.
                <div
                style="display:font-weight: bold;">
                    <div style="margin: 100px 0 50px 150px">
                        <div style="border-bottom: 1px solid black; width:200px; text-align:center;">RANEL OPLEDA</div>
                        <div>Service Delivery Manager</div>
                    </div>
                </div>
            <li><b>RECOMMENDATION</b></li>
            <p>Cognizant of the accomplishment by Vendor of the scope of work, we hereby confirm and recommend for the
                payment of this contract.</p>

            <table style="width:100%;border-collapse:collapse; margin-bottom: 50px">
                <tbody>
                    <tr>
                        <td style="width:25%;border: 1pt solid black;background: rgb(243, 243, 243);">
                            <p style="text-align:center;"><b>Sequence</b></p>
                        </td>
                        <td
                            style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">
                            <p style="text-align:center;"><b>Name</b></p>
                        </td>
                        <td
                            style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">
                            <p style="text-align:center;"><b>Role</b></p>
                        </td>
                        <td
                            style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">
                            <p style="text-align:center;"><b>Signature</b></p>
                        </td>
                    </tr>';

    foreach ($data as $row) {
        $output .= '
            <tr>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.'</td>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.'</td>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.'</td>
                <td style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">'.'</td>
            </tr>';
    }

    $output .= '                
            </tbody>
        </table>

            <li><b>ACCEPTANCE</b></li>
            <p>The Owner, Globe Telecom Inc, hereby accepts <b>Asti Business Services Inc.</b> and assumes full
                possession of the same.</p>
            <div style=""><span
                    style="border-bottom: 1px solid black; width:400px; text-align:center; margin-top: 50px;">
            </div>

            <div
            style="display:font-weight: bold;">
                <div style="margin: 100px 0 50px 50px; text-align:center;">
                    <div style="border-bottom: 1px solid black; width:400px; text-align:center; margin-top: 50px;"></div>
                </div>
            </div>
            </ol>
        </div>
    </div>';

    return $output;
}


public function export(Request $request) 
{
    $data =Overtime::where('name_of_campaign',$request->campaign)->get()->first();
    return Excel::download(new OvertimeExport($data),  'users.xlsx');
}


 //CRM Template 

 function generateglobe(Request $request)
 {
     $data = Overtime::where('name_of_campaign',$request->campaign)->get();
     $solo = Overtime::where('name_of_campaign',$request->campaign)->get();
     $get = ['many' => $data, 'solo' => $solo];
     if (!$data) {
         return 'No data found';
     }
     $options = new Options();
         $options->set('chroot', realpath(''));
 
     $pdf = new Dompdf($options);
  
     $pdf->loadHTML($this->getglobe($data));
     $pdf->render();
     $pdf->stream();
     $pdf->setPaper('A4', 'portrait');
    //  $pdf = App::make('dompdf.wrapper');
    //  $pdf->loadView('tryheader', ['data'=>$get]);
    //  $pdf->render();
    //  return $pdf->stream();
 }
 
 public function getglobe($data)
 {
      
    $count = Overtime::where('name_of_campaign', $data[0]->name_of_campaign)->count();
    $solo = Overtime::where('name_of_campaign', $data[0]->name_of_campaign)->get()->first();
   
    $activity = Overtime::where('name_of_campaign',$data[0]->name_of_campaign)->get();
    $name = Overtime::where('name_of_campaign',$data[0]->name_of_campaign)->get();
  
     $output = '
     
     <style>
       table,
       tr,
       th,
       td {
          border: 1px solid black;
          border-collapse: collapse;
       }
       .secondtable table,
       .secondtable tr,
       .secondtable th,
       .secondtable td {
         border:none;
         height: 45px;
       }
    </style>
     
     <div>
         <div>    
             <img src="assets/img/clients/asticomlogo.jpg" alt="image" style="float: right;"><br><br><br>
         </div>
         
         <div>
             <p style=" margin-top: 50px;"> This is to document the following additional services to be rendered by <b> Asticom Technology, Inc </b> (Service Provider) for <b> <u>Globe</u> <u>Telecom</u> </b>(Client) with following service details:</p>
         </div>
     
         <table>
            
             <tr>
                  <td style=" text-align: center;"><b>NAME OF CAMPAIGN</b></td>
                    dd($data);
                  <td style="width: 500px; height: 35px; "> &nbsp;'.$solo->name_of_campaign.'';
           
                  $output .='
                  </td>
              </tr>
 
               <tr>
                 <td style=" text-align: center;" ><b>EMPLOYEE NAME</b></td>
                 <td style="width: 500px; height: 35px; ">';

 
                 if($count != '1'){
                   
                        $output .= '
                                &nbsp; Refer to List of names under Activities
                              ';
         
                 }
                 else{
            foreach ($name as $name) {
                $output .= '
                    
                &nbsp; ' . $name->employee_name . ' 
                  ';
            }
                 }
                 $output .='</td>
               </tr>
     
               <tr>
                 <td style=" text-align: center;" ><b>NUMBER OF HOURS</b></td>
                 <td style="width: 500px; height: 35px; "></td>
               </tr>
     
               <tr>
                 <td style=" text-align: center;" ><b>BILLABLE AMOUNT</b></td>
                 <td style="width: 500px; height: 35px; "> </td>
               </tr>
     
               <tr>
                 <td style=" text-align: center;"><b>BILLING ADDRESSEE </b><br><span style="color: red;"><b>(ASTICOM to fill out and send back<br> prior to CLIENT approval) </b></span></td>
                 <td style="width: 500px; height: 35px; "> </td>
               </tr>
     
               <tr style="height: 35px;">
                 <td> </td>
                 <td style="width: 500px; height: 35px; "> </td>
               </tr>
     
               <tr style="height: 300px;">
                 <td style=" text-align: center;" ><b>ACTIVITY/IES</b></br>';


        if ($count != '1') {
            foreach ($data as $data) {
                $output .= '
                            ' . $data->employee_name.'</br>' . ' 
                            
                          ';
            }
        }

        else{
            $output .= '
            
          ';
        }

                
                 $output .='</td>
                 <td style="width: 500px; height: 200px; "> </br>';

        if ($count != '1') {

            foreach ($activity as $activity) {
                $output .= '
                &nbsp; ' . $activity->activity . '<br>' . ' 
                          ';
            }
        }

        else{
            foreach ($activity as $activity) {
                $output .= '
                &nbsp;' . $activity->activity  . ' 
                          ';
            }
        }
                 


                 $output .='</td>
               </tr>
         </table>
               <div>
                 <p>Both Service Provider and Client agree that the above services shall be billed through Statement of Account (SOA) to be issued for the period month ended<b> JANUARY </b> subject to the payment terms under the service engagement.</p>
             </div>
 
             <table class="secondtable" style="border:none;">
             <tr class="secondtable">
                 <td class="secondtable" style="width: 400px; height: 45px; " ><b>Sincerly:</b></td>
                 <td class="secondtable"><b>Conforme:</b></td>
               </tr>
               
               <tr class="secondtable">
                 <td class="secondtable" style="height: 45px;"><b>Asticom Technology, Inc:</b></td>
                 <td class="secondtable"><b>By: _________________</b></td>
               </tr>
     
               <tr class="secondtable">
                 <td class="secondtable">Client Service Manager _________________</td>
                 <td class="secondtable">By: _________________</td>
               </tr>
     
               <tr class="secondtable" >
                 <td class="secondtable">Date: _________________</td>
                 <td class="secondtable">Date: _________________</td>
               </tr>
              
           </table>
     
         <div style="color: gray;">
             <p>CONFIDENTIAL - PROPRIETARY <br> Unathorized disclosure internally or externally is prohibited</p>
         </div>    
 ';
 
     foreach ($data as $row) {
         
     }
 
     $output .= '
         </tbody>
         </table>';
 
     return $output;
 }

}



