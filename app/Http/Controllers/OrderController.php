<?php

namespace App\Http\Controllers;

use Session;
use App\Product;
use App\Cart;
use App\Order;
use Stripe\Charge;
use Stripe\Stripe;   
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;

class ProductController extends Controller
{
    public function getIndex(){

    	$orders = Order::all();
    	return view('user.profile', ['orders' => $orders]);
    }

}

    
