<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare: Body Part</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript" src="../js/vendor/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">

<style type="text/css">
img.slice_background {
	background: #CCC;
	cursor: pointer;
}
</style>

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
							<li><a href="#">Add Patient</a></li>
							<li><a href="#">View Doctors</a></li>
							<li><a href="#">Body Part <span class="sr-only">(current)</span></a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- Body. Start modifying from here -->

		<h3>Please mark on these pictures where it hurts you</h3>
		<p>Mark by tapping or clicking</p>

		<!-- <div class='row'>
			<div class='col-md-6'>
				<img alt="body_front" class='img-responsive' src="../images/body_front.gif">
			</div>
			<div class='col-md-6'>
				<img alt="body_back" class='img-responsive' src="../images/body_back.gif">
			</div>
		</div> -->

		<div class="row" id='body_diagrams'>
			<div class='col-md-6' id='body_front'>
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="2"><img
							src="../images/bodyfrontslices/body_front_slices_01.gif"></td>
						<td colspan="4"><img
							src="../images/bodyfrontslices/body_front_slices_02.gif"></td>
						<td><img
							src="../images/bodyfrontslices/body_front_slices_03.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td rowspan="10"><img
							src="../images/bodyfrontslices/body_front_slices_04.gif"></td>
						<td colspan="2" rowspan="3"><img
							src="../images/bodyfrontslices/body_front_slices_05.gif"></td>
						<td colspan="2"><img
							src="../images/bodyfrontslices/body_front_slices_06.gif"></td>
						<td colspan="2" rowspan="2"><img
							src="../images/bodyfrontslices/body_front_slices_07.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="3"><img
							src="../images/bodyfrontslices/body_front_slices_08.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="5"><img
							src="../images/bodyfrontslices/body_front_slices_09.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="3"><img
							src="../images/bodyfrontslices/body_front_slices_10.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td colspan="2"><img
							src="../images/bodyfrontslices/body_front_slices_11.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td rowspan="3"><img
							src="../images/bodyfrontslices/body_front_slices_12.gif"></td>
						<td rowspan="3"><img
							src="../images/bodyfrontslices/body_front_slices_13.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="4"><img
							src="../images/bodyfrontslices/body_front_slices_14.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="3"><img
							src="../images/bodyfrontslices/body_front_slices_15.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td><img
							src="../images/bodyfrontslices/body_front_slices_16.gif"></td>
						<td><img
							src="../images/bodyfrontslices/body_front_slices_17.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td><img
							src="../images/bodyfrontslices/body_front_slices_18.gif"></td>
						<td><img
							src="../images/bodyfrontslices/body_front_slices_19.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
					</tr>
					<tr>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td><img src="../images/bodyfrontslices/spacer.gif"></td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class='col-md-6'></div>
		</div>

		<script type="text/javascript">
			$(function() {
				$("#body_diagrams").find("img").on("mouseover mouseout",
						function() {
							$(this).toggleClass("slice_background");
						});
			});
		</script>
		<!-- All modifications should end here -->

		<footer class='row'>
			<p class='text-center'>Copyrights &copy; 2015</p>
		</footer>
	</div>
</body>
</html>