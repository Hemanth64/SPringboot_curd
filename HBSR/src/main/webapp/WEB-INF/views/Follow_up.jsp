<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Follow-up</title>

<jsp:include page="include/head1.jsp" />



</head>
<body>


	<div class="container">


		<jsp:include page="include/title.jsp" />
		<jsp:include page="include/sidenav.jsp" />
		<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
			<h2 class="text-center">Follow up</h2>
			<hr>


			<form id="srchFollow" action="followSearch" method="GET"
				autocomplete="off">
				<div class="form-group">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-4">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio1" name="srchFollw"
									class="custom-control-input" value="1" checked> <label
									class="custom-control-label" for="customRadio1"> <font>
										At day 28 after onset of stroke </font>
								</label>

							</div>
						</div>
						<div class="col-md-4">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio2" name="srchFollw"
									class="custom-control-input" value="2"> <label
									class="custom-control-label" for="customRadio2"> <font>
										At 3 months after onset of stroke</font>
								</label>

							</div>
						</div>

					</div>
				</div>
				<br>
				<hr>
				<div class="form-group">
					<div class="row ">
						<div class="col-md-3"></div>



						<div class="col-md-6 input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> From</span>
							</div>
							<input type="text" class="form-control dat" name='id7' id='id7'
								tabindex="1" maxlength='10'>
							<div class="input-group-append  id7icn">
								&nbsp;<i class="fa fa-calendar fa-2x transparent"
									aria-hidden="true"></i>
							</div>
							<div class="input-group-prepend">
								<span class="input-group-text"> To </span>
							</div>
							<input type="text" class="form-control dat" name='id8' id='id8'
								tabindex="1" maxlength='10'>
							<div class="input-group-append  id8icn">
								&nbsp;<i class="fa fa-calendar fa-2x transparent"
									aria-hidden="true"></i>
							</div>
						</div>

					</div>
				</div>


				<div class="form-group">
					<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-4">
							<input class="btn btn-success " type='submit' value='Search' />
						</div>
					</div>
				</div>
			</form>
			<br>
			<div class="panel-body">


				<br> <br>
				<c:if test="${not empty fObject}">


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





								</tr>

							</thead>
							<tbody>
								<c:forEach items="${fObject}" var="rec">
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
													<c:if
														test="${rec.road != '' or rec.area != '' or rec.division != '' or rec.city != '' or rec.dist != '' or rec.postalPin != '' or rec.mob1 != '' or rec.email != ''}">,
														 </c:if>

													<c:out value="${rec.road}" />
													<c:if
														test="${rec.area != '' or rec.division != '' or rec.city != '' or rec.dist != '' or rec.postalPin != '' or rec.mob1 != '' or rec.email != ''}">,
														 </c:if>


													<c:out value="${rec.area}" />
													<c:if
														test="${rec.division != '' or rec.city != '' or rec.dist != '' or rec.postalPin != '' or rec.mob1 != '' or rec.email != ''}">,
														 </c:if>


													<c:out value="${rec.division}" />
													<c:if
														test="${rec.city != '' or rec.dist != '' or rec.postalPin != '' or rec.mob1 != '' or rec.email != ''}">,
														 </c:if>


													<c:out value="${rec.city}" />
													<c:if
														test="${rec.dist != '' or rec.postalPin != '' or rec.mob1 != '' or rec.email != ''}">,
														 </c:if>


													<%-- <c:if test="${rec.city != ''}">,
														 </c:if> --%>
													<%-- <c:out
														value="${rec.housNo1}, ${rec.road}, ${rec.area}, ${rec.division}, ${rec.city}" /> --%>

												</c:when>
												<c:when test="${rec.residence=='2'}">
													<c:out value="${rec.housNo2}" />
													<c:if test="${rec.housNo2 != ''  and rec.gramaPanc != ''}">,
														 </c:if>
													<c:out value="${rec.gramaPanc}" />
													<c:if test="${rec.gramaPanc != '' and rec.subDist != ''}">,
														 </c:if>
													<c:out value="${rec.subDist}" />
													<c:if test="${rec.subDist != ''  and rec.subCenter != ''}">,
														 </c:if>
													<c:out value="${rec.subCenter}" />
													<c:if test="${rec.subCenter != '' and rec.dist != ''}">,
														 </c:if>

												</c:when>
											</c:choose> <c:out value="${rec.dist}" /> <c:if
												test="${rec.postalPin != '' or rec.mob1 != '' or rec.email != ''}">,
														 </c:if> <c:out value="${rec.postalPin}" /> <c:if
												test="${rec.mob1 != '' or rec.email != ''}">,
														 </c:if> <c:out value="${rec.mob1}" /> <c:if
												test="${rec.email != ''}">,
														 </c:if> <c:out value="${rec.email}" /></td>


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
<link rel="stylesheet" type="text/css"
	href="resources/styles/jquery.steps.css">



<script
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css">

<style type="text/css">
.hide {
	display: none;
}
</style>
<script type="text/javascript">
	$(function() {
		var date = new Date();
		var currentMonth = date.getMonth();
		var currentDate = date.getDate();
		var currentYear = date.getFullYear();

		$("#id7").datepicker(
				{
					dateFormat : 'dd-mm-yy',
					yearRange : '1930:2099',
					maxDate : new Date(currentYear, currentMonth, currentDate),
					showButtonPanel : false,
					changeMonth : true,
					changeYear : true,
					loseText : 'Clear',
					gotoCurrent : true,
					onSelect : function() {
						$('#id8').datepicker('option', 'minDate',
								$("#id7").datepicker("getDate"));
					},
					onClose : function() {
						$("#id7").datepicker("destroy");
						this.focus()
					}
				});

		$(".id7icn").click(
				function() {
					$("#id7").datepicker(
							{
								dateFormat : 'dd-mm-yy',
								yearRange : '1930:2099',
								maxDate : new Date(currentYear, currentMonth,
										currentDate),
								showButtonPanel : false,
								changeMonth : true,
								changeYear : true,
								loseText : 'Clear',
								gotoCurrent : true,
								onSelect : function() {
									$('#id8').datepicker('option', 'minDate',
											$("#id7").datepicker("getDate"));
								},
								onClose : function() {
									$("#id7").datepicker("destroy");
									this.focus();

								}
							}).focus();
				});

		//---------------------------

		$("#id8").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {
				$("#id8").datepicker("destroy");
				this.focus();
			}
		});

		$(".id8icn").click(function() {
			$("#id8").focus();
			$("#id8").datepicker({
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$("#id8").datepicker("destroy");
					this.focus();
				}
			});
		});
	});
	$(document).ready(function() {
		$('#example1').DataTable({
			"scrollY" : "50vh",
			"scrollCollapse" : true,

			responsive : true,
			searching : false,
			paging : false,
			info : false,
			dom : 'lBtipr',

			"buttons" : {
				"dom" : {
					"button" : {
						"tag" : "button",
						"className" : "btn btn-info"
					}
				},
				"buttons" : [ 'excelHtml5' ]
			}
		});
	});
</script>
<script type="text/javascript">
	
</script>

</html>
