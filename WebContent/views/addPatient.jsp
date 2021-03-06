<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript"
	src="../js/vendor/bootstrap/bootstrap.js"></script>

<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css">
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
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="doctorHome.jsp">Home</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="logout.req">Logout <span
									class="sr-only">(current)</span></a></li>
							
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
        
		<!-- Body. Start modifying from here -->
            
		<form name='pregistration' action='addPatient.req' method="post" onsubmit="return checkAll()">
			<div class="form-group">
				<label for="uname">User Name</label> <input type="text" name='uname'
					class="form-control" id="uname"
					placeholder="Enter desired user name" autofocus="autofocus"onchange="checkUserName(this.value)">
			<!--  -->
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input type="password" name='pwd'
					class="form-control" id="pwd"
					placeholder="Enter your desired password" onchange="checkPassword(this.value)">
			<!--   -->
			</div>
			<div class="form-group">
				<label for="cpwd">Confirm Password</label> <input type="password" name='cpwd'
					class="form-control" id="cpwd"
					placeholder="Enter your password again"  onchange="checkMatchPassword()" disabled>
					<!--  -->
			</div>
			
			<div class="form-group">
				<label for="fname">First Name</label> <input type="text"
					name='fname' class="form-control" id="fname"

					placeholder="Enter your first name" onchange="checkName(document.pregistration.fname.value)" >
					<!--  -->
			</div>
			<div class="form-group">
				<label for="lname">Last Name</label> <input type="text" name='lname'
					class="form-control" id="lname" placeholder="Enter your last name" onchange="checkName(document.pregistration.lname.value)">
					<!--  -->
			</div>
			<div class="form-group">
				<label for="gender">Gender</label><br/> 
				<input type="radio" name="gender"  value="Male"/>Male
                <input type="radio" name="gender"  value="female"/>Female


			</div>
			<div class="form-group">
				<label for="age">Age</label> <input type="number" name='age'
					class="form-control" id="age"

					placeholder="Enter your age in years" >
					<!-- onchange="checkEmail(this.value)" -->
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" name='email'
					class="form-control" id="email"

					placeholder="Enter your email address" onchange="checkEmail(this.value)">
					<!--  -->
			</div>
			<div class="form-group">
				<label for="mobilenumber">Mobile Number</label> <input type="text" name='mobilenumber'
					class="form-control" id="mobilenumber"
					placeholder="Enter your mobile number" >
					<!-- onchange="checkMobileNumber(this.value)" -->
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input type="text" name='address'
					class="form-control" id="address"
					placeholder="Enter your Address" onchange="checkAddress(this.value)">
					<!--  -->
			</div>
			<div class="form-group">
				<label for="zipcode">Zip Code</label> <input type="number" name='zipcode'
					class="form-control" id="zipcode"
					placeholder="Enter your password again" >
					<!-- onchange="checkZipCode(this.value)" -->

			</div>
			
			
			<button type="submit" class="btn btn-default">Submit</button>
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