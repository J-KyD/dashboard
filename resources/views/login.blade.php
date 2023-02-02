
@extends('form2')
@section('contents')

   
<div class="half loginbg" id="loginbg" >
 
    <div class="bg order-1 order-md-2">

    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5" >
                <span><img src="{{asset('/ABSILOGO.png')}}" alt="Image" id="headerlogo" style="width: 200px"/></span> 
              <h3 id="logintext">IT-COE Dashboard</h3>
              <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
              </div>
              <form method="post" action="/login">
                @csrf
                <div class="form-group first">
                    <input type="text" id="typeEmailX"
                    name='employee_number'class="form-control form-control-lg" />
                    <label class="form-label" for="typeEmailX" id="logintext">Employee Number</label>
                </div>
                <div class="form-group last mb-3">
                <input type="password" id="typePasswordX" name='password'
                    class="form-control form-control-lg" />
                    <label class="form-label" for="typePasswordX" id="logintext">Password</label>
                </div>
                </label>

                 

                @if(session('status'))
                <div class="alert alert-danger">
                  {{ session('status') }}
                </div>
                @endif
                <button class="btn btn-block loginbtn" type="submit">Login</button>
                                 
                                        </div>
                                   

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

@endsection
