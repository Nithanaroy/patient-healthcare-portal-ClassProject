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

<link href="../css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">
</head>
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

		<form name='createAppointment' action='createAppointment.req' method="post" >
			<div class="form-group">
				<div class="form-group">
					<label for="dname">Doctor Name</label> <input type="text" name='dname' class="form-control" id="dname" placeholder="Enter doctor name">
					<!-- onchange="checkUserName(this.value)" -->
				</div>
			</div>

			<div class="form-group">
				<div class="form-group">
					<label for="time">Appointment Date</label> 
					<input type="date" min="2015-04-21" max="2015-12-31" class="form-control" id="time" >
					
				</div>
			</div>

			<!-- <div class="form-group">
				<div class="form-group">
					<label for="comment">Comments</label>
					<textarea name='comment' class="form-control" id="comment" placeholder="Enter any necessary comment" rows="10"> </textarea>
					onchange="checkUserName(this.value)"
				</div>
			</div> -->

			<button type="submit" class="btn btn-default">Submit</button>

		</form>




		<!-- All modifications should end here -->

		<footer class='row'>
			<p class='text-center'>Copyrights &copy; 2015</p>
		</footer>
	</div>
</body>
</html>