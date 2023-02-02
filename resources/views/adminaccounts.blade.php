@extends('form2')

@section('contents')

<div class="main-content">     
    <main>
        <h1 class="dash-title">Admin Accounts</h1>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true"> Admin Accounts</button>
            </li>
             @if(Auth::check())
                @if( session('type') == "admin" )
                    
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add Account</button>
            </li>
            @endif
            @endif
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> <div class="activity-card">
            
                <table class="table table-striped"  id="table">
                    <thead style="background-color: #171742;">
                      <tr>
                        <th style="text-align: center">#</th>     
                        <th style="text-align: center">Name</th>
                        <th style="text-align: center">Employee Number</th>
                        <th style="text-align: center">Status</th>
                        <th style="text-align: center">Type</th>
                    
                        <th style="text-align: center">Action</th>
                      </tr>
                    </thead>
           <tbody>
            @foreach ($data as $datas )
                
            <tr>
              <td class="DATA"> {{$datas->id}} </td>  

                <td class="DATA">{{$datas->name}} </a> </td>  
                <td class="DATA">{{ $datas->employee_number}}</td>
                <td class="DATA">{{ $datas->status}}</td>
                <td class="DATA">{{ $datas->type}}</td>
                       
                                <td>
                                   <a href="#editAccount{{ $datas->id }}" class="btn btn-success" data-bs-toggle="modal" style="width:90px;"><i class="fa fa-edit">
                                </i> Edit</a>
                                <form method="post" action ="deleteAccount">
                                  @csrf
                                     <input style="text-align: center;" type="text" name="iddeluser" value="{{ $datas->id }}" hidden>
                                      <button class="btn btn-danger" type="submit" style="margin-top: 10px;white-space: nowrap;font-size: 1rem;background-color:#dc3545;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-trash">
                                      </i>delete</button>
                                </form>
                                @include('adminmodal')
                                  
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        @if(session('status'))
                    <div class="alert alert-success">
                      {{ session('status') }}
                    </div>
                    @endif
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
            
            <!-- Jumbotron -->
            <div class="card-container py-4">
              <div class="row g-0 align-items-center">
              <div class="col-lg-12 mb-10 mb-lg-0">
                <div class="card" style="
                  background: hsla(0, 0%, 100%, 0.55);
                  backdrop-filter: blur(30px);
                  ">
                <div class="card-body p-5 shadow-5 text-center">
              
                  <form method="POST" action="/adminsignup">
                    @csrf
                    <!-- Name Input-->
                    <div class="row">
                      <div class="col-md-12 mb-4" >
                        
                        <div class="form-group first mb-6">
                          <input type="text" id="typeEmailX"
                          name='name'class="form-control form-control-lg "style="width: 450px;margin-left: 35%;" />
                          <label  style=" display: inline-block;
                          width: 278px;
                          text-align: left;"class="form-label" for="typeEmailX" id="form3Example1">Full Name</label>
                      </div>
                      </div>
                      <div class="col-md-12 mb-4" >
                        <div class="form-group first mb-6">
                          <input type="text" id="typeEmailX"
                          name='employee_number'class="form-control form-control-lg "style="width: 450px;margin-left: 35%;" />
                          <label  style=" display: inline-block;
                          width: 278px;
                          text-align: left;"class="form-label" for="typeEmailX" id="form3Example1">Employee</label>
                      </div>
                      </div>
                      <div class="col-md-12 mb-6" >
                      <div class="form-group first mb-6">
                        <input type="password" id="typeEmailX"
                        name='password'class="form-control form-control-lg "style="width: 450px;margin-left: 35%;" />
                        <label  style=" display: inline-block; width: 278px; text-align: left;"class="form-label" 
                        for="typeEmailX" id="form3Example1">Password</label>
                        <input type="text" name='type' id="form3Example3" class="form-control"  value="admin" hidden/>
                     
                    </div>
                    </div>
                    </div>
                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block mb-4" style="width:200px; margin-left:44%">
                      Sign up
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
            </section></div>
          </div>
        
    </main>
    
</div>


@endsection