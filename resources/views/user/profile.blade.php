@extends('layout.master')

@section('content')
 <h1>User Profile</h1>
 <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">
	<div class="row">
        <div class="col-md-8 col-md-offset-2">
           
            <h2>My Orders</h2>
            @foreach($orders as $order)
                <div class="panel panel-default">
                    <div class="panel-body">
                        <ul class="list-group">
                            @foreach($order->cart->items as $item)
                                <li class="list-group-item">
                                    <span class="badge">Rp {{ $item['price'] }}</span>
                                    {{ $item['item']['title'] }} | {{ $item['qty'] }} Units
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="panel-footer">
                        <strong>Total Price: Rp {{ $order->cart->totalPrice }}</strong>
                    </div>
                </div>
            @endforeach
        </div>
</div>
 <img class="batas" src="http://imageshack.com/a/img921/1685/c9hajn.png">
@endsection