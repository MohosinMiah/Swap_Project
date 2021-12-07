 
@extends('dashboard.index')


@section('title') Add New Product @stop

@section("header_style")

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha256-aAr2Zpq8MZ+YA/D6JtRD3xtrwpEz2IqOS+pWD/7XKIw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha256-OFRAJNoaD8L3Br5lglV7VyLRf0itmoBzWUoM+Sji4/8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js" integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput-angular.min.js" integrity="sha512-KT0oYlhnDf0XQfjuCS/QIw4sjTHdkefv8rOJY5HHdNEZ6AmOh1DW/ZdSqpipe+2AEXym5D0khNu95Mtmw9VNKg==" crossorigin="anonymous"></script>

    <style type="text/css">
      .bootstrap-tagsinput{
          width: 100%;
      }
      .label-info{
          background-color: #17a2b8;

      }
      .label {
          display: inline-block;
          padding: .25em .4em;
          font-size: 75%;
          font-weight: 700;
          line-height: 1;
          text-align: center;
          white-space: nowrap;
          vertical-align: baseline;
          border-radius: .25rem;
          transition: color .15s ease-in-out,background-color .15s ease-in-out,
          border-color .15s ease-in-out,box-shadow .15s ease-in-out;
      }
  </style>
@stop 

@section('main_body')
 
 <!-- Main Content -->
 <div id="content">

     {{--  Include Toolbar   --}}
  
     @include('dashboard.include.toolbar')


    <!-- End of Topbar -->

    <!-- Begin Page Content -->
    <div class="container-fluid">



         {{-- Display Error Message  --}}
         <div class="row">
            <div class="col-md-12">
        
               {{-- Display Error Message  --}}
              @include('seller.error.error')
            
            </div>
          </div>
          

        <div class="row">

        <div class="col-md-2"></div>
        <div class="col-md-8">

          <h2 class="text-center">Mobile Category </h2>
                  <!-- Content Row -->
            <div class="card">
                <div class="card-body">
                   
            <form method="POST" action="{{ route('admin.mobileCategory_create_store')}}" enctype="multipart/form-data">
                @csrf

                <div class="form-group">
                  <label for="category_id">Category *</label>
                  <select class="form-control" id="category_id" name="category_id" required>
                    <option selected>Select Category</option>
                         
                    @foreach ($data['categories'] as $category)

                    <option value="{{ $category->id }}" @if($category->name == "Mobile") selected @endif >{{ $category->name }}</option>

                    @endforeach
                    
           
                  </select>
                </div>

                <div class="form-group">
                  <label for="brand">Brand *</label>
                  <select class="form-control" id="brand" name="brand_id" required>
                    <option selected>Select Brand</option>
                         
                    @foreach ($data['brands'] as $brand)

                    <option value="{{ $brand->id }}" >{{ $brand->name }}</option>

                    @endforeach
                    
           
                  </select>
                </div>

                
                <div class="form-group">
                  <label for="mobile_model">Model Name *</label>
                  <input type="text" class="form-control" id="mobile_model" name="mobile_model" placeholder="Model Name " required>
                </div>


                <div class="form-group">
                  <label for="name"> Image *</label>
                  <input type="file" class="form-control" id="image" name="image"  required>
                </div>

                 <hr>
           <h3 class="text-center">Choose a Variant</h3>
    
            <div class="form-group">
              <label for="ram_rom">RAM | ROM *</label>
              <input type="text" class="form-control" id="ram_rom" name="ram_rom" data-role="tagsinput" >
            </div>

            <div class="form-group">
              <label for="sim">SIM *</label>
              <input type="text" class="form-control" id="sim" name="sim" data-role="tagsinput" >
            </div>

         
            {{--  <div class="form-group">
              <label for="camera">Camera *</label>
              <input type="text" class="form-control" id="camera" name="camera" data-role="tagsinput"   required>
            </div>

            <div class="form-group">
              <label for="processor">Processor *</label>
              <input type="text" class="form-control" id="processor" name="processor" data-role="tagsinput"   required>
            </div>

            <div class="form-group">
              <label for="battery">Battery *</label>
              <input type="text" class="form-control" id="battery" name="battery" data-role="tagsinput"   required>
            </div>  --}}

            <hr>
            <h3 class="text-center">Prices Upto</h3>
            <div class="form-group">
              <label for="prices">Prices *</label>
              <input type="text" class="form-control" id="prices" name="prices"  required>
            </div>
            <hr>
            <h3 class="text-center">Specifications</h3>
     
             <div class="form-group">
               <label for="specificationram_rom">RAM | ROM *</label>
               <input type="text" class="form-control" id="specificationram_rom" name="specificationram_rom" data-role="tagsinput"  >
             </div>
    
             <div class="form-group">
               <label for="specificationsim">SIM *</label>
               <input type="text" class="form-control" id="specificationsim" name="specificationsim" data-role="tagsinput" >
             </div>

             <div class="form-group">
               <label for="specificationcamera">Camera *</label>
               <input type="text" class="form-control" id="specificationcamera" name="specificationcamera" data-role="tagsinput" >
             </div>
 
             <div class="form-group">
               <label for="specificationprocessor">Processor *</label>
               <input type="text" class="form-control" id="specificationprocessor" name="specificationprocessor" data-role="tagsinput" >
             </div>
 
             <div class="form-group">
               <label for="specificationbattery">Battery *</label>
               <input type="text" class="form-control" id="specificationbattery" name="specificationbattery" data-role="tagsinput"  >
             </div>
 

                <button type="submit" class="btn btn-primary">ADD NEW</button>
              </form>

       
            </div>
        </div>
    </div>
        </div>
  
        <div class="col-md-2">

        </div>

    

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<script type="text/javascript">

  $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
    });

  $(document).ready(function () {
  $('#category_id').on('change',function(e) {
  var category_id = e.target.value;

  console.log(category_id);

  $.ajax({
      url:"{{ route('admin.ajax_brands') }}",
      type:"POST",
      data: {
        _token: '{{csrf_token()}}',
        category_id: category_id
      },
  success:function (data) {
  $('#brand').empty();
  $('#brand').append('<option selected>Select Brand</option>');
  $.each(data.brands,function(index,brand){
        $('#brand').append('<option value="'+brand.id+'">'+brand.name+'</option>');
        })
  }
  })
  });
  });
  </script>


 @stop
 