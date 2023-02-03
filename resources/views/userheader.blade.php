

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
                        <span>PROFILE</span>
                    </a>
                </li>
                <li>
                    <a href="welcome">
                        <span class="fa-solid fa-home "style="font-size: 15px;"></span>
                        <span>WELCOME</span>
                    </a>
                </li>
                  <li>
                      <a href="userdashboard">
                          <span class="ti-briefcase" style="font-size: 15px;"></span>
                          <span>CAMPAIGN</span>
                      </a>
                  </li>
             
                @if(Auth::check())
                             
                              @if(session('type') =="leader")
                              <li>
                                <a href="coca">
                                    <span class="ti-clipboard" style="font-size: 15px;"></span>
                                    <span>COCA</span>
                                </a>
                            </li>
                            <li>
                              <a href="overtime">
                                  
                                  <i class="ti-clipboard"></i>
                                  <span>OVERTIME</span>
                              </a>
                          </li>
                          @endif
                          @if( session('type') == "admin" )
                          <li>
                            <a href="coca">
                                <span class="ti-clipboard" style="font-size: 15px;"></span>
                                <span>COCA</span>
                            </a>
                        </li>
                        <li>
                          <a href="overtime">
                              
                              <i class="ti-clipboard"></i>
                              <span>OVERTIME</span>
                          </a>
                      </li>
                            <li>
                                <a href="announce">
                                    
                                    <i class="fa-solid fa-bell"></i>
                                    <span>ANNOUNCEMENT</span>
                                </a>
                            </li>
                            <li>
                              <a href="adminaccounts">
                                  <span class="ti-id-badge" style="font-size: 15px;"></span>
                                  <span>ADMIN ACCOUNTS</span>
                              </a>
          
                          </li>
                          <li>
                              <a href="useraccounts">
                                  <span class="ti-id-badge" style="font-size: 15px;"></span>
                                  <span>USER ACCOUNTS</span>
                              </a>
          
                          </li>
          
                        
                              @endif
                              @endif
               
                 
                  <li>
                      <a href="/adminLogout">
                          <i class="fa-solid fa-right-from-bracket" style="font-size: 15px;"></i>
                          <span>LOG OUT</span>
                      </a>
  
                  </li>
              </ul> 
          </div>
      </div>
      
   