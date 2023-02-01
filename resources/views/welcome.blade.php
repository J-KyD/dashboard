@extends('form2')

@section('contents')

<div class="main-content">
  <header>
            
    <div class="taytel">
      <h1 class="dash-title">W E L C O M E</h1>
</div>
  

</header>
    <main>
   
        <div class="dash-cards">
            <div class="card-single">
                <div class="card-body">
                    <span class="ti-briefcase"></span>
                    <div>
                        <h5>Total Number of Projects</h5>
                        <h4 style="color:black;text-align:left;">  {{$data['projects']  }} </h4>
                    </div>
                </div>
              
            </div>
            
            <div class="card-single">
                <div class="card-body">
                    {{-- <i  class="fa-solid " style="font-size: 25px;margin-right:20px;"></i> --}}
                    <span class="fa-solid fa-user"></span>
                    <div>
                        <h5>Total Number of Employees</h5>
                        <h4 style="color:black;text-align:left;">{{ $data['employee'] }} </h4>
                    </div>
                </div>
              
            </div>
            
            <div class="card-single">
                <div class="card-body">
                    <span class="fa-solid fa-cake-candles"></span>
                    <div>
                        <h5>Birthday</h5>
                        <h4> </h4>
                        <button type="button" style="width: 100%;" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            View more
                          </button>
                    </div>
                </div>
              
            </div>
        </div>

        <div class="card-single">
          <div class="row">
          {{-- <h5><i class="fa-solid fa-bell"></i>Announcements</h5> --}}
          <div class="col-6-md">
          <div class="card-body" style="border-right: 3px solid black">
            {{-- <span class="fa-solid fa-bell"></span>   --}}
            <div>
            <h5><span class="fa-solid fa-bell"></span>Announcements</h5>
            <div class="swiper">
              <!-- Additional required wrapper -->
              <div class="swiper-wrapper">
                <!-- Slides -->
               
                @foreach ($data['announcement'] as $welcome )

                <div class="swiper-slide">
                  
                  <h2 style="text-align: center">{{ $welcome->title }}</h2>
                
                  @if($welcome->description!='none')
                  <h4>{{ $welcome->description }}  Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatum soluta quibusdam repellendus, porro amet voluptates saepe incidunt at doloribus iure illum impedit ut fuga reiciendis provident inventore vel, dignissimos tempore! Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, et corrupti dolorem vero dolores impedit quaerat magnam veniam praesentium voluptatum, animi temporibus repudiandae autem, aperiam doloremque assumenda vitae? Ut, ipsam.</h4>
                  @endif
                  @if($welcome->picture!='none' )
              <img style="width:740px; border-radius:10px; height:450px;" src="{{ asset('announcement/toPath/'. $welcome->picture )}}">
              @endif
                </div>
                       
                @endforeach
           
              </div>
              <!-- If we need pagination -->
              <div class="swiper-pagination"></div>
            
              <!-- If we need navigation buttons -->
              
            
              <!-- If we need scrollbar -->
          
            </div>
          </div>

          </div>
      
          </div>
        

   
          {{-- <h5><i class="fa-solid fa-bell"></i>Announcements</h5> --}}
          <div class="col-6-md">
            <div class="card-body">
              {{-- <span class="fa-solid fa-bell"></span>   --}}
              <div>
                <h5><i class="fa-sharp fa-solid fa-paperclip"></i> Holidays</h5>
           
              <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                  <!-- Slides -->
                 
                  @foreach ($data['holiday'] as $welcome )
  
                  <div class="swiper-slide">
                    <h2 style="text-align: center">{{ $welcome->title }}</h2>
                  @if($welcome->description!='none')
                    <h4>{{ $welcome->description }} Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatum soluta quibusdam repellendus, porro amet voluptates saepe incidunt at doloribus iure illum impedit ut fuga reiciendis provident inventore vel, dignissimos tempore! Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, et corrupti dolorem vero dolores impedit quaerat magnam veniam praesentium voluptatum, animi temporibus repudiandae autem, aperiam doloremque assumenda vitae? Ut, ipsam.</h4>
                    @endif
                    @if($welcome->picture!='none')
                <img style="width:740px; border-radius:10px; height:450px;" src="{{ asset('announcement/toPath/'. $welcome->picture )}}">
                @endif
                  </div>
                         
                  @endforeach
             
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
              
                <!-- If we need navigation buttons -->
                
              
                <!-- If we need scrollbar -->
            
              </div>
            </div>
  
            </div>
        
            </div>
        
      </div>
        </div>


    


  <!-- Modal -->
  <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
        {{-- <i class="fa-solid fa-cake-candles"></i> --}}
          <h1 class="modal-title fs-5" id="exampleModalLabel">Birthday Celebrants</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

        <div class="modal-body">
          <table class="table table-striped" style="margin-top:20px;" id="table">
            <thead style="background-color: #171742;">
              <tr>
                
            
                <th style="text-align: center">Employee Number</th>
                <th style="text-align: center">Name</th>
                <th style="text-align: center">Birthdate</th>
        
              </tr>
            </thead>
   <tbody>
 
    @foreach ($data['birthday'] as $datas )
        
    <tr>
 
        <td class="DATA">{{ $datas->employee_number}}</td>
        <td class="DATA"> {{$datas->name}} </td> 
        <td class="DATA">{{ $datas->birthdate}}</td>
             
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

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
         
        </div>
      </div>
    </div>
  </div>

 


</main>
</div>
@endsection