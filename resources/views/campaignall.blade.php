@extends('form2')
@section('contents')
<div class="main-contents" >

      
@php
use App\Models\allProjects;
use App\Models\Employee;
use App\Models\Roles;
use App\Models\Campaign;
@endphp
        <style>
            h1{
                 text-align: center;
              }
        </style>
@foreach ($data as $datas)
@php

$products = allProjects::find($datas->project_id);
$spaced_word = implode(" ",  str_split ($products->project_name));

@endphp
@endforeach
<H1> {{$spaced_word }} </H1>



              <ul class="nav nav-tabs" id="myTab" role="tablist" style="padding-left: 70px">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true"> Employee per Campaign</button>
                </li>
                @if(Auth::check())
                @if( session('type') == "admin" )
                                
             
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add</button>
                </li>
                @endif 
                @endif
              </ul> 
                <div class="tab-content" id="myTabContent" style="padding-left: 70px">
                  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> <div class="activity-card">
    
                    <table class="table table-striped" style="margin-top:20px;" id="table">
                      <thead style="background-color: #171742;">
                        <tr>
                          <th id="center">Name</th>
                          <th id="center">Employee No.</th>
                          <th id="center">Hire Date</th>
                          <th id="center">Contact Number</th>

                          @if( session('type') == "admin" || session('type') == "leader")
                          <th id="center">Birthdate</th>
                          @endif

                          <th id="center">Project Name</th>
                          <th id="center">Designation</th>
                          <th id="center">Tenure</th>
                          <th id="center">Total IT Exp</th>
                          <th id="center">Status</th>

 @if(Auth::check())
 @if( session('type') == "admin" )
                          <th>Action</th>
 @endif 

                          </tr>
                          </thead>
                          <tbody>
                            <tr>
 @foreach ($data as $datas)
 @php
 $employee = Employee::where('id', $datas->employee_id)->get();
 @endphp
 @foreach ($employee as $employee)
        
  
                              <td class="DATA">{{ $employee->name }}</td>

                              <td class="DATA">{{ $employee->employee_number }}</td>

                              <td class="DATA">{{ $employee->hire_date }}</td>

                              <td class="DATA">{{ $employee->contact }}</td>
                              
                              @if( session('type') == "admin"||session('type') == "leader" )
                              <td class="DATA">{{ $employee->birthdate }}</td>
                              @endif

@php
$products = allProjects::where('id', $datas->project_id)->get();

@endphp
@foreach ($products as $item)

                              <td class="DATA">{{ $item->project_name }}</td>

@endforeach
         
@php
$roles = Roles::where('id', $employee->role_id)->get();      
@endphp
@foreach ($roles as $roles)
     
                              <td class="DATA">{{ $roles->role_name }}</td>
  
@endforeach
                              <td class="DATA">{{ $employee->tenure }}</td>
                              <td class="DATA">{{ $employee->total_it_exp }}</td>
                              <td class="DATA">{{ $employee->project_status }}</td>   
                               @include('employee_modal')         
@if( session('type') == "admin" )

                              <td>
                                  <a href="#editEmployee{{ $datas->id }}" class="btn btn-success" data-bs-toggle="modal" style="width:90px;"><i class="fa fa-edit">
                                     </i> Edit</a>
                              <form method="post" action ="deleteemployee">
                                @csrf
                                   <input style="text-align: center;" type="text" name="idcamp" value="{{ $datas->id }}" hidden>
                                   <input style="text-align: center;" type="text" name="idemp" value="{{ $employee->id }}" hidden>
                                   <button class="btn btn-danger" type="submit" style="margin-top: 10px;white-space: nowrap;font-size: 1rem;background-color:#dc3545;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-trash">
                                  </i>delete</button>
                              </form>
                              </td>
@endif
@endforeach
                            </tr>
@endforeach
@endif 
                          </tbody>
                        </table>

                  </div>
                  </div>
                


                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"><style>
                          .cascading-right {
                          margin-right: -50px;
                          }
                        
                          @media (max-width: 991.98px) {
                          .cascading-right {
                            margin-right: 0;
                          }
                          }
                        </style>
                   
<div class="card-container py-4">
  <div class="row g-0 align-items-center">
  <div class="col-lg-12 mb-10 mb-lg-0">
    <div class="card" style="
      background: hsla(0, 0%, 100%, 0.55);
      backdrop-filter: blur(30px);
      ">
    <div class="card-body p-5 shadow-5 text-center" id="addcampaign">
  
      <form method="POST" action="/addemployee">
      @csrf
      <!-- 2 column grid layout with text inputs for the first and last names -->
    <div class="row">   
      <div class="col-md-8 " style="margin-left: 15%">
   
      
      <div class="row">

        <div class="col-md-6  ">    
        <input style="text-align: center;" type="text" name='name' id="form3Example1" class="form-control" />
        <label class="form-label" for="form3Example1">Name</label>
        </div>
                  <div class="col-md-6">            
              <input style="text-align: center;" type="text" name='employeenumber'id="form3Example2" class="form-control" />
              <label class="form-label" for="form3Example2">Employee No.</label>
            </div>
      
            <div class="col-md-6">
              
             
            @php
            $roles = Roles::all();
       
            @endphp
        <select name="designation" id="" class="form-control" >
            <option value="0">Select position</option>
            @foreach ($roles as $role)
                <option value="{{ $role->id }}">{{ $role->role_name }}</option>
            @endforeach
           
          </select>
          <label class="form-label" for="form3Example2">Designation</label>
         
              </div>
           
            <div class="col-md-6">
            
              <input style="text-align: center;" type="text" name='hiredate' id="form3Example3" class="form-control" />
              <label class="form-label" for="form3Example3">Hire Date</label>
            </div>
        

            <div class="col-md-6">
            <input style="text-align: center;" type="text" name='contactnumber' id="form3Example4" class="form-control" />
            <label class="form-label" for="form3Example4">Contact Number</label>
          </div>
          <div class="col-md-6">
            <input style="text-align: center;" type="text" name='birthdate' id="form3Example5" class="form-control" placeholder="M/D/Y"/>
            <label class="form-label" for="form3Example5">Birthdate</label>
          </div>
          <div class="col-md-6">
                
            <input style="text-align: center;" type="text" name='totalit' id="form3Example9" class="form-control" />
            <label class="form-label" for="form3Example9">Total IT Exp</label>
          </div>
    
  
         

                <div class="col-md-6">
                
                  <input style="text-align: center;" type="text" name='tenure'id="form3Example8" class="form-control" />
                  <label class="form-label" for="form3Example8">Tenure</label>
                </div>
        
                <div class="col-md-12">
                  @foreach ($data as $datas)
                  @php
                  $products = allProjects::find($datas->project_id);
                  
                  @endphp
                  @endforeach
                  
                    <input style="text-align: center;" type="text" name='project' id="form3Example6" class="form-control" value="{{ $products->id }}" placeholder="" hidden/>
                  
                    <input style="text-align: center;" type="text" name='' id="form3Example6" class="form-control" value="{{ $products->project_name }}" placeholder="" disabled/>
                    <label class="form-label" for="form3Example6">Project Name</label>
                  </div>
           
      </div>
      </div>
    </div>
              <button type="submit" class="btn btn-primary btn-block" style="width: 200px; margin-left:42.5%; margin-top: 20px;">
                Add Employee
              </button>
      @if(session('status'))
      <div class="alert alert-success">
        {{ session('status') }}
      </div>
      @endif 
      </form>
    </div>
    </div>
  </div>
  </div>
</div>
<!-- Jumbotron -->

</div>
  </div>
</div>
@endsection


