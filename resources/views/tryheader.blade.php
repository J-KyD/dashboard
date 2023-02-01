<div>

  <form method="POST" action="uploadImage" enctype="multipart/form-data">
    @csrf
    <input type="file" name="image" >
    <button type="submit"> submit </button>
    @if(session('status'))
    <div class="alert alert-success">
      {{ session('status') }}
      @endif
  </form>

  @foreach ($data as $welcome )

  <h5>{{ $welcome->description }}</h5>
  <li><img src="{{ asset('announcement/toPath/'. $welcome->picture )}}"></li>
      
  @endforeach
</div>