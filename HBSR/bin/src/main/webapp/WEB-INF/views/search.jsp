<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SearchOperation</title>

<jsp:include page="include/head1.jsp" />
<jsp:include page="include/sidenav.jsp" />

<link rel="stylesheet" type="text/css"
	href="resources/styles/jquery.steps.css">	
	
	<script src="resources/scripts/custom_js/search_script.js"></script>

	<style type="text/css">
	
	.hide{
	display: none;
	}
	
	.transparent {
    background-color: transparent !important;
    box-shadow: inset 0px 1px 0 rgba(0,0,0,.075);
 }
	</style>
</head>
<body>


	<div class="container">


		<jsp:include page="include/title.jsp" />

		<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
			<h2 class="text-center">
				Search Form
			</h2>
			<hr>
			
			<form id="srchForm" action="search" method="get" autocomplete="off">
				<div class="form-group">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio1" name="srchFrm"
									class="custom-control-input" value="1" checked > <label
									class="custom-control-label" for="customRadio1"> <font>
										Reference ID </font>
								</label>

							</div>
						</div>
						<div class="col-md-5">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio2" name="srchFrm"
									class="custom-control-input" value="2"> <label
									class="custom-control-label" for="customRadio2"> <font>
										Incidence/Hospital Registration Number </font>
								</label>

							</div>
						</div>
						<div class="col-md-4">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio3" name="srchFrm"
									class="custom-control-input" value="3"> <label
									class="custom-control-label" for="customRadio3"> <font>
										Name of Paitient </font>
								</label>

							</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-md-4">
						</div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio4" name="srchFrm"
									class="custom-control-input" value="4"> <label
									class="custom-control-label" for="customRadio4"> <font>
										ICD </font>
								</label>

							</div>
						</div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio5" name="srchFrm"
									class="custom-control-input" value="5"> <label
									class="custom-control-label" for="customRadio5"> <font>
										Date of Entry </font>
								</label>
							</div>
						</div>
						<div class="col-md-4">
					</div>
					</div>
				</div>
				<hr>
				<br> 
				<div class="form-group">
					<div class="row ">
						<div class="col-md-4"></div>
						<div class="col-md-3 " id="name">
							<input type="text" name='id' id='id' class="form-control"	tabindex="1" maxlength='10' >
							<input type="text" name='id2' id='id2' class="form-control hide"	tabindex="1" maxlength='20'>
							<input type="text" name='id3' id='id3' class="form-control hide"	tabindex="1" maxlength = '20'>
							<input type="text" name='id4' id='id4' class="form-control hide"	tabindex="1" maxlength = '6' >													
						</div>
					</div>
						<div class="row hide id5">
						<div class="col-md-3"></div>
						<div class="col-md-6 input-group" id="name">
								  <div class="input-group-prepend">								   
								    <span class="input-group-text"> Between </span>
								  </div>
								  <input type="text" class="form-control dat"   name='id5' id='id5' tabindex="1" maxlength = '10' >
								   			<div class="input-group-append  id5icn">										      
										      &nbsp;<i class="fa fa-calendar fa-2x transparent" aria-hidden="true"></i>
										    </div>
								  <div class="input-group-prepend">								   
								    <span class="input-group-text"> And </span>
								  </div>
								  <input type="text" class="form-control dat"   name='id6' id='id6' tabindex="1" maxlength = '10' >
									<div class="input-group-append  id6icn">										      
										      &nbsp;<i class="fa fa-calendar fa-2x transparent" aria-hidden="true"></i>
										    </div>
						</div>
							
					</div>
					
				</div>
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-4">
							<input class="btn btn-success " type='submit' value='Search' id="bt2" disabled="disabled" />
						</div>
					</div>
				</div>
			</form>
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
									<c:forEach items="${records}" var="rec">
										<tr>
											<td><c:out value="${rec.core_id}" /></td>
											<td><c:out value="${rec.cenCode}" /></td>
											<td><c:out value="${rec.regNum}" /></td>
											<td><c:out value="${rec.hospRegNum}" /></td>	
											<td><a href="editform?id=<c:out value='${rec.core_id}'/>">Edit</a></td>									
										</tr>
									</c:forEach>
				

							</tbody>
						</table>
					</div>

				</c:if>


			</div>

		</div>




	</div>



</body>
</html>