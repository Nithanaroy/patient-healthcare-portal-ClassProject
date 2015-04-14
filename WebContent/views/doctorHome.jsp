<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare: Doctor Home</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript" src="../js/vendor/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">
</head>
<% if(session.getAttribute("userType")!=null){
	if(session.getAttribute("userType").equals("staff")){ %>
<body>
	<div class='container'>
		<header>
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="doctorHome.jsp">Home</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">

							<li><a href="addPatient.jsp">Add Patient</a></li>
							<li><a href="inpatientList.req">Inpatient List <span class="sr-only">(current)</span></a></li>
							<li><a href="helpDoctor.jsp"> Help <span class="sr-only">(current)</span></a></li>
							<li><a href="logout.req">Logout <span class="sr-only">(current)</span></a></li>

						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->

		<h3>Welcome Doc!</h3>


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