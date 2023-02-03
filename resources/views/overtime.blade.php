@extends('form2')

@section('contents')
<style>
  .dash-title{
 text-align: center;
 color: #171742;

 }
</style>

<div class="main-content">     
    <main>
        <h1 class="dash-title">O V E R T I M E</h1>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Display</button>
            </li>
            @if(Auth::check())
            @if( session('type') == "admin" || session('type') == "leader" )
                
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add Overtime</button>
            </li>
            @endif
            @endif
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> 
              <div class="activity-card">
        
                <div class="row">
            <form method="get" action ="overtime">
              @csrf
              <div class="row">
                <div class="col-11">
              <select name="campaign" class="form-control" style="text-align: center; margin-top: 20px;margin-left:20px;">
                <option value="0">Select campaign Name</option>
                @foreach ( $data['project'] as $campaign )
             
                <option value="{{ $campaign->project_name }}">{{ $campaign->project_name }}</option>
                @endforeach
              </select>
                </div>


                <div class="col-md-1">
                <button class="btn btn-primary" type="submit" style="margin-top: 20px;margin-right: 50px;white-space: nowrap;font-size: 1rem;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-search">
                </i> Find</button>
                </div>
              </div>
          </form>
           
              <div class="row">
                <div class="col-1" style="margin-left:20px;margin-bottom:20px;">
                <form method="post" action ="generate">
                  @csrf
            
          
                  @if($data['over']!=null)
                  <input type="text" value="{{ $data['over']->name_of_campaign }}" name="campaign" hidden>
           @endif

                      <button class="btn btn-danger" type="submit" style="margin-top:20px;white-space: nowrap;font-size: 1rem;color:white;text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-file-pdf-o">
                      </i> Export PDF </button>
                </form>
                
                </div>
                <div class="col-1" style="margin-left:10px;margin-bottom:20px;">
                  <form method="post" action ="export">
                    @csrf
                    @if($data['over']!=null)
                    <input type="text" value="{{ $data['over']->name_of_campaign }}" name="campaign" hidden>
             @endif
                        <button class="btn btn-success" type="submit" style="margin-top:20px;white-space: nowrap;font-size: 1rem;color:white;text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-file-excel-o">
                        </i> Export Excel</button>
                  </form>
                  
                  </div>
              </div>
              </div>
 
          
         
                
        
            
       
            <table class="table table-striped" style="margin-top:20px;" id="table">
              <thead style="background-color: #171742;">
                <tr>
             
             
                  <th style="text-align: center">NAME OF CAMPAIGN</th>
                  <th style="text-align: center">EMPLOYEE NAME</th>
                  <th style="text-align: center">NUMBER OF HOURS</th>
                  <th style="text-align: center">BILLABLE AMOUNT</th>
                  <th style="text-align: center">BILLING ADDRESSEE</th>
       
          
                </tr>
              </thead>
     <tbody>
      @if(session('type')=='leader')
      @foreach ($data['overtime'] as $datas )
      
      <tr>


          <td class="DATA"> {{$datas->name_of_campaign}} </td>  

          <td class="DATA">{{ $datas->employee_name}}</td>
          <td class="DATA">{{ $datas->number_of_hours}}</td>
          <td class="DATA">{{ $datas->billable_amount}}</td>
          <td class="DATA">{{ $datas->billing_address}}</td>
        
                   
                  
                      </tr>
                      @endforeach
                      @else 
                      @foreach ($data['campaign'] as $datas )
      
                      <tr>
                
                
                          <td class="DATA"> {{$datas->name_of_campaign}} </td>  
                
                          <td class="DATA">{{ $datas->employee_name}}</td>
                          <td class="DATA">{{ $datas->number_of_hours}}</td>
                          <td class="DATA">{{ $datas->billable_amount}}</td>
                          <td class="DATA">{{ $datas->billing_address}}</td>
                        
                                   
                                  
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
                  <div class="card-body p-5 shadow-5 text-center" id="addcampaign">
  
                    <form method="POST" action="/addOvertime">
                    @csrf
                    <!-- 2 column grid layout with text inputs for the first and last names -->
                  <div class="row">   
                    <div class="col-md-8 " style="margin-left: 15%">
                 
                    
                    <div class="row">
              
                      <div class="col-md-6  ">    
                        <select style="text-align:center" class="form-control"name="name" id="">
                          <option value="0">Select Type </option>
                          @foreach ($data['project'] as $item)
                          <option value="{{ $item->project_name }}">{{ $item->project_name }}</option>
                         
                          @endforeach
                     
                        </select>
                      </div>
                                <div class="col-md-6">            
                            <input style="text-align: center;" type="text" name='employee'id="form3Example2" class="form-control" />
                            <label class="form-label" for="form3Example2">EMPLOYEE NAME</label>
                          </div>
                    
                          <div class="col-md-6">
                            <input style="text-align: center;" type="text" name='hours' id="form3Example4" class="form-control" />
                            <label class="form-label" for="form3Example4">NUMBER OF HOURS</label>
                          </div>
                         
                          <div class="col-md-6">
                          
                            <input style="text-align: center;" type="text" name='amount' id="form3Example3" class="form-control" />
                            <label class="form-label" for="form3Example3">BILLABLE AMOUNT   
                              (ASTICOM to fill out and send back prior CLIENT approval)  
                              </label>
                          </div>
                      
              
                          <div class="col-md-6">
                          <input style="text-align: center;" type="text" name='address' id="form3Example4" class="form-control" />
                          <label class="form-label" for="form3Example4">BILLING ADDRESSEE</label>
                        </div>
                        <div class="col-md-6">
                          <input style="text-align: center;" type="text" name='activity' id="form3Example5" class="form-control" placeholder=""/>
                          <label class="form-label" for="form3Example5">ACTIVITY/IES</label>
                        </div>
              
                           
                         
                    </div>
                    </div>
                  </div>
                            <button type="submit" class="btn btn-primary btn-block" style="width: 200px; margin-left:42.5%; margin-top: 20px;">
                              Add OVERTIME
                            </button>
              
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