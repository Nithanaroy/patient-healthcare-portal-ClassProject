<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare: Help</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript" src="../js/vendor/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
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
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
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
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->

		<h3>Help for Patients</h3>
		<p>Click on the area you need help with to expand it.</p>
		<p>General help includes information on things such as navigating and using the toolbar.</p>

<!-- The accordion menu follows. The menu defaults to having the non-general help displayed. 
Within the 1st level accordian selections lies a nested accordion menu.
clicking on any of the titles expands the menu and closes the others.  -->

		<div class="panel-group" id="accordion1">

<!-- Patient help starts here -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion1" href="#collapse1"> <span class="glyphicon glyphicon-plus"></span> &nbsp;Patient Help
						</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="panel-group" id="accordion1_1">
						
						
						
						
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested 1:  Forms-->										
										<a data-toggle="collapse" data-parent="#accordion1_1" href="#collapse1_1"> <span class="glyphicon glyphicon-plus"></span> &nbsp;Fill and Submit Forms
										</a>
									</h4>
								</div>
								<div id="collapse1_1" class="panel-collapse collapse">
									<div class="panel-body">
									
								
										<h4><b>Navigate to Login Page and Login</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Launch the browser</li>
											<li class="list-group-item">Type the url into the address bar, press enter</li>
											<li class="list-group-item">Click 'Login' at the top right</li>
											<li class="list-group-item">Fill in username and password, submit</li>
										</ul>
										
										
										<h4><b>Navigate to ESAS Record and Complete it</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Click 'Treatment Request' on your homepage</li>
											<li class="list-group-item">Click 'Record'</li>
											<li class="list-group-item">Click 'ESAS Record'</li>
											<li class="list-group-item">Fill in mandatory fields, submit</li>
											<li class="list-group-item">If successful, a confirmation message will appear</li>
											<li class="list-group-item">If you recive an error, follow given instructions and submit again</li>
										</ul>
										
										
										<h4><b>Navigate to Body Pain Record and Complete it</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Click 'Treatment Request' on your homepage</li>
											<li class="list-group-item">Click 'Record'</li>
											<li class="list-group-item">Click 'Record Body Part'</li>
											<li class="list-group-item">Click areas that are in pain</li>
											<li class="list-group-item">If successful, a confirmation message will appear</li>
											<li class="list-group-item">If you recive an error, follow given instructions and submit again</li>
										</ul>
									</div>
								</div>
							</div>
							
							
							
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested  2: Appointments -->									
										<a data-toggle="collapse" data-parent="#accordion1_1" href="#collapse1_2"> <span class="glyphicon glyphicon-plus"></span> &nbsp;Create an Appointment
										</a>
									</h4>
								</div>
								<div id="collapse1_2" class="panel-collapse collapse">
									<div class="panel-body">
									
									
										<h4><b>Navigate to Login Page and Login</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Launch the browser</li>
											<li class="list-group-item">Type the url into the address bar, press enter</li>
											<li class="list-group-item">Click 'Login' at the top right</li>
											<li class="list-group-item">Fill in username and password, submit</li>
										</ul>
										
									
										<h4><b>Create Appointment</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Click 'Treatment Request' on your homepage</li>
											<li class="list-group-item">Click 'Create Appointment'</li>
											<li class="list-group-item">Give a desired time, submit</li>
											<li class="list-group-item">If successful, a confirmation message will appear</li>
										</ul>
									</div>
								</div>
							</div>
							
							
							

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested  3: Personal records -->									
										<a data-toggle="collapse" data-parent="#accordion1_1" href="#collapse1_4"> <span class="glyphicon glyphicon-plus"></span> &nbsp;View and Modify Personal Records
										</a>
									</h4>
								</div>
								<div id="collapse1_4" class="panel-collapse collapse">
									<div class="panel-body">
									
									
										<h4><b>Navigate to Login Page and Login</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Launch the browser</li>
											<li class="list-group-item">Type the url into the address bar, press enter</li>
											<li class="list-group-item">Click 'Login' at the top right</li>
											<li class="list-group-item">Fill in username and password, submit</li>
										</ul>
										
									
										<h4><b>View and Edit Information</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Click 'Personal Profile' on your homepage</li>
											<li class="list-group-item">Edit your information as needed, submit</li>
											<li class="list-group-item">If successful, a confirmation message will appear</li>
										</ul>
									</div>
								</div>
							</div>











							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested  3: Doctor Info -->										
										<a data-toggle="collapse" data-parent="#accordion1_1" href="#collapse1_3"> <span class="glyphicon glyphicon-plus"></span> &nbsp;View Doctor Profile
										</a>
									</h4>
								</div>
								<div id="collapse1_3" class="panel-collapse collapse">
									<div class="panel-body">
									
									
										<h4><b>Navigate to Login Page and Login</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Launch the browser</li>
											<li class="list-group-item">Type the url into the address bar, press enter</li>
											<li class="list-group-item">Click 'Login' at the top right</li>
											<li class="list-group-item">Fill in username and password, submit</li>
										</ul>
										
										
										<h4><b>View Doctor Profile</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Click 'Doctor Search' on your homepage</li>
											<li class="list-group-item">Select doctor from list</li>
										</ul>
										
										
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>


<!-- General Info Starts -->

				
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion1" href="#collapse3"> <span class="glyphicon glyphicon-plus"></span> &nbsp;General Help
						</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="panel-group" id="accordion1_3">
						
						
						
						
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested  1: Navigation -->										
										<a data-toggle="collapse" data-parent="#accordion1_3" href="#collapse3_1"> <span class="glyphicon glyphicon-plus"></span> &nbsp;Navigation
										</a>
									</h4>
								</div>
								<div id="collapse3_1" class="panel-collapse collapse">
									<div class="panel-body">
									
									
										<h4><b>Navigation is possible through the following methods:</b></h4>
										
										<ul class="list-group">
											<li class="list-group-item">Movement bars</li>
											<li class="list-group-item">Arrow keys</li>
											<li class="list-group-item">Shortcuts</li>
											<li class="list-group-item">Webpage buttons (Avoid browser controls)</li>
										</ul>
										
									</div>
								</div>
							</div>
							
							
							
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested  2: Shortcuts -->										
										<a data-toggle="collapse" data-parent="#accordion1_3" href="#collapse3_2"> <span class="glyphicon glyphicon-plus"></span> &nbsp;Using Shortcuts
										</a>
									</h4>
								</div>
								<div id="collapse3_2" class="panel-collapse collapse">
									<div class="panel-body">
									
										<ul class="list-group">
											<li class="list-group-item">End key = End of page</li>
											<li class="list-group-item">Tab Key = Move to next field</li>
										</ul>
										
									</div>
								</div>
							</div>
							
							
							
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									
<!-- Nested  3: Tools -->									
										<a data-toggle="collapse" data-parent="#accordion1_3" href="#collapse3_3"> <span class="glyphicon glyphicon-plus"></span> &nbsp;ToolBars and ToolTips
										</a>
									</h4>
								</div>
								<div id="collapse3_3" class="panel-collapse collapse">
									<div class="panel-body">
									
								
										<ul class="list-group">
											<li class="list-group-item">Application contains standard header and footer which acts a toolbar and by clicking header can be navigated to home page</li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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