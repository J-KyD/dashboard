

      <input type="checkbox" id="sidebar-toggle">
      <div class="sidebar">
          <div class="sidebar-header">
              <h3 class="brand">
  
                <span><img src="{{asset('/ABSILOGO.png')}}" alt="Image" id="headerlogo" style="width: 145px"/></span>
              </h3> 
              <label for="sidebar-toggle" class="ti-menu-alt"></label>
          </div>
          
          <div class="sidebar-menu">
              <ul>
                <li>
                    <a href="userprofile">
                        <span class="fa-solid fa-user" style="font-size: 15px;"></span>
                        <span>Profile</span>
                    </a>
                </li>
                <li>
                    <a href="welcome">
                        <span class="fa-solid fa-home "style="font-size: 15px;"></span>
                        <span>Welcome</span>
                    </a>
                </li>
                  <li>
                      <a href="userdashboard">
                          <span class="ti-briefcase" style="font-size: 15px;"></span>
                          <span>Campaign/Projects</span>
                      </a>
                  </li>
                  <li>
                      <a href="coca">
                          <span class="ti-clipboard" style="font-size: 15px;"></span>
                          <span>COCA</span>
                      </a>
                  </li>
                  <li>
                    <a href="overtime">
                        
                        <i class="ti-clipboard"></i>
                        <span>Overtime</span>
                    </a>
                </li>
                @if(Auth::check())
                              @if( session('type') == "admin" )
                              
                            <li>
                                <a href="announce">
                                    
                                    <i class="fa-solid fa-bell"></i>
                                    <span>Announcement / Holidays</span>
                                </a>
                            </li>
                            <li>
                              <a href="adminaccounts">
                                  <span class="ti-id-badge" style="font-size: 15px;"></span>
                                  <span>Admin Accounts</span>
                              </a>
          
                          </li>
                          <li>
                              <a href="useraccounts">
                                  <span class="ti-id-badge" style="font-size: 15px;"></span>
                                  <span>User Accounts</span>
                              </a>
          
                          </li>
          
                        
                              @endif
                              @endif
               
                 
                  <li>
                      <a href="/adminLogout">
                          <i class="fa-solid fa-right-from-bracket" style="font-size: 15px;"></i>
                          <span>Log Out</span>
                      </a>
  
                  </li>
              </ul> 
          </div>
      </div>
      
   