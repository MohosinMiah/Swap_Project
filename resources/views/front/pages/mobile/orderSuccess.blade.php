@extends('front.master')



@section('hero')
<section class="jumbotron text-center">
    <div class="container">
      <h1 class="text-danger">Your sell request place successfully. We will contact with you within 24 hours.</h1>
      <h4> 
          <a href="/">Back To Home</a>
      </h4>
    </div>
  </section> 
@stop



@section('main')
<div class="row">
 
  <div class="col-md-6">

   
    <img class="card-img-top" src="{{ url('/images/contact_phone.gif') }}"  alt="Contact With Phone">

  </div>
  <div class="col-md-6" style="padding: 3%">
    <h2>Contact With Us</h2>
    <p>
      Hotline Number :  <a href="tel:+8801322614030">01322614030</a>
    </p> 

    <p>
       Address: House: 16, Road: 05, Sector: 10, Uttara, Dhaka-1230
    </p>

    <p>
        E-mail: <a href="mailto:info.livelink.bd@gmail.com">info.livelink.bd@gmail.com</a>
    </p>

   <p class="text-danger">
       We always promising for better customer services.We belive customer is the king.
   </p>

  </div>
</div>


  @stop