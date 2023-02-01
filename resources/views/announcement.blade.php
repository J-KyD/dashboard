@extends('form2')
@section('contents')

    <div class="main-content">
        
            <main>
                <h1 class="dash-title" style="color: black">Announcement & Holiday</h1>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Announcement & Holiday</button>
                    </li>
                 
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add</button>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> <div class="activity-card">
                    
                        <table class="table table-striped" style="margin-top:20px;" id="table">
                            <thead style="background-color: #171742;">
                              <tr>
                                <th style="text-align: center">Title </th>
                                <th style="text-align: center">Description</th>
                                <th style="text-align: center">Image</th>
                                <th style="text-align: center">Type</th>
                                <th style="text-align: center">Action</th>
                              </tr>
                            </thead>
                   <tbody>
                 
                    @foreach ($data as $item)
                    <tr>
                        
                          
                        <td>{{ $item->title }}          
                        <td>
                                {{ $item->description }}
                        </td>
                        <td>
                          @if($item->picture !='none')
                                <img src="{{ asset('announcement/toPath/'. $item->picture )}}" alt="">
                                @endif
                        </td>
                        <td>
                                {{ $item->type }}
                        </td>
                        <td>
                            <a href="#editAnnounce{{ $item->id }}" class="btn btn-success" data-bs-toggle="modal" style="width:90px;"><i class="fa fa-edit">
                         </i> Edit</a>
                         <form method="post" action ="deleteAnnounce">
                           @csrf
                              <input style="text-align: center;" type="text" name="iddelannounce" value="{{ $item->id }}" hidden>
                               <button class="btn btn-danger" type="submit" style="margin-top: 10px;white-space: nowrap;font-size: 1rem;background-color:#dc3545;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i class="fa fa-trash">
                               </i>delete</button>
                         </form>
                                @include('announcemodal')
                           
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
                    



<div class="card-body p-5 shadow-5 text-center">
              
    <form action="uploadAnnouncement" method="post" enctype="multipart/form-data">
      @csrf
      <!-- Name Input-->
      <div class="row">

        <div class="col-md-12 mb-4" >
          <div class="form-outline mb-6">
        
            
            <input type="title" id="form3Example1" class="form-control" style="width: 450px;margin-left: 35%; text-align:center" name="title" placeholder="Title" ></textarea>
            <label  style="" class="form-label" for="form3Example1" for="description">Title</label>
          </div>
          </div>
        <div class="col-md-12 mb-4" >
        <div class="form-outline mb-6">
      
          
          <textarea id="form3Example1" class="form-control" style="width: 450px;margin-left: 35%;" id="description" name="description" placeholder="...." rows="4"></textarea>
          <label  style="" class="form-label" for="form3Example1" for="description">Description</label>
        </div>
        </div>
        <div class="col-md-12 mb-4" >
        <div class="form-outline">
       
          <input type="file" id="form3Example3" class="form-control" style="width: 450px;margin-left: 35%;" id="picture" name=" image">
          <label style="" class="form-label" for="form3Example2">Image</label>
        </div>
        </div>
 

      <!-- Password -->
      <div class="col-md-12 mb-4" >
        <div class="form-outline">
  
        <select name="type" id="form3Example5" class="form-control" style="width: 450px;margin-left: 35%;">
            <option value="0">Select type</option>
            <option value="announcement">Announcement</option>
            <option value="holiday">Holiday</option>
        </select>
        <label for="picture" style="" class="form-label" for="form3Example4">Type</label>
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