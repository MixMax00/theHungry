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
	
	<div class="form-container sign-in-container">
		
            <form method="POST" action="{{ route('purchase.code') }}">
                <h1>Verify System</h1>
            <br>
			<span> <a href="https://help.market.envato.com/hc/en-us/articles/202822600-Where-Is-My-Purchase-Code"
                class="text-info">Where to get purchase code?</a></span>
                @csrf
                <div class="form-group">
                    <label  class="float-left mb-0" for="purchase_code">Codecanyon Username</label>
                    <input type="text" value="" class="form-control border-primary" id="username"
                           name="username" >
                </div>

                <div class="form-group">
                    <label  class="float-left mb-0" for="purchase_code">Purchase Code</label>
                    <input type="text" value="" class="form-control border-primary" id="purchase_key"
                           name="purchase_key" >
                </div>
               <div class="text-center">
                            <button type="submit" class="btn btn-info">Continue</button>
                        </div>
            </form>
	
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Purchase Code Checker</h1>
				<p>You need to put your codecanyon
                    User Name & Purchase Code.</p>
				<ul>
                    <li>Codecanyon Username</li>
                    <li>Purchase Code</li>
                </ul>
			</div>
		</div>
	</div>
</div>


</body>
</html>