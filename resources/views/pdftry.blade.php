<html>
<head>
  <style>
    .page-break{
        page-break-after: always;
        padding-top: 90;
    }
    .page-break1{
        page-break-after: always;
        padding-top: 30;
    }
    @page {
        size: A4 portrait;
      margin: 0;
    }
    header {
      position: fixed;
    display: block;
    width: 100%;
        opacity: .5;
        margin-left: 50px;
      color: #333;
      padding: 10px;
      height: 70px;
      

    }
    /* header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  background-image: URL('img/client-11.jpg') ;
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  padding: 30px;
} */
 
        #content {
  margin-top: 100px;
}
body {
  padding-top: 50px;
}
    
  </style>
</head>
<header>
    <img src="img/client-11.png" alt="Globe Logo" style="height:auto; width:5.68cm; margin-bottom:10px;">
    <br>
    <span style="font-size:8pt; margin-bottom: 50px;">The Globe Tower, 32nd St. cor. 7th Ave., Bonifacio Global City, Taguig City, Philippines</span>    
</header>
<body>

  <div id="content">

    <div
    style="font-family:Arial, Helvetica, sans-serif; display:flex; justify-content:center; flex-direction:column; margin: 1.31cm 1.87cm 0.49cm 2.82cm">
    <div class="page-break1">
    <div style="text-align:center;">
        <b style="font-size: 15pt;">CERTIFICATE OF COMPLETION and ACCOMPLISHMENT</b>
        <p></p>
    </div>

    <table style="font-size: 10pt; font-weight:bold; border-bottom: 2px solid black;">
        <tr>
            <td style="width:150px;">DATE</td>
            <td>:</td>
            <td>JANUARY 2023</td>
        </tr>
        <tr>
            <td>SERVICES/ PROJECT</td>
            <td>:</td>
            <td>ITG UnionBank Project Alpha</td>
        </tr>
        <tr>
            <td>LOCATION</td>
            <td>:</td>
            <td>Renaissance Tower 29 Meralco Avenue, The Renaissance Center, Pasig</td>
        </tr>
        <tr>
            <td>OWNER</td>
            <td>:</td>
            <td>UNIONBANK</td>
        </tr>
    </table>

    <table style="font-size: 10pt; font-weight:bold; border-bottom: 2px solid black; margin-bottom:25px; width:100%;">
        <tr>
            <td style="width:150px;">P.O. #</td>
            <td>:</td>
            <td>P.O. # HERE</td>
        </tr>

        <tr>
            <td>VENDOR</td>
            <td>:</td>
            <td>Asti Business Services Inc.</td>
        </tr>
        <tr>
            <td>ADDRESS</td>
            <td>:</td>
            <td>234 Bayantel Building Roosevelt Avenue Quezon City </td>
        </tr>
        <tr>
            <td>COMPLETION DATE</td>
            <td>:</td>
            <td>JANUARY 25,2023</td>
        </tr>
    </table>

    <div style="margin-bottom:20px;">
        <ol style="margin-bottom:0cm;list-style-type: upper-roman;margin-left:44px;">
            <li><b>SCOPE OF WORK</b></li>
        </ol>
    </div>
    <p><b>ACCOMPLISHMENTS</b></p>
    <p style="text-indent:50px;">Please see the attach file for the Scope of work &ndash; Accomplishment Prior to Project
        Engagement</p>
    <p>The Vendor<b>, Asti Business Services Inc.&nbsp;</b> has delivered the above services in accordance with the
        agreed scope of works and other related Contract Documents.</p>
    <p>&lt;SCOPES AND STATUS&gt;</p>


   
    

    <table style="border: 2px solid black; border-collapse:collapse; margin-bottom: 50px;">
        <thead>
            <tr style="border: 2px solid black;">
                <th style="border:2px solid black; width:20%; background:#3C85C5; color: white;">Task</th>
                <th style="border:2px solid black; width:60%; background:#3C85C5; color: white;">
                    Activity/Accomplishments</th>
                <th style="border:2px solid black; width:20%; background:#3C85C5; color: white;">Status</th>
            </tr>
        </thead>
        <tbody>

            @foreach ($data as $row)
                <tr>
                    <td style="border:2px solid black">{{ $row->name_of_campaign }}</td>
                    <td style="border:2px solid black;">{{ $row->employee_name }}</td>
                    <td style="border:2px solid black;">{{ $row->activity }}</td>
                </tr>
            @endforeach
            
        </tbody>
    </table>
    </div>

    {{-- <img src="img/client-11.jpg" alt="description of myimage" style="height:auto; width:5.68cm; margin-bottom:10px;">
    <span style="font-size:8pt; margin-bottom: 50px;">The Globe Tower, 32nd St. cor. 7th Ave., Bonifacio Global City, Taguig City, Philippines</span>     --}}
    <div class="page-break">
    <div style="margin-bottom:50px;">
        <ol style="margin-bottom:0cm;list-style-type: upper-roman;">
            <li><b>CERTIFICATION</b></li>
            <p>The Vendor certified that the Scope of Work involving delivery <b>&lt;CAMPAIGN NAME&gt;</b> has been
                delivered and made available and operational as required and provided for in the scope of works/Contract
                Documents.</p>
            <p> The Vendor likewise agrees to correct any defect associated with the delivery of the service within the
                contract period due to negligence or fault on the Vendor's part.
            <div
            style="display:font-weight: bold;">
                <div style="margin: 100px 0 50px 25px; position:relative;">
                    <img src="img/Signature-Ranel-name.jpg" alt="E-signature" style="height:auto; width:5.68cm;  bottom:10px;">
                    {{-- <div style="border-bottom: 2px solid black; width:200px; text-align:center;">RANEL OPLEDA</div>
                    <div>Service Delivery Manager</div> --}}
                </div>
            </div>
            <li><b>RECOMMENDATION</b></li>
            <p>Cognizant of the accomplishment by Vendor of the scope of work, we hereby confirm and recommend for the
                payment of this contract.</p>

            <table style="width:100%;border-collapse:collapse; margin-bottom: 50px">
                <tbody>
                    <tr>
                        <td style="width:25%;border: 1pt solid black;background: rgb(243, 243, 243);">
                            <p style='text-align:center;'><b>Sequence</b></p>
                        </td>
                        <td
                            style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">
                            <p style='text-align:center;'><b>Name</b></p>
                        </td>
                        <td
                            style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">
                            <p style='text-align:center;'><b>Role</b></p>
                        </td>
                        <td
                            style="width:25%;border-top: 1pt solid black;border-right: 1pt solid black;border-bottom: 1pt solid black;border-image: initial;border-left: none;background: rgb(243, 243, 243);padding: 5pt;vertical-align: top;">
                            <p style='text-align:center;'><b>Signature</b></p>
                        </td>
                    </tr>

                    @foreach ($data as $row)
                        <tr>
                            <td style="border:solid black 1pt;">
                                <p style='text-align:center;'>{{ $row->activity }}</p>
                            </td>
                            <td style="border:solid black 1pt;">
                                <p style='text-align:center;'>{{ $row->activity }}</p>
                            </td>
                            <td style="border:solid black 1pt;">
                                <p style='text-align:center;'>{{ $row->activity }}</p>
                            </td>
                            <td style="border:solid black 1pt;">
                                <p style='text-align:center;'>{{ $row->activity }}</p>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <li><b>ACCEPTANCE</b></li>
            <p>The Owner, Globe Telecom Inc, hereby accepts <b>Asti Business Services Inc.</b> and assumes full
                possession of the same.</p>
            <div style="display: flex; justify-content:center;">
                <span style="border-bottom: 2px solid black; width:400px; text-align:center; margin-top: 50px;"></div>
        </ol>
    </div>
</div>
    </div>
  </div>
  
  
  <!-- Your main PDF content goes here -->
</body>
</html>


