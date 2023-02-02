
<div class="modal fade" id="changePass" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5 DATA" id="exampleModalLabel" >Change Password</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
        </div>
        <div class="modal-body">
            <form method="POST" action="/change">
                @csrf
                <div class="mb-md-5 mt-md-4 pb-5">
              
         
                  <div class="form-outline form-white mb4">
                    <input name="old" type="text" class="form-control" id="oldPasswordInput"placeholder="Old Password">
                    <label for="newPasswordInput" class="form-label">Old Password</label>

                </div>
                    <div class="form-outline form-white mb4">
                      <input name="new" type="text" class="form-control" id="newPasswordInput"
                          placeholder="New Password">
                          <label for="newPasswordInput" class="form-label">New Password</label>

                  </div>
                  <div class="mb-3">
                      <input name="confirm" type="text" class="form-control" id="confirmNewPasswordInput"
                          placeholder="Confirm New Password">
                          <label for="confirmNewPasswordInput" class="form-label">Confirm New Password</label>

                          <input type="text" name="uid" value="{{ session('ids') }}" hidden>
                  </div>

              </div>
                    <button class="btn btn-outline-dark" type="submit"><i class="fa fa-edit"></i> Save</button>

                </div>
            </form>
        </div>
      </div>
    </div>
    </div>