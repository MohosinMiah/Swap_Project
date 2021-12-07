  
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  
  
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/global.css')}}">

<link rel="icon"  type="image/gif" href="{{ URL::asset('images/favicon.jpg')}}" sizes="16x16">

    @yield('css')
    <title>LiveLink</title>
  </head>
  <body>

    <header>
      <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-md-7 py-4">
              <h4 class="text-white">About Us</h4>
              <p class="text-white">LiveLink is a digital platform where any buyer or seller can buy and sell any product hassle-free.

                LiveLink started its journey on April 01, 2021. LiveLink is working towards achieving maximum customer and seller satisfaction.
                
                The main goal of LiveLink is to achieve buyer and seller satisfaction by providing maximum service. LiveLink works with products such as phones, laptops, bicycles items, and so on. Usually, we are primarily dealing with phones & laptops – buying or selling or exchange and fashion items.
                
                In short, LiveLink is a digital platform that offers customers a secure and hassle-free buying or selling, or exchange experience in the shortest possible time with special benefits.</p>
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
              <h4 class="text-white">Contact</h4>
              <ul class="list-unstyled">
                <li><a href="https://www.livelinkbd.com/" class="text-white">Back To Main</a></li>
                <li><a href="#" class="text-white">Join Facebook</a></li>
                <li><a tel="+8801322614030" class="text-white">Hotline Number : 01322614030</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a  href="http://www.livelinkbd.com/" class="navbar-brand d-flex align-items-center logo">
             <img src="{{  URL::asset('/images/logo.png') }}" alt="Live Link BD Dashboard ">
            <strong></strong>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
      </div>
    </header>