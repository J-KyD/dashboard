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
        <h1 class="dash-title">C O N F O R M E</h1>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Display</button>
            </li>
            @if(Auth::check())
            @if( session('type') == "admin" || session('type') == "leader" ) 
                
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add CONFORME</button>
            </li>
            @endif
            @endif
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> 
              <div class="activity-card">
        
                <div class="row">
             
            <form method="get" action ="conforme">
              @csrf
              <div class="row">
                <div class="col-11">
                  @if(session('type') == "leader")
              <select name="campaign" class="form-control" style="text-align: center; margin-top: 20px;margin-left:20px;">
                <option value="0">Select campaign Name</option>
                @foreach ( $data['project'] as $campaign )
             
                <option value="{{ $campaign->project_name }}">{{ $campaign->project_name }}</option> 
                @endforeach
              </select>

              @elseif(session('type') == "admin")
              <select name="campaign" class="form-control" style="text-align: center; margin-top: 20px;margin-left:20px;">
                <option value="0">Select campaign Name</option>
         
                @foreach ( $data['admin'] as $campaign )
             
                <option value="{{ $campaign->project_name }}">{{ $campaign->project_name }}</option>
                @endforeach
              </select>
              @endif
                </div>


                <div class="col-md-1">
                <button class="btn btn-primary" type="submit" style="margin-top: 20px;margin-right: 50px;white-space: nowrap;font-size: 1rem;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-search">
                </i> Find</button>
                </div>
              </div>
          </form>
           
            
              </div>
              </div>
 
          
         
                
        
            
       
            <table class="table table-striped" style="margin-top:20px;" id="table">
              <thead style="background-color: #171742;">
                <tr>
             
                  <th style="text-align: center">VIEW</th>
                  <th style="text-align: center">NAME OF CAMPAIGN</th>
                  <th style="text-align: center">CLIENT SERVER MANAGER</th>
                  <th style="text-align: center">SINCERLERY DATE</th>
                  <th style="text-align: center">BY 1</th>
                  <th style="text-align: center">BY 2</th>
                  <th style="text-align: center">CONFORME DATE</th>
                  <th style="text-align: center">EXPORT</th>
                  <th style="text-align: center">Action</th>
                  
          
                </tr>
              </thead>
     <tbody>
       @if(session('type')=='leader' || session('type') == "admin") 
       @foreach ($data['overtime'] as $datas ) 
      
      <tr>
           <td class="DATA"> <form action="overtime">
            <input type="text" name="id" value="{{ $datas->id }}" hidden>
           <button type="submit" class="btn btn-primary" style="margin-top: 20px;margin-left:20px;"> Click to View Overtime</button>
    
         </form></td> 

          <td class="DATA">{{ $datas->name_of_campaign}}</td>
          <td class="DATA">{{ $datas->client_server_manager}}</td>
          <td class="DATA">{{ $datas->sincerely_date}}</td>
          <td class="DATA">{{ $datas->by1}}</td>
          <td class="DATA">{{ $datas->by2}}</td>
          <td class="DATA">{{ $datas->conforme_date}}</td>
          <td class="DATA">
            
                
                
                
                  <form method="post" action ="export" >
                    @csrf
                    {{-- @if($data['over']!=null)
                    <input type="text" value="{{ $data['over']->name_of_campaign }}" name="campaign" hidden> 
             @endif --}}
                        <button class="btn btn-success text-center" type="submit" style="margin-top:0px;white-space: nowrap;font-size: 1rem;color:white;text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-file-excel-o">
                        </i> Export Excel</button>
                  </form>

                  <form method="post" action ="generate">
                    @csrf
              
            
                    {{-- @if($data['over']!=null)
                    <input type="text" value="{{ $data['over']->name_of_campaign }}" name="campaign" hidden>
             @endif --}}
  
                        <button class="btn btn-danger" type="submit" style="margin-top:10px; width:135px; white-space: nowrap;font-size: 1rem;color:white;text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-file-pdf-o">
                        </i> Export PDF </button>
                  </form>
                  
                  
              
          </td>
          
          <td>
            <a href="#editOvertime{{ $datas->id }}" class="btn btn-success" data-bs-toggle="modal" style="width:90px;">
                <i class="fa fa-edit">
         </i> Edit</a>
         <form method="post" action ="deleteAccount">
           @csrf
              <input style="text-align: center;" type="text" name="iddelover" value="{{ $datas->id }}" hidden>
               <button class="btn btn-danger" type="submit" style="margin-top: 10px;white-space: nowrap;font-size: 1rem;background-color:#dc3545;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-trash">
               </i>delete</button>
         </form>
         {{-- @include('adminmodal') --}}
           
         </td>
                  
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
  
                    <form method="POST" action="/addConforme">
                    @csrf
                    <!-- 2 column grid layout with text inputs for the first and last names -->
                  <div class="row">   
                    <div class="col-md-8 " style="margin-left: 15%">
                 
                    
                    <div class="row">
                        <h2 class="col-md-6  "> SINCERELY </h2>
                        <h2 class="col-md-6  "> CONFORME </h2>
                      <div class="col-md-6  ">  
                       @if(session('type') == "leader")
                        <select style="text-align:center" class="form-control"name="name" id="">
                          <option value="0">Select Type </option>
                          @foreach ($data['project'] as $item) 
                          <option value="{{ $item->project_name }}">{{ $item->project_name }}</option>
                          
                           @endforeach
                      
                        </select>
                        @elseif(session('type')== "admin")
                        <select style="text-align:center" class="form-control"name="name" id="">
                          <option value="0">Select Type </option>
                          @foreach ($data['admin'] as $item) 
                           <option value="{{ $item->project_name }}">{{ $item->project_name }}</option>
                         
                          @endforeach
                     
                        </select>
                        @endif
                      </div>
                            
                            <div class="col-md-6">
                                
                                <input style="text-align: center;" type="text" name='by1' id="form3Example3" class="form-control" />
                                <label class="form-label" for="form3Example3">BY  
                                </label>
                            </div>

                            <div class="col-md-6">            
                                <input style="text-align: center;" type="text" name='client_server_manager'id="form3Example2" class="form-control" />
                                <label class="form-label" for="form3Example2">CLIENT SERVER MANAGER</label>
                              </div>  
                    
                          <div class="col-md-6">
                            <input style="text-align: center;" type="text" name='by2' id="form3Example4" class="form-control" />
                            <label class="form-label" for="form3Example4">BY </label>
                          </div>

                          <div class="col-md-6">
                            <input style="text-align: center;" type="text" name='sincerely_date' id="form3Example4" class="form-control" />
                            <label class="form-label" for="form3Example4">SINCERELY DATE</label>
                          </div>
                         
                          
                        <div class="col-md-6">
                          <input style="text-align: center;" type="text" name='conforme_date' id="form3Example5" class="form-control" placeholder=""/>
                          <label class="form-label" for="form3Example5">CONFORME DATE</label>
                        </div>
              
                           
                         
                    </div>
                    </div>
                  </div>
                            <button type="submit" class="btn btn-primary btn-block" style="width: 200px; margin-left:42.5%; margin-top: 20px;">
                              Add CONFORME
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