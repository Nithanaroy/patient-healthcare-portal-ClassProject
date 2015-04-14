<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript" src="../js/vendor/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">
</head>
<% if(session.getAttribute("userType")!=null){
	if(session.getAttribute("userType").equals("patient")){ %>
<body>
	<div class='container'>
		<header>
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="patientHome.jsp">Patient Healthcare</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="viewDoctors.jsp">View Doctors</a></li>
							<li><a href="TreatmentRequest.jsp">Treatment Request <span
									class="sr-only">(current)</span></a></li>
							<li><a href="viewPatient.req">Personal Profile <span
									class="sr-only">(current)</span></a></li>
							<li><a href="helpPatient.jsp"> Help <span class="sr-only">(current)</span></a></li>
							<li><a href="logout.req">Logout <span class="sr-only">(current)</span></a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->

		<div class="alert alert-info alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			${status.message}
		</div>

		<!-- All modifications should end here -->

		<footer class='row'>
			<p class='text-center'>Copyrights &copy; 2015</p>
		</footer>
	</div>
</body>
<%}}
else{%>

<h2>You dont have permission to view this page</h2>
<%} %>
</html>