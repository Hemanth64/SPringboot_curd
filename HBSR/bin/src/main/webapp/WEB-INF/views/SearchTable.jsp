<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HBSR Record List</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
.myrow-container {
	margin: 20px;
}

.checkbox label:after {
	content: '';
	display: table;
	clear: both;
}

.checkbox .cr {
	position: relative;
	display: inline-block;
	border: 1px solid #a9a9a9;
	border-radius: .25em;
	width: 1.3em;
	height: 1.3em;
	float: left;
	margin-right: .5em;
}

.checkbox .cr .cr-icon {
	position: absolute;
	font-size: .8em;
	line-height: 0;
	top: 50%;
	left: 15%;
}

.checkbox label input[type="checkbox"] {
	display: none;
}

.checkbox label input[type="checkbox"]+.cr>.cr-icon {
	opacity: 0;
}

.checkbox label input[type="checkbox"]:checked+.cr>.cr-icon {
	opacity: 1;
}

.checkbox label input[type="checkbox"]:disabled+.cr {
	opacity: .5;
}
</style>
<script type="text/javascript">
	function getenable1() {
		var ob = document.getElementById("customCheck1-1").checked;
		if (ob == true) {
			document.getElementById("id").disabled = false;
			document.getElementById("bt").disabled = false;

		} else {
			document.getElementById("id").disabled = true;
			document.getElementById("bt").disabled = true;

		}

	}
</script>
</head>
<jsp:include page="include/sidebar.jsp" />
<jsp:include page="include/title.jsp" />
<body class=".container-fluid">
	<div class="container myrow-container-default">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">
					<div align="left">
						<b>Search</b>

					</div>
					<div align="right">
						<a href="<c:url value='/logout' />">Logout</a>
					</div>

				</h3>
			</div>
			<form action="search" method="get">
				<div class="form-group">
					<div class=" col-md-4">
						<div class="checkbox">
							<label> <input type="checkbox" value=""
								id="customCheck1-1" onClick="getenable1()"> <span
								class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
								&nbsp;&nbsp;Search Record by Reference ID
							</label>
						</div>
					</div>
					<div class="col-md-2">
						<input type='text' name='id' id='id' class="form-control"
							required="required" disabled />
					</div>
					<div class="col-md-2">
						<input class="btn btn-success" type='submit' value='Search'
							id="bt" disabled />
					</div>
				</div>
			</form>
			<br> <br>
			<div class="panel-body">

				<br> <br>
				<c:if test="${not empty records}">


					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Center Code</th>
									<th>HBSR Registration Number</th>
									<th>Hospital Registration Number</th>
									<th>Edit</th>

								</tr>
							</thead>
							<tbody>

								<tr>

									<td><c:out value="${records.core_id}" /></td>
									<td><c:out value="${records.cenCode}" /></td>
									<td><c:out value="${records.regNum}" /></td>
									<td><c:out value="${records.regNum}" /></td>
									<td><a
										href="editform?id=<c:out value='${records.core_id}'/>">Edit</a></td>

								</tr>

							</tbody>
						</table>
					</div>

				</c:if>
				<c:if test="${empty records}">
					<label><font color="red">There are no Records Found</font></label>
				</c:if>
				${message}
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>