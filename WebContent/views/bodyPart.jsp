<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare: Body Part</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript" src="../js/vendor/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">

<style type="text/css">
#body_diagrams td {
	cursor: cell;
}

td.selected {
	background-color: rgba(0, 0, 255, 0.3);
}

#body_front, #body_back {
	position: relative;
}

#body_front img, #body_back img {
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1000;
}
</style>

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

		<h3>Please mark on these pictures where it hurts you</h3>
		<p>Mark by tapping or clicking</p>

		<form action='bodyPart.req' method="POST">
			<!-- Selections made from body diagrams are saved as rows, columns, front_cell_indices; back_cell_indices -->
			<input type="hidden" name='body-part-info' id='body-part-info'>
			<div class='row form-group' id="body_diagrams">
				<div class='col-md-6' id="body_front">
					<img alt="body_front" src="../images/body_front.gif">
				</div>
				<div class='col-md-6' id="body_back">
					<img alt="body_back" src="../images/body_back.gif">
				</div>
			</div>

			<div class='text-center'>
				<input type="submit" class='btn btn-primary' value='Submit'>
			</div>
		</form>

		<script type="text/javascript">
			$(function() {

				var rows = 25, cols = 25;

				drawTable("body_front");
				drawTable("body_back");

				function drawTable(body_side_container_id) {
					var selector = "#" + body_side_container_id;

					$("#body_diagrams img").width($(selector).innerWidth())

					var table = getTable(rows, cols, $(selector + " img")
							.height());
					$(table).css({
						"width" : "100%"
					});

					$(document).on("load resize", function() {
						$(selector + " table").css({
							height : $(selector + " img").height(),
							width : "100%"
						});
						$("#body_diagrams img").width($(selector).innerWidth())
					});

					$(selector).append(table);
				}

				/* Selection */
				var mouseDown = false; // Is true when mouse or finger is down

				$("#body_diagrams").on("mouseover click", "td", function() {
					if (mouseDown)
						$(this).toggleClass("selected");
				});

				$("#body_diagrams").on("mousedown", "td", function() {
					mouseDown = true;
					$(this).toggleClass("selected");
				});

				$("#body_diagrams").on("mouseup", "td", function() {
					mouseDown = false;
				});

				/* Form Submit */
				$("form").on(
						"submit",
						function() {
							$("#body-part-info").val(
									[
											rows,
											cols,
											getSelectedCells("body_front")
													.join(","),
											getSelectedCells("body_back").join(
													",") ].join(";"))
						})
			});

			function getSelectedCells(table_id) {
				var selector = "#" + table_id;
				var indices = [];
				$(selector).find("td.selected").each(function() {
					indices.push($(selector + " td").index(this));
				});
				return indices;
			}

			function getTable(rows, cols, height) {
				var table = $("<table />").css({
					height : height
				}).attr("border", 1);
				for (var i = 0; i < rows; i++) {
					var row = $("<tr />");
					for (var j = 0; j < cols; j++) {
						var cell = $("<td />").css({
							"height" : height / rows,
							width : (100 / cols) + "%"
						});
						$(row).append(cell);
					}
					$(table).append(row);
				}
				return table;
			}
		</script>
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