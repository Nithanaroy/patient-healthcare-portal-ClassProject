<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare: View Patient</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript"
	src="../js/vendor/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">
</head>
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
						<a class="navbar-brand" href="index.html">Patient Healthcare</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="#">Add Patient <span class="sr-only">(current)</span></a></li>
							<li><a href="#">View Doctors</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->

		<h1>Details of the patient</h1>

		<table
			class="table table-condensed table-hover table-bordered table-striped">
			<tr>
				<td><strong>ID</strong></td>
				<td>${patient.id}</td>
			</tr>
			
			<tr>
				<td><strong>First Name</strong></td>
				<td>${patient.firstName}</td>
			</tr>
			
			<tr>
				<td><strong>Last Name</strong></td>
				<td>${patient.lastName}</td>
			</tr>
			
			
		</table>

		<!-- All modifications should end here -->

		<footer class='row'>
			<p class='text-center'>Copyrights &copy; 2015</p>
		</footer>
	</div>
</body>
</html>