@extends('form2')
@section('contents')
    <div class="main-contents">
        @php
            use App\Models\allProjects;
            use App\Models\Employee;
            use App\Models\Roles;
            use App\Models\Campaign;
            use App\Models\Cocas;
            use App\Models\Accomplishments;
        @endphp
        <style>
            h1 {
                text-align: center;
            }
        </style>
        {{-- @foreach ($data as $datas)
            @php
                $accomplishment = Accomplishments::find($datas->coca_id);
            @endphp
        @endforeach --}}
        <h1>A c o m p l i s h m e n t</h1>
        <ul class="nav nav-tabs" id="myTab" role="tablist" style="padding-left: 70px">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
                    role="tab" aria-controls="home" aria-selected="true"> List of Tasks </button>
            </li>
            @if (Auth::check())
                @if (session('type') == 'admin'||session('type')=='leader')
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact"
                            type="button" role="tab" aria-controls="contact" aria-selected="false">Add Task</button>
                    </li>
                @endif
            @endif
        </ul>
        <div class="tab-content" id="myTabContent" style="padding-left: 70px">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="activity-card">
                    @if($data != "no task is set.")
                    <table class="table table-striped" style="margin-top:20px;" id="table">
                        <thead style="background-color: #171742;">
                            <tr>
                                <th style="text-align: center">Task </th>
                                <th style="text-align: center">Activity / Accomplishment</th>
                                <th style="text-align: center">Status</th>
                                @if (Auth::check())
                                    @if (session('type') == 'admin' || session('type') == 'leader')
                                        <th>Action</th>
                                    @endif
                                @endif
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                @foreach ($data as $datas)
                                    <td class="DATA">{{ $datas->task }}</td>
                                    <td class="DATA">{{ $datas->accomplishment }}</td>
                                    <td class="DATA">{{ $datas->status }}</td>
                                    
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
                        </tbody>
                    </table>
                    @else
                    <p>No data Found!</p>
                    @endif
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
                                    <form method="POST" action="/addAccomplishment">
                                        @csrf
                                        <!-- 2 column grid layout with text inputs for the first and last names -->
                                        <div class="row">
                                            <div class="col-md-8 " style="margin-left: 15%">
                                                <div class="row">
                                                    <div class="col-md-6  ">
                                                        <textarea style="text-align: center;" type="text" name='task'
                                                            id="form3Example1" class="form-control" ></textarea>
                                                        <label class="form-label" for="form3Example1">Tasks</label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input style="text-align: center;" type="text"
                                                            name='accomplishment'id="form3Example2" class="form-control" />
                                                        <label class="form-label" for="form3Example2">Activity / Accomplishment</label>
                                                    </div>
                                                    <div class="col-md-6">

                                                        <input style="text-align: center;" type="text" name='status'
                                                            id="form3Example3" class="form-control" />
                                                        <label class="form-label" for="form3Example3">Status</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <input style="text-align: center;" type="text" name="uid" value="{{ $request->query('uid') }}" hidden>
                                            <button type="submit" class="btn btn-primary btn-block"
                                                style="width: 200px; margin-left:42.5%; margin-top: 20px;">
                                                Add Task
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
