@extends('layout.master')

@section('title')
    Papergrass Online Store
@endsection

@section('content')
    @if(Session::has('success'))
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                <div id="charge-message" class="alert alert-success">
                    {{ Session::get('success') }}
                </div>
            </div>
        </div>
    @endif
    
    <section class="hero">
     <div class="logo"><img src="http://imageshack.com/a/img922/2651/w0Ziba.png"></div>
    </section>

    <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">

    <div class="row">
        @foreach($products as $value)
        <div class="col-md-3 col-sm-6">
            <div class="thumbnail">
                

                <a href="{{ route('product.show', ['id' => $value->id]) }}"><img src="{{$value->imagePath}}" alt="..." class="img-responsive"></a>
                <h4>{{$value->title}}</h4>
               
            </div>
        </div>
         @endforeach     
    </div>


     <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">

     
     
@endsection