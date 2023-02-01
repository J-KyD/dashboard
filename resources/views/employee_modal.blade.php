<div class="modal fade" id="editEmployee{{ $datas->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5 DATA" id="exampleModalLabel" >Update Employee</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
        </div>
        <div class="modal-body">
            <form method="post" action="/updateemployee">
                @csrf
                <div class="mb-md-5 mt-md-4 pb-5"   >
                    <div class="form-outline form-white mb-4" >
                        <input type="text"
                         class="form-control form-control-sm" 
                         style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                          value="{{ $employee->name }}" 
                          name="name" />
                        <label class="form-label DATA" for="typeEmailX"> Name </label>
                    </div>
    
                    <div class="form-outline form-white mb-4" >
                        <input type="text"
                         class="form-control form-control-sm" 
                         style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                          value="{{ $employee->employee_number }}" 
                          name="employeenumber" />
                        <label class="form-label  DATA" for="typeEmailX">Employee No.</label>
                    </div>
                 
                    <div class="form-outline form-white mb-4" >
                        <input type="text"
                         class="form-control form-control-sm" 
                         style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                          value="{{ $employee->hire_date }}" 
                          name="hiredate" />
                        <label class="form-label DATA" for="typeEmailX">Hire Date</label>
                    </div>
    
                    <div class="form-outline form-white mb-4" >
                      <input type="text"
                       class="form-control form-control-sm" 
                       style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                        value="{{ $employee->contact_number}}" 
                        name="contact" />
                      <label class="form-label DATA" for="typeEmailX">Contact Number</label>
                     
                  </div>
    
                  <div class="form-outline form-white mb-4" >
                    <input type="text"
                     class="form-control form-control-sm" 
                     style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                      value="{{ $employee->birthdate }}" 
                      name="birthdate" />
                    <label class="form-label DATA" for="typeEmailX">Birthdate</label>
                </div>

                <div class="form-outline form-white mb-4" >
                    <input type="text"
                     class="form-control form-control-sm" 
                     style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                      value="{{ $employee->tenure}}" 
                      name="tenure" />
                    <label class="form-label DATA" for="typeEmailX">Tenure</label>
                </div>

                <div class="form-outline form-white mb-4" >
                    <input type="text"
                     class="form-control form-control-sm" 
                     style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                      value="{{ $employee->total_it_exp}}" 
                      name="totalit" />
                    <label class="form-label DATA" for="typeEmailX">Total IT Exp</label>
                </div>
                
                <div class="form-outline form-white mb-4" >
                 <select class="form-control" name="status">
                  <option value="ACTIVE">ACTIVE</option>
                  <option value="RESIGNED">RESIGNED</option>
                 </select>
                      <input type="text" name="uid" value="{{ $employee->id }}" hidden>
                    <label class="form-label DATA" for="typeEmailX">Status</label>
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
   
   