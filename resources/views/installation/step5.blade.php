

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
             <form method="POST" action="{{ route('system_settings') }}">
                        @csrf

                        <div class="form-group">
                            <label class="float-left mb-0" for="name">Admin Name</label>
                            <input type="text" class="form-control border-primary" id="name" name="name" required>
                        </div>

                        <div class="form-group">
                            <label class="float-left mb-0" for="email">Admin Email</label>
                            <input type="email" class="form-control border-primary" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label class="float-left mb-0" for="phone">Mobile Phone</label>
                            <input type="number" class="form-control border-primary" id="phone" name="phone" required>
                        </div>

                        <div class="form-group">
                            <label class="float-left mb-0" for="password">Admin Password</label>
                            <input type="text" class="form-control border-primary" id="password" name="password" required>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-info">Continue</button>
                        </div>
                    </form>
	
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h2>What’s Required?</h2>
				<ul>
                    <li>Admin Name</li>
                    <li>Email</li>
                    <li>Phone Number</li>
                    <li>Database Password</li>
                </ul>
              
			</div>
			
		</div>
	</div>
</div>


</body>
</html>