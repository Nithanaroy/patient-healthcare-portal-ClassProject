<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<a class="navbar-brand" href="patientHome.jsp">Home</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							
							<li><a href="logout.req">Logout <span
									class="sr-only">(current)</span></a></li>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->
		<h3 class='bmargin20'>List of available doctors</h3>
		<!-- TODO: This is dummy  -->
		<input type="search" class="form-control bmargin20" placeholder="filter doctors" autofocus>
		<!-- TODO: Refactor this piece -->
		<%@ page import="edu.asu.se.model.*"%>
		<%@ page import="java.util.ArrayList"%>
		<%!DoctorDAO dao = new DoctorDAO();
	ArrayList<Doctor> doctorList = dao.getAllDoctors();%>
		<table
			class="table table-condensed table-hover table-bordered table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Speciality</th>
					<th>Success Rate</th>
				</tr>
			</thead>
			<%
				for (int i = 0; i < doctorList.size(); i++) {
					String firstName = doctorList.get(i).getFirstName();
					String speciality = doctorList.get(i).getSpeciality();
					String successRate = doctorList.get(i).getSuccessRate();
			%>
			<tr>

				<td><%=firstName%></td>
				<td><%=speciality%></td>
				<td><%=successRate%></td>
			</tr>

			<%
				}
			%>
		</table>
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