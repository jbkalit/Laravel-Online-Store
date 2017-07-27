<!doctype <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>@yield('title')</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

    <link rel="stylesheet" href="{{ URL::to('css/app.css') }}">

    <link rel="stylesheet" href="{{ URL::to('css/header.css') }}">

	@yield('styles')
</head>
<body>
	@include('partials.header')

	<div class="container">
    @yield('content')
	</div>

	<script
	src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>

	<script 
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
	crossorigin="anonymous"></script>



	@yield('scripts')

	<footer>Created By Papergrass</footer>

</body>
</html>