<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
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
				<a class="navbar-brand" href="patientHome.jsp">Home</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							
							<li><a href="logout.req">Logout <span
									class="sr-only">(current)</span></a></li>
									
							<li></li>
						</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav> </header>

		<!-- Body. Start modifying from here -->
		<%@ page import="edu.asu.se.model.*"%>
		<%
			Patient p = (Patient) request.getAttribute("patient");
		%>
		<form name='editpatient' action='editPatient.req' method="post"
			onsubmit="return checkAll()">
			<div class="form-group">
				<label for="uname">User Name</label> <input type="text" name='uname'
					class="form-control" id="uname"
					placeholder="Enter desired user name" value=<%=p.getUserName()%>
					disabled>
					
				<!-- onchange="checkUserName(this.value)" -->
			</div>			

			<div class="form-group">
				<label for="fname">First Name</label> <input type="text"
					name='fname' class="form-control" id="fname"
					placeholder="Enter your first name" autofocus="autofocus"
					value=<%=p.getFirstName()%>>
				<!-- onchange="checkName(document.pregistration.fname.value)" -->
			</div>
			<div class="form-group">
				<label for="lname">Last Name</label> <input type="text" name='lname'
					class="form-control" id="lname" placeholder="Enter your last name"
					value=<%=p.getLastName()%>>
				<!-- onchange="checkName(document.pregistration.lname.value)" -->
			</div>


			<div class="form-group">
				<label for="gender">Gender</label><br />
				<%
					if (p.getGender().equals("Male")) {
				%>
				<input type="radio" name="gender" value="Male"checked />Male <input
					type="radio" name="gender" value="female" />Female
				<%
					}
				%>
				<%
					if (p.getGender().equals("female")) {
				%>
				<input type="radio" name="gender" value="Male" />Male
				<input type="radio" name="gender" value="female" checked/>Female
				<%
					}
				%>
				

			</div>
			<div class="form-group">
				<label for="age">Age</label> <input type="text" name='age'
					class="form-control" id="age" placeholder="Enter your age in years" value=<%=p.getAge()%>>
				<!-- onchange="checkEmail(this.value)" -->
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" name='email'
					class="form-control" id="email"
					placeholder="Enter your email address"value=<%=p.getEmail()%>>
				<!-- onchange="checkEmail(this.value)" -->
			</div>
			<div class="form-group">
				<label for="mobilenumber">Mobile Number</label> <input type="text"
					name='mobilenumber' class="form-control" id="mobilenumber"
					placeholder="Enter your mobile number"value=<%=p.getMobileNumber()%>>
				<!-- onchange="checkMobileNumber(this.value)" -->
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input type="text"
					name='address' class="form-control" id="address"
					placeholder="Enter your Address"value=<%=p.getAddress()%> >
				<!-- onchange="checkAddress(this.value)" -->
			</div>
			<div class="form-group">
				<label for="zipcode">Zip Code</label> <input type="text"
					name='zipcode' class="form-control" id="zipcode"
					placeholder="Enter your password again" value=<%=p.getZipCode()%>>
				<!-- onchange="checkZipCode(this.value)" -->

			</div>


			<button type="submit" class="btn btn-default">Update</button>
		</form>


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
