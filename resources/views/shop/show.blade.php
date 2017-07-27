@extends('layout.master')

@section('title')
    Papergrass Online Store
@endsection

@section('content')
    @if(Session::has('success'))
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                <div id="charge-message" class  ="alert alert-success">
                    {{ Session::get('success') }}
                </div>
            </div>
        </div>
    @endif
    <h2>Produk</h2>
    <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">
    <div class="row">
        <div class="col-md-5 col-sm-2"> 
        <img src="{{$product->imagePath}}" alt="..." class="img-responsive">
        </div>
        <div class="col-md-7 col-sm-2">
            <div class="thumbnail">
                <div class="caption">
                <h3>{{$product->title}}</h3>
                <p class="description">{{$product->
                description}}</p>
                <div class="clearfix">
                <div class="pull-left price">Rp {{$product->price}}</div>
                <a href="{{ route('product.addToCart', ['id' => $product->id]) }}" class="btn btn-success pull-right" role="button ">Tambah</a>
                </div>
                
                </div>
            </div>
        </div>
        
    </div>
    <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">
@endsection