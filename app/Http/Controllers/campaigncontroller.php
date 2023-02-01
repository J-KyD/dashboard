<?php

namespace App\Http\Controllers;
use App\Models\Campaign;
use App\Models\allProjects;
use App\Models\Employee;
use App\Models\Roles;
use App\Models\User;
use Hash, Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\Welcome;
use Dompdf\Dompdf;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Support\Facades\DB;

class UsersExport implements FromCollection
{
    public function collection()
    {
        return User::where('type','user')->get();
    }
}

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

 function generatePDF()
{
    $data = User::where('type','admin')->get();

    if (!$data) {
        return 'No data found';
    }
    $pdf = new Dompdf();
 
    $pdf->loadHTML($this->getHTML($data));
    $pdf->render();
    $pdf->stream();
}
public function getHTML($data)
{
    $output = '
        <table >
            <thead>
                <tr >
                    <th style ="border: 2px solid black;">Column 1</th>
                    <th style ="border: 2px solid black;">Column 2</th>
                    <th style ="border: 2px solid black;">Column 3</th>
                </tr>
            </thead>
            <tbody>';

    foreach ($data as $row) {
        $output .= '
            <tr>
                <td style ="border: 2px solid black;">'.$row->name.'</td>
                <td style ="border: 2px solid black;">'.$row->employee_number.'</td>
                <td style ="border: 2px solid black;">'.$row->type.'</td>
            </tr>';
    }

    $output .= '
            </tbody>
        </table>';

    return $output;
}


public function export() 
{

    return Excel::download(new UsersExport, 'users.xlsx');
}


}



