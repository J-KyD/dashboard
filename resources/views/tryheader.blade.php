<div>


<tr>
  

  <td> NAME OF CAMPAIGN</td>

  <td>{{ $data['many'][0]->name_of_campaign }}</td>

</tr>
<tr>
  <td> EMPLOYEE NAME</td>
  @if($data['solo'] == '1')


  <td>{{ $data['many'][0]->employee_name }}</td>
  @else    
  <td>Refer to List of names under Activities</td>
  @endif
</tr>  

<tr>
  <td> NUMBER OF HOURS  </td>
 

</tr>   
<tr>
  <td> BILLABLE AMOUNT  </td>
 

</tr>  
<tr>
  <td> BILLING ADDRESS  </td>
 

</tr> 
<tr>
  <td>   </td>
 

</tr> 
<tr>
  @if($data['solo'] != '1')
  <td> ACTIVITY/IES 
    @foreach ($data['many'] as $item)
    <br> 
    {{ $item->employee_name }}
    
    @endforeach
  
  </td>
  <td>@foreach ($data['many'] as $item)
    
    {{ $item->activity }}
    <br> 
    @endforeach </td>
 
  @else    
  <td>{{ $data['many'][0]->activity }}</td>
  @endif

</tr> 


</div>