<html>

<head>
	<title>Welcome</title>
	
	<!-- jquery -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		
	<!-- page specific -->
	<link rel="stylesheet" type="text/css" href="resources/css/welcome.css" media="all" />
	<script type="text/javascript" src="resources/js/welcome.js"></script>
	
</head>

<body>
	
	<div class="container-fluid">

		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link">Mark Otto</a></p>
				</div>
			</div>
		</nav>

		<div class="row">
			<div class="col-xs-3"></div>
			<div class="col-xs-6">
				
				<table class="table table-bordered" id="person-table">
					<thead>
						<tr>
							<th>ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Age</th>
						</tr>
					</thead>
					<tbody>
						<!-- Auto-Populated -->
					</tbody>
				</table>
				
			</div>
			<div class="col-xs-3"></div>
		</div>	
		
		<div class="row">
			<div class="col-xs-12"></div>
		</div>	
		
		<div class="row">
			<div class="col-xs-12"></div>
		</div>	
			
	</div>
	
	<script>
		welcomeModule.init();
	</script>
	
</body>

</html>