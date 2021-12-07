@extends('front.master')



@section('hero')
<div class="row">
  <div class="col-md-12">
    <section class="jumbotron text-center" style="margin-bottom: 0rem;">
      <div class="container">
        <h1 class="jumbotron-heading">SMART PHONE</h1>
        <p class="lead text-muted">SELL YOUR SMART PHONE FOR QUICK CASH.</p>
        <!--<img class="img-fluid img-responsive" src="{{ url('/images/apple_fav.PNG') }}" alt="Smart Phone">-->
      </div>
    </section> 
  </div>
</div>
@stop



@section('main')
<div class="row">
  <div class="col-md-12">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">{{ Str::slug($data['category_name']) }}</li>
      </ol>
    </nav>
    <h2 class="text-center">Select Your Brand</h2>
  
<br>

  </div>

  @foreach ($data['brands'] as $brand )
  
  <div class="col-6 col-sm-6 col-md-2 col-lg-2">
    <div class="card mb-2 box-shadow">
      <a href="{{ route('single_brand',[Str::slug($data['category_name']),Str::slug($brand->name)]) }}" > <img class="card-img-top brand-image-top" src="{{ url('/images/'.$brand->image) }}" height="100px" alt="{{ $brand->name }}" >  </a>
      <div class="card-body">
        <p class="card-text text-center">{{ $brand->name }}</p>
      
      </div>
    </div>
  </div>

  @endforeach


</div>
  @stop

  