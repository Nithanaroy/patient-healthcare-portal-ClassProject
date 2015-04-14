<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
									
							<li></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->
		
		<form name='ESAS' action='addEsas.req' method="post">
		
        <div class="panel panel-primary">
          <div class="panel-heading">
             <h3 class="panel-title">Description</h3>
          </div>
          <div class="panel-body">
            <h4>Please select the scale of each symptom: 1 for mild and 10 for severe</h4>
  		  </div>
        </div>
		
		<div class="form-group">
			<h3><span class="label label-default">Pain</span></h3>
			<select name='pain'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-primary">Tiredness</span></h3>
			<select name='tiredness'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-success">Nausea</span></h3>
			<select name='nausea'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-info">Depression</span></h3>
			<select name='depression'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
	    <div class="form-group">
			<h3><span class="label label-warning">Anxiety</span></h3>
			<select name='anxiety'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-danger">Drowsiness</span></h3>
			<select name='drowsiness'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-default">Appetite</span></h3>
			<select name='appetite'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-primary">Wellbeing</span></h3>
			<select name='wellbeing'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		<div class="form-group">
			<h3><span class="label label-success">Shortness of breath</span></h3>
			<select name='breath'>
				<option>0</option><option>1</option><option>2</option>
				<option>3</option><option>4</option>
				<option>5</option><option>6</option>
				<option>7</option><option>8</option>
				<option>9</option><option>10</option>
			</select>
		</div>
		
		
	  
		<div class="form-group">
		<button type="submit" class="btn btn-default">Submit</button>
		 </div>
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