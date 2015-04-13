<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body>
	<div class='container'>
		<header> <nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
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
		<!-- /.container-fluid --> </nav> </header>

		<!-- Body. Start modifying from here -->
		<!------------------------------------->
		<%@ page import="edu.asu.se.model.*"%>
		<%@ page import="java.util.ArrayList"%>
		<%
			ArrayList<InpatientList> patientList =(ArrayList<InpatientList>) request.getAttribute("patientList");		    	
		%>

		<h3>Patient Appointment List</h3>
		<p>
			<br>
		</p>
		<!--br is a line break -->

		<!--- Set up of panel and table -->
		<div class="panel panel-primary">
			<!-- Default panel contents/ set to collapse the entire table and panel -->
			<div class="panel-heading">
				<dropdown type="dropdown" class="dropdown" data-toggle="collapse"
					data-target="#table-collapse">Appointment List
				</button>
			</div>
			<div id="table-collapse" class="collapse in">

				<!-- Table -->
				<table class="table table-striped table-hover table-responsive">
					<thread>
					<tr>
						<th>Patient Name</th>
						<th>Appointment Time</th>
						<th>Doctor Name</th>
					</tr>
					</thread>
					<%   		 
   		 for(int i=0;i<patientList.size();i++)
		    {
   			 %>
					<!-- Table body set up -->
					<tbody>
						<tr>
							<td>
								<div class="dropdown">
									<dropdown type="dropdown" class="dropdown-toggle"
										data-toggle="dropdown" aria-expanded="false">
							<%request.setAttribute("patientUserName", patientList.get(i).getUsername()); %>
									<button type="button" class="btn btn-link">
										<em><%=patientList.get(i).getUsername()%></em>
									</button>
									</dropdown>
									<ul class="dropdown-menu" role="menu">
										<li><a
											href="medicalHistory.jsp">Medical
												History</a></li>
									</ul>
								</div> 
							</td>
							<!-- Need a new way to set a link on the name to view medical history -->
							<td><%=patientList.get(i).getAppointmentTime()%></td>
							<td><%=patientList.get(i).getDoctorName() %></td>
							
							<!-- Appointment time and doctor name-->
						</tr>

							</tbody>
							<%} %>
					<!-- End of table body -->
				</table>
			</div>
		</div>
		<!-- End of table/panel set up -->

		<!-- All modifications should end here -->

		<footer class='row'>
		<p class='text-center'>Copyrights &copy; 2015</p>
		</footer>
	</div>
</body>
</html>