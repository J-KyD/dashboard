@extends('form2')
@section('contents')
    <div class="main-contents">
        @php
            use App\Models\allProjects;
            use App\Models\Employee;
            use App\Models\Roles;
            use App\Models\Campaign;
            use App\Models\Cocas;
        @endphp
        <style>
            h1 {
                text-align: center;
            }
        </style>
        <h1>Certificate of Completion and Accomplishment</h1>
        <ul class="nav nav-tabs" id="myTab" role="tablist" style="padding-left: 70px">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
                    role="tab" aria-controls="home" aria-selected="true"> COCA </button>
            </li>
            @if (Auth::check())
                @if (session('type') == 'admin' ||session('type')=='leader')
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact"
                            type="button" role="tab" aria-controls="contact" aria-selected="false"> Add </button>
                    </li>
                @endif
            @endif
        </ul>
        <div class="tab-content" id="myTabContent" style="padding-left: 70px">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="activity-card">
                    <table class="table table-striped" style="margin-top:20px;" id="table">
                        <thead style="background-color: #171742;">
                            <tr>
                                <th style="text-align: center">Date </th>
                                <th style="text-align: center">Services / Projects</th>
                                <th style="text-align: center">Location</th>
                                <th style="text-align: center">P.O #</th>
                                <th style="text-align: center">Vendor</th>
                                <th style="text-align: center">Address</th>
                                <th style="text-align: center">Completion Date</th>
                                <th style="text-align: center">Tasks</th>
                                @if (Auth::check())
                                    @if (session('type') == 'admin'  ||session('type')=='leader')
                                        <th>Action</th>
                                    @endif
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                @foreach ($data as $datas)
                                        <td class="DATA">{{ $datas->date }}</td>
                                        <td class="DATA">{{ $datas->services }}</td>
                                        <td class="DATA">{{ $datas->location }}</td>
                                        <td class="DATA">{{ $datas->po_number }}</td>
                                        <td class="DATA">{{ $datas->vendor }}</td>
                                        <td class="DATA">{{ $datas->address }}</td>
                                        <td class="DATA">{{ $datas->completion_date }}</td>
                                        <td class="DATA"> 
                                            <form method="GET" action="/showAccomplishment">
                                                @csrf
                                                <input type="text" name="uid" value="{{ $datas->id }}" hidden>
                                                <button type="submit" class="btn btn-primary" style="margin-top: 20px;margin-left:20px;"> Click to view Tasks </button>
                                            </form>
                                        </td>
                                        

                                        @include('coca_modal')
                                        @if (session('type') == 'admin'  ||session('type')=='leader')
                                            <td>
                                                <a href="#editEmployee{{ $datas->id }}" class="btn btn-success"
                                                    data-bs-toggle="modal" style="width:90px;"><i class="fa fa-edit">
                                                    </i> Edit</a>
                                                <form method="post" action="/deleteCoca">
                                                    @csrf
                                                    <input style="text-align: center;" type="text" name="uid"
                                                        value="{{ $datas->id }}" hidden>
                                                    <button class="btn btn-danger" type="submit"
                                                        style="margin-top: 10px;white-space: nowrap;font-size: 1rem;background-color:#dc3545;color:white;width:90px; text-align:center;padding: 0.375rem 0.75rem"><i
                                                            class="fa fa-trash">
                                                        </i>delete</button>
                                                </form>
                                            </td>
                                        @endif 
                            </tr>
                            @endforeach
                        @endif
                        </tbody>
                    </table>

                </div>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <style>
                    .cascading-right {
                        margin-right: -50px;
                    }

                    @media (max-width: 991.98px) {
                        .cascading-right {
                            margin-right: 0;
                        }
                    }
                </style>

                <div class="card-container py-4">
                    <div class="row g-0 align-items-center">
                        <div class="col-lg-12 mb-10 mb-lg-0">
                            <div class="card" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                                <div class="card-body p-5 shadow-5 text-center" id="addcampaign">
                                    <form method="POST" action="/addCoca">
                                        @csrf
                                        <!-- 2 column grid layout with text inputs for the first and last names -->
                                        <div class="row">
                                            <div class="col-md-8 " style="margin-left: 15%">
                                                <div class="row">
                                                    <div class="col-md-6  ">
                                                        <input style="text-align: center;" type="text" name='date'
                                                            id="form3Example1" class="form-control datepicker" />
                                                        <label class="form-label" for="form3Example1">Date</label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input style="text-align: center;" type="text"
                                                            name='services'id="form3Example2" class="form-control" />
                                                        <label class="form-label" for="form3Example2">Services / Projects</label>
                                                    </div>
                                                    <div class="col-md-6">

                                                        <input style="text-align: center;" type="text" name='location'
                                                            id="form3Example3" class="form-control" />
                                                        <label class="form-label" for="form3Example3">Location</label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input style="text-align: center;" type="text"
                                                            name='po_number' id="form3Example4" class="form-control" />
                                                        <label class="form-label" for="form3Example4">P.O Number</label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input style="text-align: center;" type="text"
                                                            name='vendor' id="form3Example4" class="form-control" />
                                                        <label class="form-label" for="form3Example4">Vendor</label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input style="text-align: center;" type="text"
                                                            name='address' id="form3Example4" class="form-control" />
                                                        <label class="form-label" for="form3Example4">Address</label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input style="text-align: center;" type="text" name='completion_date'
                                                            id="form3Example5" class="form-control datepicker" placeholder="M/D/Y" />
                                                        <label class="form-label" for="form3Example5">Completion Date</label>
                                                    </div>
                                                    <div class="col-md-6">

                                                    {{-- <div class="col-md-12">
                                                        @foreach ($data as $datas)
                                                            @php
                                                                $products = allProjects::find($datas->project_id);
                                                                
                                                            @endphp
                                                        @endforeach

                                                        <input style="text-align: center;" type="text" name='project'
                                                            id="form3Example6" class="form-control"
                                                            value="{{ $products->id }}" placeholder="" hidden />

                                                        <input style="text-align: center;" type="text" name=''
                                                            id="form3Example6" class="form-control"
                                                            value="{{ $products->project_name }}" placeholder=""
                                                            disabled />
                                                        <label class="form-label" for="form3Example6">Project Name</label>
                                                    </div> --}}

                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-block"
                                            style="width: 200px; margin-left:42.5%; margin-top: 20px;">
                                            Add COCA
                                        </button>
                                        @if (session('status'))
                                            <div class="alert alert-success">
                                                {{ session('status') }}
                                            </div>
                                        @endif
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Jumbotron -->
                </section>
            </div>
        </div>
    </div>
@endsection
