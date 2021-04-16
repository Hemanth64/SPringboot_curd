<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/styles/download/jquery-ui.css">
<link rel="stylesheet" href="resources/styles/download/jquery-ui.min.css">

<script src="resources/scripts/js/jquery.min.js"></script> 
<script src="resources/scripts/js/jquery-ui.min.js"></script> 

<!-- <!-- jQuery library
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> --> -->

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="resources/scripts/js/bootstrap_validator.js"></script> 
<script src="resources/scripts/js/jquery.mask.min.js"></script> 

<script src="resources/scripts/custom_js/Hbsr_Registration.js"></script>
<script src="resources/scripts/custom_js/hbsr_validation.js"></script>
<script src="resources/scripts/custom_js/date_validation.js"></script>


<script src="resources/scripts/js/jquery-confirm.min.js"></script>



<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
	
	<link rel="stylesheet" href="resources/styles/download/jquery-confirm.min.css">

<!-- CSS -->
<link rel="stylesheet" href="resources/styles/style.css">

 <style type="text/css">
 
 .has-error .help-block {
  color: red;
}

.has-success {
    color: black;
}


 </style>

<title>Insert title here</title>
</head>
<body>
	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="index.jsp"> <img src="resources/images/Icmr_logo.png"
				alt="">
			</a>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown"><a href="list" class="dropdown-toggle no-arrow">
							<span class="fa fa-home"></span><span class="mtext">Home</span>
					</a></li>


					<li class="dropdown"><a href="coreform1"
						class="dropdown-toggle no-arrow"> <span class="fa fa-user-plus"></span><span
							class="mtext">Form Data Entry</span>
					</a></li>

					<li class="dropdown"><a href="searchTable"
						class="dropdown-toggle no-arrow"> <span class="fa fa-search"></span><span
							class="mtext">Search</span>
					</a></li>
					
					<sec:authorize access="hasRole('ADMIN')">
						<li class="dropdown no-arrow"><a href="report/?type=xls"
							class="dropdown-toggle no-arrow"> <span class="fa fa-repeat"></span><span
								class="mtext">ExportRegisForms</span>
						</a></li>
					</sec:authorize>

					<li class="dropdown"><a href="logout" class="dropdown-toggle no-arrow">
							<span class="fa fa-exchange"></span><span class="mtext">Logout</span>
					</a></li>

	


				</ul>
			</div>
		</div>
	</div>


</body>
</html>