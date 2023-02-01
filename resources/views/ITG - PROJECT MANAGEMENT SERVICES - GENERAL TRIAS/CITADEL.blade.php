@extends('form')

@section('contents')



<h2>@extends('form')

@section('contents')



<h2>ITG - PROJECT MANAGEMENT SERVICES - GENERAL TRIAS/CITADEL</h2>



<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Last Name</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Name</th>
            <th>Employee No.</th>
            <th>Hire Date</th>
            <th>Project Name</th>
            <th>Designation</th>
            <th>Tenure</th>
            <th>Total IT Exp</th>
            <th>Actual Role</th>
            <th>Remarks</th>
            <th></th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach ($data as $datas)
              
        <tr>
            <td class="DATA">{{ $datas->last_name }}</td>
            <td class="DATA">{{ $datas->first_name }}</td>
            <td class="DATA">{{ $datas->middle_name }}</td>
            <td class="DATA">{{ $datas->name }}</td>
            <td class="DATA">{{ $datas->employee_number }}</td>
            <td class="DATA">{{ $datas->hire_date }}</td>
            <td class="DATA">{{ $datas->project_name }}</td>
            <td class="DATA">{{ $datas->designation }}</td>
            <td class="DATA">{{ $datas->project_name_july }}</td>
            <td class="DATA">{{ $datas->tenure }}</td>
            <td class="DATA">{{ $datas->total_it_exp}}</td>
            <td class="DATA">{{ $datas->actual_role }}</td>
            <td class="DATA">{{ $datas->remarks }}</td>

            <td>
                <a href="#editclient" class="btn btn-success" data-bs-toggle="modal"><i class="fa fa-edit">
             </i> Edit</a>
             <a href="#deleteClient" class="btn btn-danger" data-bs-toggle="modal"><i class="fa-solid fa-trash"></i>
                Delete</a>
                @include('modal')
               
             </td>

        </tr>
        @endforeach 

        <tbody>
    </table>
</div>



