<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Auth;

class UserController extends Controller
{
    public function getSignup()
    {
    	return view('user.signup');
    }

    public function showAbout()
    {
        return view('user.about');
    }

    public function postSignup(Request $request)
    {
    	$this->validate($request, [
    		//'name' => 'name|required',
    		'email' => 'email|required|unique:users',
    		'password' => 'required|min:4'
    	]);

    	$user = new User([
    		'name' => $request->input('name'),
    		'email' => $request->input('email'),
    		'password' => bcrypt($request->input('password'))
    	]);
    	$user->save();

    	Auth::login($user);

    	return redirect()->route('user.profile');
    }

    public function getSignin()
    {
    	return view('user.signin');
    }



    public function postSignin(Request $request)
    {
    	$this->validate($request, [
    		'email' => 'email|required',
    		'password' => 'required|min:4'
    	]);

    	if (Auth::attempt(['email'=>$request->input('email'), 'password' => $request->input('password')])){
    		return redirect()->route('user.profile');
    	}

    	return redirect()->back();
    }

    public function getProfile() 
    {
        $orders = Auth::user()->orders;
        $orders->transform(function($order, $key) {
            $order->cart = unserialize($order->cart);
            return $order;
        });
        

        return view('user.profile', ['orders' => $orders]);
    }

    public function getLogout()
    {
    	Auth::logout();
    	return redirect()->route('product.index');
    }

}
