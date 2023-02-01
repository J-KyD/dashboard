@extends('form2')

@section('contents')
@php
use App\Models\allProjects;
use App\Models\Employee;
use App\Models\Campaign;
@endphp

<div class="main-content">

        
    <main>
        <h1 class="dash-title" style="color: #171742">Projects</h1>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Project</button>
          </li>
          @if(Auth::check())
          @if( session('type') == "admin" )
              
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add Project</button>
          </li>
          @endif
          @endif
     

            
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> <div class="activity-card">
            
                <table class="table table-striped" style="margin-top:20px;" id="table">
                  <thead style="background-color: #171742;">
                    <tr>
                      <th style="text-align: center">View</th>
                     
                      <th style="text-align: center">Name of Campaign</th>
                      <th style="text-align: center">Team Leader</th>
                      <th style="text-align: center">Total Number of Personnel</th>

                      <th style="text-align: center">Status</th>
                      
                      @if(Auth::check())
                      @if( session('type') == "admin" )
                      <th style="text-align: center">Action</th>

                    @endif
                    
                    </tr>

                  </thead>
         <tbody>
                          
          @foreach ($data as $datas )
                          <tr>
                              <td class="DATA"> <form action="campaignall">
                                <input type="text" name="id" value="{{ $datas->id }}" hidden>
                               <button type="submit" class="btn btn-primary" style="margin-top: 20px;margin-left:20px;"> Click to View Personnels</button>
                        
                            </form></td>  
                            <td class="DATA"> 
                          {{$datas->project_name}}</td>  
                              <td class="DATA">{{ $datas->team_leader}}</td>
                       
                   
                              @php
                              $products = Campaign::where('project_id', $datas->id)->count();
                          @endphp 
                          <td class="DATA">{{ $products}}</td>
                          <td class="DATA">{{ $datas->project_status}}</td>
                              @if( session('type') == "admin" )
                              <td>

                                <a href="#editclient{{ $datas->id }}" class="btn btn-success" data-bs-toggle="modal" style="width:90px;"><i class="fa fa-edit">
                             </i> Edit</a>
                             <form method="post" action ="deleteProject">
                              @csrf
                              
                                 <input style="text-align: center;" type="text" name="iddelproj" value="{{ $datas->id }}" hidden>
                                  <button class="btn btn-danger" type="submit" style="margin-top: 10px;white-space: nowrap;font-size: 1rem;background-color:#dc3545;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-trash">
                                  </i>delete</button>
                         
                            </form>
                                @include('modal')
                               
                             </td>
                             @endif
                          </tr>
          @endforeach
          @endif
                      </tbody>

                      @if(session('status'))
                      <div class="alert alert-success">
                        {{ session('status') }}
                      </div>
                      @endif
                        
                  </table>
                
            </div>
          </div>
            
            <!-- Jumbotron -->
            
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
            



<div class="card-body p-5 shadow-5 text-center">
      
<form action="addProject" method="post">
@csrf
<!-- Name Input-->
<div class="row">
<div class="col-md-12 mb-4" >
<div class="form-outline mb-6">

  
  <input type="text" id="form3Example1" class="form-control" style="width: 450px;margin-left: 35%;"  name="campaign" ></textarea>
  <label  style="margin-left: 35px;" class="form-label" for="form3Example1" for="description">Name of Campaign</label>
</div>
</div>
<div class="col-md-12 mb-4" >
<div class="form-outline">

  <input type="text" id="form3Example3" class="form-control" style="width: 450px;margin-left: 35%;" name="leader">
  <label style="margin-left: 35px;" class="form-label" for="form3Example2">Team Leader</label>
</div>
</div>


<!-- Password -->
<div class="col-md-12 mb-4" >
<div class="form-outline">

<select name="type" id="form3Example5" class="form-control" style="width: 450px;margin-left: 35%;">
    <option value="0">Select type</option>
    <option value="ACTIVE">Active</option>
    <option value="INACTIVE">Inactive</option>
</select>
<label for="picture" style="margin-left: 35px;" class="form-label" for="form3Example4">Type</label>
</div>
</div>
</div>

<!-- Submit button -->
<button type="submit" class="btn btn-primary btn-block mb-4" style="width:200px; margin-left:44%">
Submit
</button>

</form>
</div>
            </div>
          </div>
        
        
    </main>
    
</div>


@endsection