<script type="text/javascript" src="resources/js/header.js"></script>

<script>
	$(function() {
		$(".nav a").on("click", function(){
			console.log('caught click...');
		   $(".nav").find(".active").removeClass("active");
		   $(this).parent().addClass("active");
		});
	});
</script>

<nav class="navbar navbar-default">

	<div class="container-fluid">
		
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="welcome">JSPractice</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse-1">
			
			<ul class="nav navbar-nav">
				
				<li><a href="welcome">Home</a></li>
				
				<li><a href="city">City</a></li>
				
				<li><a href="jstl">JSTL</a></li>
				
				<li><a href="ngCity">ngCity</a></li>
				
				<li class="dropdown">
					
					<a href="#" class="dropdown-toggle"	data-toggle="dropdown" role="button" 
						aria-haspopup="true" aria-expanded="false">
						Pages <span class="caret"></span>
					</a>
					
					<ul class="dropdown-menu">
						<li><a href="welcome">Home</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="city">City</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="jstl">JSTL</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="ngCity">ngCity</a></li>
					</ul>
				</li>
				
			</ul>
			
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			
		</div><!-- /.navbar-collapse -->
	
	</div><!-- /.container-fluid -->
	
</nav>