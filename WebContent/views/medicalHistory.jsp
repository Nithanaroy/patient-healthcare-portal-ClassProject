<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Healthcare: Medical History</title>
<script type="text/javascript" src="../js/vendor/jquery.js"></script>
<script type="text/javascript" src="../js/vendor/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="../js/scripts.js"></script>

<link href="../css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../css/vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../css/styles.css" rel="stylesheet" type="text/css">

<style type="text/css">
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
}

#body_front img, #body_back img {
	max-height: 700px;
	width: 100%;
}

.mbottom20 {
	margin-bottom: 20px;
}
</style>
<% if(session.getAttribute("userType")!=null){
	if(session.getAttribute("userType").equals("staff")){ %>
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


		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Appointments</h3>
			</div>
			<div class="panel-body">
				<c:forEach var="a" items="${history.appointments}">
					<div class='mbottom20'>
						Date:
						<c:out value="${a.formattedDate}" />
						<br /> Patient Name:
						<c:out value="${a.patientName}" />
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">ESAS Records</h3>
			</div>
			<div class="panel-body">
				<c:forEach var="e" items="${history.esas}">
					<div class='mbottom20'>
						Date:
						<c:out value="${e.formattedDate}" />
						<br />
						Pain:
						<c:out value="${e.pain}" />
						<br /> Appetite:
						<c:out value="${e.appetite}" />
						<br /> Tiredness:
						<c:out value="${e.tiredness}" />
						<br /> Nausea:
						<c:out value="${e.nausea}" />
						<br /> Depression:
						<c:out value="${e.depression}" />
						<br /> Anxiety:
						<c:out value="${e.anxiety}" />
						<br /> Drowsiness:
						<c:out value="${e.drowsiness}" />
						<br /> Well Being:
						<c:out value="${e.wellbeing}" />
						<br /> Breath:
						<c:out value="${e.shortnessOfBreath}" />
						<br />
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="panel panel-warning">
			<div class="panel-heading">
				<h3 class="panel-title">Body Part Records</h3>
			</div>
			<div class="panel-body">
				<c:forEach var="b" items="${history.bodypart}">
					<div class='mbottom20'>
						Patient's Name:
						<c:out value="${b.patientName}" />
						<br /> <a href="#" class='bodyImage' data-indices='${b.indices}' data-toggle="modal" data-target="#myModal">View Image</a> <br />
					</div>
				</c:forEach>
			</div>
		</div>



		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Body Images</h4>
					</div>
					<div class="modal-body">
						<div class='row form-group' id="body_diagrams">
							<div id="body_front" class='col-md-6'>
								<img alt="body_front" class='' src="../images/body_front.gif">
							</div>
							<div id="body_back" class='col-md-6'>
								<img alt="body_back" class='' src="../images/body_back.gif">
							</div>
						</div>
					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div> -->
				</div>
			</div>
		</div>

		<script type="text/javascript">
			$(function() {

				$(".bodyImage").click(function() {
					var indices = $(this).attr('data-indices').split(';');

					var rows = parseInt(indices[0]), cols = parseInt(indices[0]);
					var front_indices = $.map(indices[2].split(","), function(val, i) {
						return parseInt(val);
					});
					var back_indices = $.map(indices[3].split(","), function(val, i) {
						return parseInt(val);
					});

					drawTable("body_front", rows, cols, 700);
					drawTable("body_back", rows, cols, 700);

					highlightCells(front_indices, "#body_front td");
					highlightCells(back_indices, "#body_back td");
				});
			});

			function highlightCells(indices, cellsSelector) {
				for (var i = 0; i < indices.length; i++) {
					$(cellsSelector + ":eq(" + indices[i] + ")").addClass("selected");
				}
			}

			function drawTable(body_side_container_id, rows, cols, height) {
				var selector = "#" + body_side_container_id; // Eg: #body_front

				var table = getTable(rows, cols, height);
				$(table).css({
					"width" : "100%"
				});

				$(table).addClass('col-md-6')

				$(document).on("load resize", function() {
					$(selector + " table").css({
					height : $(selector + " img").height(),
					width : "100%"
					});
					$("#body_diagrams img").width($(selector).innerWidth())
				});

				$(selector).append(table);
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