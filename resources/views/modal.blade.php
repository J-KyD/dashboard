
<div class="modal fade" id="editclient{{ $datas->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5 DATA" id="exampleModalLabel" >Update Campaign</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
      </div>
      <div class="modal-body">
          <form method="post" action="/updateProject">
              @csrf
              <div class="mb-md-5 mt-md-4 pb-5"   >
                  <div class="form-outline form-white mb-4" >
                      <input type="text"
                       class="form-control form-control-sm" 
                       style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; "
                        value="{{ $datas->project_name }}" 
                        name="name" />
                      <label class="form-label DATA" for="typeEmailX"> Name of Campaign</label>
                  </div>
  
                  <div class="form-outline form-white mb-4" >
                      <input type="text"
                       class="form-control form-control-sm" 
                       style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; "
                        value="{{ $datas->team_leader }}" 
                        name="leader" />
                      <label class="form-label  DATA" for="typeEmailX">Team Leader</label>
                  </div>
               
         
    
  
                <div class="form-outline form-white mb-4" >
                  <select style="color:black;border:2px solid #171742;text-align:center;font-size:20px;color:black;height:40px" class="form-control form-control-sm"name="status" id="">
                    <option value="0">Select Status </option>
                    <option value="active">Active</option>
                    <option value="unactive">Not Active</option>
                  </select>
                  <label class="form-label  DATA" for="typeEmailX">Status</label>
                  <input type="text" name="uid" value="{{ $datas->id }}" hidden>
                </div>
                  
              
                  <button class="btn btn-outline-dark" type="submit"><i class="fa fa-edit"></i> Save</button>
       
             
              </div>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
  
      </div>
    </div>
  </div>
  </div>
  
  