<div class="modal fade" id="editEmployee{{ $datas->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5 DATA" id="exampleModalLabel" >Update COCA</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
        </div>
        <div class="modal-body">
            <form method="post" action="/updateCoca">
                @csrf
                <div class="mb-md-5 mt-md-4 pb-5"   >
                    <div class="form-outline form-white mb-4" >
                        <input type="text"
                         class="form-control form-control-sm datepicker" 
                         style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                          value="{{ $datas->date }}" 
                          name="date" />
                        <label class="form-label DATA" for="typeEmailX"> Date </label>
                    </div>
                    <div class="form-outline form-white mb-4" >
                        <input type="text"
                         class="form-control form-control-sm" 
                         style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                          value="{{ $datas->services }}" 
                          name="services" />
                        <label class="form-label  DATA" for="typeEmailX">Services / Projects</label>
                    </div> 
                    <div class="form-outline form-white mb-4" >
                        <input type="text"
                         class="form-control form-control-sm" 
                         style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                          value="{{ $datas->location }}" 
                          name="location" />
                        <label class="form-label DATA" for="typeEmailX">Location</label>
                    </div>
                    <div class="form-outline form-white mb-4" >
                      <input type="text"
                       class="form-control form-control-sm" 
                       style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                        value="{{ $datas->po_number}}" 
                        name="po_number" />
                      <label class="form-label DATA" for="typeEmailX">P.O Number</label>
                  </div>
                  <div class="form-outline form-white mb-4" >
                    <input type="text"
                     class="form-control form-control-sm" 
                     style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                      value="{{ $datas->vendor }}" 
                      name="vendor" />
                    <label class="form-label DATA" for="typeEmailX">Vendor</label>
                </div>
                <div class="form-outline form-white mb-4" >
                    <input type="text"
                     class="form-control form-control-sm" 
                     style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                      value="{{ $datas->address}}" 
                      name="address" />
                    <label class="form-label DATA" for="typeEmailX">Address</label>
                </div>
                <div class="form-outline form-white mb-4" >
                    <input type="text"
                     class="form-control form-control-sm datepicker" 
                     style="background-color:white;color:black;border:2px solid #171742;font-size: 20px; text-align:center "
                      value="{{ $datas->completion_date}}" 
                      name="completion_date" />
                    <label class="form-label DATA" for="typeEmailX">Completion Date</label>
                </div>
                <input type="text" name="uid" value="{{ $datas->id }}" hidden>
                    <button class="btn btn-primary" type="submit"><i class="fa fa-edit"></i> Save</button>
                </div>
            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>    
        </div>
      </div>
    </div>
    </div>
   
   