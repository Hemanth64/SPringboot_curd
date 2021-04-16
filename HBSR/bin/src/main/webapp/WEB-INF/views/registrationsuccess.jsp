<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Confirmation Page</title>
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
</head>
<body class=".container-fluid">
	<div class="container myrow-container-default">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title"></h3>
			</div>

			<div class="alert alert-success lead">Recored Saved Successfully..........</div>


		</div>
		<span class="well floatRight"> Go to <a
			href="<c:url value='/searchTable' />">Search</a>
		</span>
		<span class="well floatRight"> Go to <a
			href="<c:url value='/coreform1' />">Coreform</a>
		</span>
		<span class="well floatRight"> Go to <a
			href="<c:url value='/logout' />">Logout</a>
		</span>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>

</html>