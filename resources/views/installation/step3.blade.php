

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
	                @if (session()->has('error'))
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-md-12">
                            <div class="alert alert-danger">
                                <strong>Invalid Database Credentials!! </strong>Please check your database credentials
                                carefully
                            </div>
                        </div>
                    </div>
                @endif
           <form method="POST" action="{{ route('install.db') }}">
                        @csrf
                        <div class="form-group">
                            <label  class="float-left mb-0" for="db_host">Database Host</label>
                            <input type="text" class="form-control border-primary" id="db_host" name="DB_HOST" required
                                   autocomplete="off" value="Localhost">
                            <input type="hidden" name="types[]" value="DB_HOST">
                        </div>
                        <div class="form-group">
                            <label  class="float-left mb-0" for="db_name">Database Name</label>
                            <input type="text" class="form-control border-primary" id="db_name" name="DB_DATABASE" required
                                   autocomplete="off" ">
                            <input type="hidden" name="types[]" value="DB_DATABASE">
                        </div>
                        <div class="form-group">
                            <label  class="float-left mb-0" for="db_user">Database Username</label>
                            <input type="text" class="form-control border-primary" id="db_user" name="DB_USERNAME" required
                                   autocomplete="off">
                            <input type="hidden" name="types[]" value="DB_USERNAME">
                        </div>
                        <div class="form-group">
                            <label  class="float-left mb-0" for="db_pass">Database Password</label>
                            <input type="password" class="form-control border-primary" id="db_pass" name="DB_PASSWORD"
                                   autocomplete="off">
                            <input type="hidden" name="types[]" value="DB_PASSWORD">
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
                    <li>Database Host Name</li>
                    <li>Database Name   .</li>
                    <li>Database Username</li>
                    <li>Database Password</li>
                </ul>
                <h2>Checking Some Permissions</h2>
				<ul>
                    <li>Php version 7.4 +</li>
                    <li>Curl Enabled</li>
                    <li>.env File Permission</li>
                    <li>RouteServiceProvider.php File Permission</li>
                </ul>
			</div>
			
		</div>
	</div>
</div>


</body>
</html>
