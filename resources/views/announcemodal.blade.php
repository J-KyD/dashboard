
<div class="modal fade" id="editAnnounce{{ $item->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5 DATA" id="exampleModalLabel" >Change Password</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
        </div>
        <div class="modal-body">
            <form method="POST" action="/updateAnnounce" enctype="multipart/form-data">
                @csrf
                <div class="mb-md-5 mt-md-4 pb-5">
              
                  <div class="form-outline form-white mb4">
                    <input type="text"  id="form3Example1" class="form-control" style="color:black;border:2px solid #171742;text-align:center;font-size:20px;color:black;"id="description" name="title" placeholder="{{ $item->title }}" rows="4"></textarea>
                    <label  class="form-label  DATA" for="form3Example1" for="description">Title</label>
               

                </div>
                  <div class="form-outline form-white mb4">
                    <textarea  id="form3Example1" class="form-control" style="color:black;border:2px solid #171742;text-align:center;font-size:20px;color:black;"id="description" name="description" placeholder="{{ $item->description }}" rows="4"></textarea>
                    <label  class="form-label  DATA" for="form3Example1" for="description">Description</label>
               

                </div>
                    <div class="form-outline form-white mb4">
                        <input value="{{ $item->picture }}" type="file" id="form3Example3" class="form-control" style="color:black;border:2px solid #171742;text-align:center;font-size:20px;color:black;height:50px;" id="picture" name=" image">
                        <label class="form-label  DATA"  for="form3Example2">Image</label>

                  </div>
                  <div class="mb-3">
                    
                    <select  name="type" id="form3Example5" class="form-control"  style="color:black;border:2px solid #171742;text-align:center;font-size:20px;color:black;height:40px">
                        <option value="0">Select type</option>
                        <option value="announcement">Announcement</option>
                        <option value="holiday">Holiday</option>
                    </select>
                    <label for="picture" class="form-label  DATA"  for="form3Example4">Type</label>

                          <input type="text" name="uid" value="{{ $item->id }} " hidden>
                  </div>

              </div>
                    <button class="btn btn-outline-dark" type="submit"><i class="fa fa-edit"></i> Save</button>

                </div>
            </form>
        </div>
      </div>
    </div>
    </div>