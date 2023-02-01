@extends('form2')

@section('contents')

<div class="container">
    <h2>Overtime<h2>
    <ul class="responsive-table">
      <li class="table-header">
        <div class="col col-1">Name Of Campaign</div>
        <div class="col col-2 " >Team Leader</div>
        <div class="col col-3">Total Number of Positions</div>
        <div class="col col-4 ">Number of Personnel </div>
      </li>
      <li class="table-row">
        <div class="col col-1" ><a href="month">UNION BANK Delivery</a></div>
        <div class="col col-2" data-label="Team Leader"></div>
        <div class="col col-3" data-label="Total Number of Positions"></div>
        <div class="col col-4" data-label="Number of Personnel "></div>
      </li>
     
    </ul>
  </div>