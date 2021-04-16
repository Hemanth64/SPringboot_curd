<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/styles/download/jquery-ui.css">
<link rel="stylesheet" href="resources/styles/download/jquery-ui.min.css">

<script src="resources/scripts/js/jquery.min.js"></script> 
<script src="resources/scripts/js/jquery-ui.min.js"></script> 



<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="resources/scripts/js/bootstrap_validator.js"></script> 
<script src="resources/scripts/js/jquery.mask.min.js"></script> 

<script src="resources/scripts/custom_js/Hbsr_Registration.js"></script>
<script src="resources/scripts/custom_js/hbsr_validation.js"></script>
 <script src="resources/scripts/custom_js/date_validation.js"></script> 
<script src="resources/scripts/custom_js/time_validation.js"></script>
<script src="resources/scripts/custom_js/edit_validation.js"></script>
 <script src="resources/scripts/custom_js/draftSave_validation.js"></script> 
 <script src="resources/scripts/custom_js/hbsr_outcompletefn.js"></script>

<script src="resources/scripts/js/jquery-confirm.min.js"></script>
<script src="resources/scripts/custom_js/search_script.js"></script>


<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
	
	<link rel="stylesheet" href="resources/styles/download/jquery-confirm.min.css">
	
	<link rel="stylesheet" href="resources/styles/download/w3.css">


<!-- CSS -->
<link rel="stylesheet" href="resources/styles/style.css">

 <style type="text/css">
 
 .has-error .help-block {
  color: red;
}

.has-success {
    color: black;
}
.brand-logo{
padding-top:30px;
}

/* change the color of active or hovered links */
.navbar-custom .nav-item.active .nav-link,
.navbar-custom .nav-item .nav-link {
    color: #ffffff;
}

/* change the brand and text color */
.navbar-custom .navbar-brand,
.navbar-custom .navbar-text {
    color: rgba(255,255,255,.8);
}
.navbar{ border-radius: 10px;
margin-top:1px;
margin-bottom:2px; }


/* .w3-sidebar .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;  
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
 */
 </style>
 
<script>



</script>

<title></title>
</head>
<body>


<nav class="navbar navbar-expand-md bg-info navbar-light navbar-custom">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
			  <ul class="navbar-nav mr-auto">
			    <li class="nav-item">
			      
			      <a class="nav-link" href="list" class="dropdown-toggle no-arrow">
										<span class="fa fa-home">&nbsp;</span><span class="mtext">Home</span>&nbsp;|
								</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="coreform1"
									class="dropdown-toggle no-arrow"> <span class="fa fa-user-plus"></span>&nbsp;<span
										class="mtext">Data entry form</span>&nbsp;|
								</a>
			    </li>
			 	<li class="nav-item"><a class="nav-link" href="searchTable"
									class="dropdown-toggle no-arrow"> <span class="fa fa-search">&nbsp;</span><span
										class="mtext">Search</span>&nbsp;|
								</a></li>
								
							<li class="nav-item"><a class="nav-link" href="follow_up"
									class="dropdown-toggle no-arrow"> <span class="fa fa-search">&nbsp;</span><span
										class="mtext">Follow up</span>&nbsp;|
								</a></li>
    								
			    	<sec:authorize access="hasRole('ADMIN')">
									<li class="nav-item"><a class="nav-link" href="report/?type=xls"
										class="dropdown-toggle no-arrow"> <span class="fa fa-repeat">&nbsp;</span><span
											class="mtext">Export Registration Details</span> &nbsp;|
									</a></li>
								</sec:authorize>
								
							
								
								<li class="nav-item"><a class="nav-link" href="export"
									class="dropdown-toggle no-arrow"> <span class="fa fa-repeat">&nbsp;</span><span
										class="mtext">Export Data</span>&nbsp;|
								</a></li>
    								  <li class="nav-item">
      									<span class="nav-link" >&nbsp;&nbsp;&nbsp;</span>
    								</li>
    								  <li class="nav-item">
      									<span class="nav-link" >&nbsp;&nbsp;&nbsp;</span>
    								</li>
    								  <li class="nav-item">
      									<span class="nav-link" >&nbsp;&nbsp;&nbsp;</span>
    								</li>
    								  <li class="nav-item">
      									
    								</li>
    
			  </ul>
			  <ul class="navbar-nav">
			  				<li class="nav-item"><a class="nav-link" href="logout" class="dropdown-toggle no-arrow">
										<span class="fa fa-exchange">&nbsp;</span><span class="mtext">Logout</span>
								</a></li>
			  </ul>
	  </div>
</nav>


<%--  <div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left" style="width:250px;" id="mySidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> &times;</a>
  <button class="w3-bar-item w3-button w3-large w3-hide-large" onclick="w3_close()">Close &times;</button>

  
  	<div class="brand-logo">
			<img src="resources/images/Icmr_logo.png"
				alt="">
			
		</div>
		
		<div class="menu-block customscroll">
			<div class="sidebar-menu">			
				<ul id="accordion-menu">
					<li class="dropdown"><a href="list" class="dropdown-toggle no-arrow">
							<span class="fa fa-home"></span><span class="mtext">Home</span>
					</a></li>


					<li class="dropdown"><a href="coreform1"
						class="dropdown-toggle no-arrow"> <span class="fa fa-user-plus"></span><span
							class="mtext">Data entry form</span>
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

<div class="w3-main" style="margin-left:250px">
<div class="w3-teal">
  <button class="w3-button w3-teal w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;My Pages</button>   
</div>
<span id="openid" class="hide" style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>   
</div> --%>




</body>
</html>