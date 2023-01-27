
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hungry Install Processing</title>
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/installstyle.css">
</head>
<body>
    <h2>Hungry System Install Processing</h2>
<div class="container" id="container">
	
	<div style="margin: 250px 80px 100px 100px;">
	    	<a href="{{ route('import_sql') }}" class="bn632-hover bn27" onclick="showLoder()" style="padding: 20px;">Import Database</a>
	</div>
	
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Database Import</h1>
				<p>Click on "Import Database"</p>
			</div>
		</div>
	</div>
</div>
@section('scripts')
    <script type="text/javascript">
        function showLoder() {
            $('#loading').fadeIn();
        }
    </script>
@endsection

</body>
</html>