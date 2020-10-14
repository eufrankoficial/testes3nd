<!DOCTYPE html>
<html>
<head>
	<title>{{ !isset($title) ? 'home' : $title }}</title>
	    <meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/default.min.css') }}">

</head>
<body>

	<div id="app">

		<topo-component></topo-component>
			
				<menu-component></menu-component>
			

		<section class="conteudo">
			<router-view></router-view>
			@yield('conteudo')
		</section>
		
	</div>

	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<script src="{{ asset('assets/js/app.bundle.js') }}"></script>
	
</body>
</html>