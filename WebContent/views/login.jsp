<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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

					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<p>
						<h3>
							<center>Patient Health Care System</center>
						</h3>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->
		<%
			if (session.getAttribute("flag") != null) {
		%>
		<p>
		<center>
			<h4>Invalid username or password</h4>
		</center>
		</p>
		<%
			}
		%>
		<form name='login' action='login.req' method="post" onsubmit="return checkFieldsOfLogin()">
			<div class="form-group">
				<label for="uname">User Name</label> <input type="text" name='uname' class="form-control" id="uname" placeholder="Enter your username" onchange="checkLoginUserName(this.value)">
				<!-- onchange="checkUserName(this.value)" -->
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input type="password" name='pwd' class="form-control" id="pwd" placeholder="Enter your password" onchange="checkLoginPassword(this.value)">
				<!--  onchange="checkPassword(this.value)" -->
			</div>

			<button type="submit" class="btn btn-default">Submit</button>
		</form>
		<!-- All modifications should end here -->

		<footer class='row'>
			<p class='text-center'>Copyrights &copy; 2015</p>
		</footer>
	</div>
</body>
</html>
</body>
</html>