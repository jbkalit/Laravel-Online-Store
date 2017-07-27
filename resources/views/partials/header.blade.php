

<nav class="navbar navbar-default">
    

      
        <a class="navbar-brand" href="{{ route('product.index') }}"><img src="http://imageshack.com/a/img924/8313/0XzdUT.png"></a>
        <a class="pilihan" href="#">F&A</a>
        <a class="pilihan" href="{{ route('user.about') }}">About</a>
                <ul class="nav navbar-nav">
                <li><a href="{{ route('product.shoppingCart') }}">
                    <i class="fa fa-shopping-cart" aria-hidden="true">
                        
                    </i> Keranjang <span class="badge">{{ Session::has('cart') ? Session::get('cart')->totalQty : '' }}</span>
                    </a>
                    </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> @if(Auth::check())
                            Hi, {{Auth::user()->name}}
                        @else
                        Akun
                        @endif  
                    <span class="cart"></span></a>
                    <ul class="dropdown-menu">  
                    @if(Auth::check())
                        <li><a href="{{ route('user.profile') }}">Profil</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="{{ route('user.logout') }}">Keluar</a></li>
                    @else
                         <li><a href="{{ route('user.signup') }}">Daftar</a></li>
                        <li><a href="{{ route('user.signin') }}">Masuk</a></li>
                    @endif
                       
                        
                    </ul>
                </li>
            </ul>
    
    </div>
</nav>