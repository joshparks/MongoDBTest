<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>Person Management</title>
	
	<!-- jquery -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<!-- page specific -->
	<link rel="stylesheet" href="resources/css/person.css" />
	<script src="resources/js/person.js"></script>

</head>

<body>

	<%@ include file="header.jsp"%>

	<div class="container-fluid">

		<div class="row">
			<div class="col-xs-12">

				<div class="panel-group" id="accordion" role="tablist">
					
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> Review People </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel">
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-12">
										<table class="table table-bordered" id="person-table">
											<thead>
												<tr>
													<th>ID</th>
													<th>FIRST NAME</th>
													<th>LAST NAME</th>
													<th>AGE</th>
													<th>(-)</th>
												</tr>
											</thead>
											<tbody>
												<!-- Auto-Populated -->
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> Add Person </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel">
							<div class="panel-body">
								<form>
									<div class="form-group">
										<label for="exampleInputEmail1">First Name:</label> 
										<input type="text" class="form-control" id="personFirstNameInput" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Last Name:</label> 
										<input type="text" class="form-control" id="personLastNameInput" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Age:</label> 
										<input type="number" class="form-control" id="personAgeInput" />
									</div>
									<button type="submit" class="btn btn-default" onclick="personModule.addPersonSubmit()">Submit</button>
								</form>
							</div>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"> Update Person </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"	role="tabpanel">
							<div class="panel-body">Panel 3 body</div>
						</div>
					</div>
					
				</div>

			</div>
		</div>

	</div>

	<script>
		personModule.init();
	</script>

</body>

</html>