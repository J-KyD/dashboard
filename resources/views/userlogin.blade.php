
@extends('form1')
@section('contents')


    <div class="bg order-1 order-md-2">
        <!--<img class="cover" src="{{ asset('img/absicover.jpg') }}" >
    </div> -->

  <div class="half">
    
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5">
              <h3>Welcome to <strong>ABSI IT-COE Dashboard</strong></h3>
              <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
              </div>
              <form method="post" action="/userlogin">
                @csrf
                <div class="form-group first">
                    <input type="email" id="typeEmailX"
                    name='email'class="form-control form-control-lg" />
                    <label class="form-label" for="typeEmailX">Email</label>
                </div>
                <div class="form-group last mb-3">
                <input type="password" id="typePasswordX" name='password'
                    class="form-control form-control-lg" />
                    <label class="form-label" for="typePasswordX">Password</label>
                <input type="text" name="user" value="user" hidden>
                </div>
                </label>

                <div>
                    <p class="text">Don't have an account? <a href="absisignup" class="text-a">Sign Up</a>
                    </p>
                </div> 

                <button class="btn btn-block btn-primary" type="submit">Login</button>
                                    @if (session('status'))
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
  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
