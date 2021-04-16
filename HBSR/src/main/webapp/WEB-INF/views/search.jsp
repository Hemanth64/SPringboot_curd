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

<link rel="stylesheet" type="text/css"
	href="resources/styles/jquery.steps.css">

<script src="resources/scripts/custom_js/search_script.js"></script>


</head>
<body>


	<div class="container">
		<header>
			<jsp:include page="include/title.jsp" />
			<jsp:include page="include/sidenav.jsp" />
		</header>


		<%-- 	<div class="page-header ">					
				<div class="row">
						<div class="col-md-4">						
								<h5 class="text-primary"> HBSR - Search</h5>			
						</div>					
						<div class="col-md-4 text-center" style="font-size:20px; color:red;">						
								<span  id="date_time" ></span>			
						</div>	
						<div class="col-md-4 text-right"><h5><span class="text-primary">Logged in as :</span> <span class="text-success"> ${loggedinuser}</span></h5></div>					
				 </div>							
			</div> --%>


		<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
			<h2 class="text-center">Search Form</h2>
			<hr>

			<form id="srchForm" action="search" method="get" autocomplete="off">
				<div class="form-group">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio1" name="srchFrm"
									class="custom-control-input" value="1" checked> <label
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
										HBSR Registration Number </font>
								</label>

							</div>
						</div>
						<div class="col-md-4">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio3" name="srchFrm"
									class="custom-control-input" value="3"> <label
									class="custom-control-label" for="customRadio3"> <font>
										Name of Patient </font>
								</label>

							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio4" name="srchFrm"
									class="custom-control-input" value="4"> <label
									class="custom-control-label" for="customRadio4"> <font>
										ICD-10 </font>
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
						<div class="col-md-4"></div>
					</div>
				</div>
				<hr>
				<br>
				<div class="form-group">
					<div class="row ">
						<div class="col-md-4"></div>
						<div class="col-md-3 " id="name">
							<input type="text" name='id' id='id' class="form-control"
								tabindex="1" maxlength='10'> <input type="text"
								name='id2' id='id2' class="form-control hide" tabindex="1"
								maxlength='7'> <input type="text" name='id3' id='id3'
								class="form-control hide" tabindex="1" maxlength='20'> <input
								type="text" name='id4' id='id4' class="form-control hide"
								tabindex="1" maxlength='6'>
						</div>
					</div>
					<div class="row hide id5">
						<div class="col-md-3"></div>
						<div class="col-md-6 input-group" id="name">
							<div class="input-group-prepend">
								<span class="input-group-text"> Between </span>
							</div>
							<input type="text" class="form-control dat" name='id5' id='id5'
								tabindex="1" maxlength='10'>
							<div class="input-group-append  id5icn">
								&nbsp;<i class="fa fa-calendar fa-2x transparent"
									aria-hidden="true"></i>
							</div>
							<div class="input-group-prepend">
								<span class="input-group-text"> And </span>
							</div>
							<input type="text" class="form-control dat" name='id6' id='id6'
								tabindex="1" maxlength='10'>
							<div class="input-group-append  id6icn">
								&nbsp;<i class="fa fa-calendar fa-2x transparent"
									aria-hidden="true"></i>
							</div>
						</div>

					</div>

				</div>
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-4">
							<input class="btn btn-success " type='submit' value='Search'
								id="bt2" disabled="disabled" onClick="window.location.reload();" />
						</div>
					</div>
				</div>
			</form>
			<div class="panel-body">


				<br> <br>
				<c:if test="${not empty records}">


					<div class="panel-body">

						<table
							class="table table-hover display  table-striped table-bordered"
							id="example1">
							<thead>

								<tr style="background-color: #EEF8FE;">
									<th>HBSR Registration Number</th>
									<th>Name of Source of Registration</th>
									<th>Name of Department / Unit / Physician</th>
									<th>Hospital Registration Number</th>
									<th>Patient Information</th>

									<!-- <th>First Name of the Patient</th>

										<th>Place of residence</th>
										<th>House number</th>
										<th>City</th>
										<th>District</th>
										<th>Pin Code</th>
										<th>Mobile number</th>
										<th>Email</th> -->


									<th>Date of onset of this episodes of stroke</th>
									<th>Vital status at discharge</th>
									<th>Due date of follow-up</th>

									<th>Edit</th>



								</tr>

							</thead>
							<tbody>
								<c:forEach items="${records}" var="rec">
									<tr style="background-color: #EEF8FE;">
										<td><c:out value="${rec.core_id}" /></td>
										<td><c:out value="${rec.cenCode}" /></td>
										<td><c:out value="${rec.regNum}" /></td>
										<td><c:out value="${rec.hospRegNum}" /></td>
										<td width="20px"><c:out
												value="Patient Name:${rec.patFirstN}  ${rec.patMidN}   ${rec.patLastN}" /><br>
											<%-- 
												<c:choose>
												<c:when test="${rec.housNo1 !=''}">,</c:when>
												<c:when test="${rec.housNo2 !=''}">,</c:when>
												</c:choose> --%> <c:choose>
												<c:when test="${rec.residence=='1'}">
													<c:out value="${rec.housNo1}" />
													<c:if test="${rec.housNo1 != ''}">,
														 </c:if>
													<c:out value="${rec.road}" />
													<c:if test="${rec.road != ''}">,
														 </c:if>
													<c:out value="${rec.area}" />
													<c:if test="${rec.area != ''}">,
														 </c:if>
													<c:out value="${rec.division}" />
													<c:if test="${rec.division != ''}">,
														 </c:if>
													<c:out value="${rec.city}" />
													<c:if test="${rec.city != ''}">,
														 </c:if>
													<%-- <c:if test="${rec.city != ''}">,
														 </c:if> --%>
													<%-- <c:out
														value="${rec.housNo1}, ${rec.road}, ${rec.area}, ${rec.division}, ${rec.city}" /> --%>

												</c:when>
												<c:when test="${rec.residence=='2'}">
													<c:out value="${rec.housNo2}" />
													<c:if test="${rec.housNo2 != ''}">,
														 </c:if>
													<c:out value="${rec.gramaPanc}" />
													<c:if test="${rec.gramaPanc != ''}">,
														 </c:if>
													<c:out value="${rec.subDist}" />
													<c:if test="${rec.subDist != ''}">,
														 </c:if>
													<c:out value="${rec.subCenter}" />
													<c:if test="${rec.subCenter != ''}">,
														 </c:if>

												</c:when>
											</c:choose> <c:out value="${rec.dist}" /> <c:if
												test="${rec.dist != ''}">,</c:if> <c:out
												value="${rec.postalPin}" /> <c:if
												test="${rec.postalPin != ''}">, </c:if> <c:out
												value="${rec.mob1}" /> <c:if test="${rec.mob1 != ''}">,</c:if>
											<c:out value="${rec.email}" /></td>


										<%-- <td ><c:out value="${rec.patFirstN}" /></td>
											<td><c:out value="${rec.residence}" /></td>
											<td><c:out value="${rec.housNo1}${rec.city}" /></td>
											<td><c:out value="${rec.city}" /></td>
											<td><c:out value="${rec.dist}" /></td>
											<td><c:out value="${rec.postalPin}" /></td>
											<td><c:out value="${rec.mob1}" /></td>
											<td><c:out value="${rec.email}" /></td> --%>




										<td><c:out value="${rec.onsetstrokedate}" /></td>


										<td><c:choose>
												<c:when test="${rec.discharge=='1'}">
       													 Alive 
       														 <br />
												</c:when>
												<c:when test="${rec.discharge=='2'}">
      												 Dead 
        												<br />
												</c:when>
												<c:when test="${rec.discharge=='3'}">
        											Unknown 
       												 <br />
												</c:when>
												<c:otherwise>

													<br />
												</c:otherwise>
											</c:choose></td>
										<td><c:out value="${rec.dueDateOfFollDate1}" /></td>
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

<style type="text/css">
.hide {
	display: none;
}

.transparent {
	background-color: transparent !important;
	box-shadow: inset 0px 1px 0 rgba(0, 0, 0, .075);
}

.page-header {
	background-color: lightblue;
	padding: 10px;
}
</style>

<script type="text/javascript">
	$(function() {
		date_time('date_time');
	});

	var d = new Date();
	var fullDate = new Date()
	$("#curDate").html(fullDate.formate('yyyy-MM-dd H:i:s'));

	function date_time(id) {
		date = new Date;
		year = date.getFullYear();
		month = date.getMonth();
		months = new Array('January', 'February', 'March', 'April', 'May',
				'June', 'Jully', 'August', 'September', 'October', 'November',
				'December');
		d = date.getDate();
		day = date.getDay();
		days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday',
				'Thursday', 'Friday', 'Saturday');
		h = date.getHours();
		if (h < 10) {
			h = "0" + h;
		}
		m = date.getMinutes();
		if (m < 10) {
			m = "0" + m;
		}
		s = date.getSeconds();
		if (s < 10) {
			s = "0" + s;
		}
		result = ' ' + months[month] + ' ' + d + ' ' + year + ' ' + h + ':' + m
				+ ':' + s;
		document.getElementById(id).innerHTML = result;
		setTimeout('date_time("' + id + '");', '1000');
		return true;
	}
</script>
</html>