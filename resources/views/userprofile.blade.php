@extends('form2')

@section('contents')


<div class="main-content">

        
    <main>
        <h1 class="dash-title">U S E R  P R O F I L E</h1>
           
                <style>
                    .cascading-right {
                    margin-right: -50px;

                    }
                    .dash-title{
                   text-align: center;
                   color: #171742;
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
                    <div class="col-lg-12 mb-10 mb-lg-0" style="display: flex;justify-content:center;">
                      <div class="card" style="
                        background: hsla(0, 0%, 100%, 0.55);
                        backdrop-filter: blur(30px);
                        border: 2px solid #634AF2;
                        ">
                      <div class="card-body p-5 shadow-5 text-center" style="background-color: #171742">
                    
                        <form>
                     
                        <!-- 2 column grid layout with text inputs for the first and last names -->
                        <div class="row">
                          <div class="col-md-12 mb-4">
                          <div class="form-outline">
                            <input type="text" name='fname'id="form3Example1" value="{{ session('name') }}" class="form-control" style="border: 2px solid #634AF2;font-size:20px;text-align:center;" disabled/>
                            <label style="margin-top:15px;" class="form-label" id="profilelabel" for="form3Example1">Name</label>
                          </div>
                          </div>
                          <div class="col-md-12 mb-4">
                            <div class="form-outline">
                              <input type="text" name='fname'id="form3Example1" value="{{ session('employee_number') }}" class="form-control" style="border: 2px solid #634AF2;font-size:20px;text-align:center;" disabled/>
                              <label style="margin-top:15px;" class="form-label" id="profilelabel" for="form3Example1">Email</label>
                            </div>
                            </div>
                       
                      
                  
                            <div class="col-md-12 mb-4">
                                <div class="form-outline">
                                  <input type="text" name='fname'id="form3Example1" value="{{ session('type') }}"  class="form-control" style="border: 2px solid #634AF2;font-size:20px;text-align:center;" disabled/>
                                  <label style="margin-top:15px;" class="form-label" id="profilelabel" for="form3Example1">Type</label>
                                </div>
                                </div>
                        </div>
                        <!-- Password input -->
                        <a href="#changePass" class="btn btn-primary" id="changepassbtn" data-bs-toggle="modal"><i class="fa-solid fa-trash"></i>
                          Change Password</a>
                          
                          @if(session('status'))
                          <div class="alert alert-success">
                            {{ session('status') }}
                          </div>
                          @endif 
                      </div>
                    </form>
                   
                      </div>
                      @include('changemodal')
                    </div>
                    </div>
                  </div>
            
                 
    </main>
    
</div>


@endsection