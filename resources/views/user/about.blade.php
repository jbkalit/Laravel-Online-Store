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
	
    <h2>About</h2>
    <section class="hero">    
     <div class="logo"><img src="http://imageshack.com/a/img922/2651/w0Ziba.png"></div>
    </section>

    <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">
    <p>Produk ini kembangkan oleh 4 mahasiswa :</p>
    <div class="row">
    	<div class="col-md-3 col-sm-6">
            <div class="thumbnail">
                

        
                <img src="https://cdn0.rubylane.com/shops/1033190/735.1L.jpg" alt="..." class="img-responsive">
                <div class="caption">
                <h4>Yan Pane</h4>
                <div class="clearfix">
                </div>
            </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnail">
                
                
                <img src="https://cdn0.rubylane.com/shops/1033190/735.1L.jpg" alt="..." class="img-responsive">
                <div class="caption">
                <h4>Yusuf Pangaribuan</h4>
                <div class="clearfix">
                </div>
            </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnail">
                

                
                <img src="https://cdn0.rubylane.com/shops/1033190/735.1L.jpg" alt="..." class="img-responsive">
                <div class="caption">
                <h4>Josua Simanungkalit</h4>
                <div class="clearfix">
                </div>
            </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnail">
                

                
                <img src="https://cdn0.rubylane.com/shops/1033190/735.1L.jpg" alt="..." class="img-responsive">
                <div class="caption">
                <h4>Gracia Hutapea</h4>
                <div class="clearfix">   
            </div>
        </div>
    </div>
    </div>

</div>
     <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">

     
     
@endsection