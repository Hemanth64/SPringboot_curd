<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>Hospital Based Stroke Registery</title>
<head>
<jsp:include page="include/head.jsp" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"
	integrity="sha256-vIL0pZJsOKSz76KKVCyLxzkOT00vXs+Qz4fYRVMoDhw="
	crossorigin="anonymous"></script>
	
<style>
.error {
	color: #ff0000;
	font-style: normal;
	font-weight: bold;
	font-size: 12px;
}

</style>
</head>
<body>
	<form:form action="registerSuccess" modelAttribute="regBean"
		id="myForm" autocomplete="off" onsubmit="return(validation())"
		method="POST">
		<div class="container">
			<div
				class="error-page login-wrap bg-cover height-100-p customscroll d-flex align-items-center flex-wrap justify-content-center pd-20">
				<div class="pd-10">
					<div class="error-page-wrap text-center color-white">
						<img src="resources/images/Logo.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="pd-ltr-20 xs-pd-20-10">
				<div class="min-height-200px">

					<div class="faq-wrap">
						<div id="accordion">
							<div class="card">
								<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
								
								<div class="form-group row">
								<a class="text-primary" href="loginpage"><span class="fa fa-sign-in"></span>  <strong>Home</strong></a>
								</div>

									<div class="form-group row">

										<label class="col-sm-12 col-md-1 col-form-label"></label> <label
											class="col-sm-12 col-md-10 col-form-label"> <font
											color="blue"><i> Registration Form to be Completed by
												Potential Participating Centres / Individuals</i> </font>


										</label> <label class="col-sm-12 col-md-1 col-form-label"></label>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-5 col-form-label"> <font
											color="red"> 1. &nbsp; Name of the Institute/Health
												Care Facility</font>
										</label>
										<div class="col-sm-12 col-md-5">
											<input class="form-control" type="text" id="inst"
												maxlength="150" name="instName"
												onkeypress="return isNotNumberKey(event)">

										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-1 col-form-label"> </label> <label
											class="col-sm-12 col-md-6 col-form-label">Postal
											Address </label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" placeholder=""
												maxlength="500" id="postal" name="postala" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-1 col-form-label"> </label> <label
											class="col-sm-12 col-md-6 col-form-label">Postal pin
											code</label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" placeholder=""
												maxlength="6"
												onkeypress="return (event.charCode >31 && 	event.charCode < 33) || (event.charCode > 47 && 	event.charCode < 58) || (event.charCode > 43 && 	event.charCode < 46) "
												id="pin" name="pincode" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-1 col-form-label"> </label> <label
											class="col-sm-12 col-md-6 col-form-label"> <font>
												Telephone, Fax, e-mail </font>
										</label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" id="tel"
												maxlength="100" name="tel_emai_fax" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label"> <font>
												2. &nbsp;&nbsp;Is your institution willing to participate in
												HBSR? </font>
										</label>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" id="customRadio" value="Yes"
												class="custom-control-input" name="participate" /> <label
												class="custom-control-label" for="customRadio"> <font>
													Yes </font>
											</label>

										</div>
										<div class="custom-control custom-radio mb-3"></div>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" id="customRadio1"
												class="custom-control-input" name="participate" value="No" />
											<label class="custom-control-label" for="customRadio1">
												<font> No </font> 
											</label>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <font>
												3. &nbsp;&nbsp;Name of Head of the Institution </font>
										</label>

										<div class="col-sm-12 col-md-6 col-form-label">
											<input class="form-control" type="text" placeholder=""
												maxlength="150" id="headinst" name="headofinst">


										</div>
									</div>

									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp; Mobile </label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder="" onkeypress="return (event.charCode >31 && 	event.charCode < 33) || (event.charCode > 47 && 	event.charCode < 58) || (event.charCode > 43 && 	event.charCode < 46) "
												id="mobile1" name="mobile1" maxlength="10"
												/>
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Email-ID </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="email" placeholder="" maxlength="50"
												name="emailid1" id="email1" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <strong><font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Principal
													Investigator </font></strong>
										</label>

									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder="Name"
												maxlength="150" name="name1" id="name1">
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Designation </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="text"
												placeholder="Designation" id="desi1" name="desi1"
												maxlength="250" />
										</div>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder="" onkeypress="return (event.charCode >31 && 	event.charCode < 33) || (event.charCode > 47 && 	event.charCode < 58) || (event.charCode > 43 && 	event.charCode < 46) "
												maxlength="10" id="mobile2" name="mobile2"
												  />
										</div>
										<label class="col-sm-12 col-md-2 col-form-label"> <font
											color="red">Email-ID</font>
										</label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="email" placeholder=""
												maxlength="50" id="email2" name="emailid2" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <strong><font>&nbsp;&nbsp;&nbsp;&nbsp;Co-Principal
													Investigator/s (if any)</font></strong>
										</label>


									</div>

									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder=""
												maxlength="150" id="name2" name="name2" />
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Designation </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="text" placeholder=""
												maxlength="250" id="desi2" name="desi2" />
										</div>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder="" onkeypress="return (event.charCode >31 && 	event.charCode < 33) || (event.charCode > 47 && 	event.charCode < 58) || (event.charCode > 43 && 	event.charCode < 46) "
												id="mobile3" name="mobile3" maxlength="10"
													/>
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Email-ID </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="email" placeholder=""
												id="email3" name="emailid3" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <strong><font>&nbsp;&nbsp;&nbsp;&nbsp;Co-Principal
													Investigator/s (if any)</font></strong>
										</label>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder=""
												maxlength="150" id="name3" name="name3" />
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Designation </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="text" placeholder=""
												id="desi3" name="desi3" maxlength="250" />
										</div>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder="" onkeypress="return (event.charCode >31 && 	event.charCode < 33) || (event.charCode > 47 && 	event.charCode < 58) || (event.charCode > 43 && 	event.charCode < 46) "
												id="mobile4" name="mobile4" maxlength="10"
												 />
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Email-ID </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="email" placeholder="" maxlength="50"
												id="email4" name="emailid4" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <strong><font>&nbsp;&nbsp;&nbsp;&nbsp;Co-Principal
													Investigator/s (if any)</font></strong>
										</label>


									</div>

									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder=""
												id="name4" name="name4" maxlength="150" />
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Designation </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="text" placeholder=""
												id="desi4" name="desi4" maxlength="250" />
										</div>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-2 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile

										</label>
										<div class="col-sm-6 col-md-4">
											<input class="form-control" type="text" placeholder="" onkeypress="return (event.charCode >31 && 	event.charCode < 33) || (event.charCode > 47 && 	event.charCode < 58) || (event.charCode > 43 && 	event.charCode < 46) "
												id="mobile5" name="mobile5" maxlength="10"
												 />
										</div>
										<label class="col-sm-12 col-md-2 col-form-label">
											Email-ID </label>
										<div class="col-sm-12 col-md-4">
											<input class="form-control" type="email" placeholder="" maxlength="50"
												id="email5" name="emailid5" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <strong>
												4. &nbsp;&nbsp;Brief Profile of the Institution </strong>
										</label>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-4 col-form-label">

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year

										</label> <label class="col-sm-12 col-md-2 col-form-label"> <strong>
												2016 </strong>
										</label> <label class="col-sm-12 col-md-2 col-form-label"> <strong>
												2017 </strong>

										</label> <label class="col-sm-12 col-md-2 col-form-label"> <strong>
												2018 </strong>
										</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number
											of In-patient Beds </label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" id="noi2016"
												name="Inpa16" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="noi2017" name="Inpa17" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="noi2018" name="Inpa18" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total
											Out-patient Attendance </label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="top2016" name="ToutP16" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="top2017" name="ToutP17" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="top2018" name="ToutP18" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total
											In-patient registrations </label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="tr2016" name="TotalReg16" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="tr2017" name="TotalReg17" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="tr2018" name="TotalReg18" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-4 col-form-label"> <font
											>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total
												cases of stroke </font>
										</label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="tps2016" name="TotalPr16" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px" />


										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="tps2017" name="TotalPr17" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px" />


										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" placeholder=""
												id="tps2018" name="TotalPr18" maxlength="9"
												onkeypress="return isNumberKey(event)" style="width: 100px" />


										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">5.
											&nbsp;&nbsp;Is there in-house Department of Radiology /
											Imaging? </label>

										<div class="custom-control custom-radio mb-3">
											<input type="radio" value="Yes" id="customRadio3"
												class="custom-control-input" name="radiologyIma"
												onclick="showHideInfo1()"> <label
												class="custom-control-label" for="customRadio3"> Yes
											</label>
										</div>
										<div class="custom-control custom-radio mb-3"></div>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" name="radiologyIma" value="No"
												id="customRadio4" class="custom-control-input"
												onclick="showHideInfo2()"> <label
												class="custom-control-label" for="customRadio4">No</label>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If
											no,is imaging available outside for your patients </label>

										<div class="custom-control custom-radio mb-3">
											<input type="radio" name="imagAvOuP" id="customRadio5"
												value="Yes" class="custom-control-input"
												onclick="showHideInfo()" disabled> <label
												class="custom-control-label" for="customRadio5">Yes</label>
										</div>
										<div class="custom-control custom-radio mb-3"></div>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" name="imagAvOuP" id="customRadio6"
												value="No" class="custom-control-input"
												onclick="showHideInfo()" disabled> <label
												class="custom-control-label" for="customRadio6">No</label>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-12 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If
											yes in either question, please fill section below.if no to
											both,go to item 6. </label>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number
											of CT Scans / MRI done during the year 2018 </label> <label
											class="col-sm-12 col-md-2 col-form-label"> Total</label> <label
											class="col-sm-12 col-md-2 col-form-label"> Stroke</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CT-Head</label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" name="Ct_HeadTotal"
												id="ctht" maxlength="10"
												onkeypress="return isNumberKey(event)" style="width: 100px"
												disabled>
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" name="Ct_HeadStr"
												id="cthst" maxlength="10"
												onkeypress="return isNumberKey(event)" style="width: 100px"
												disabled>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MRI-Brain-Head</label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" name="Mri_BrhTo"
												id="mrbrh" maxlength="10"
												onkeypress="return isNumberKey(event)" style="width: 100px"
												disabled>
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" name="Mri_BrhStr"
												id="mrbrst" maxlength="10"
												onkeypress="return isNumberKey(event)" style="width: 100px"
												disabled>
										</div>
									</div>
									<div class="form-group row">

										<label class="col-sm-12 col-md-4 col-form-label"></label> <label
											class="col-sm-12 col-md-2 col-form-label"> <strong>
												Total </strong>
										</label>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" name="Tt" id="tt"
												maxlength="10" onkeypress="return isNumberKey(event)"
												style="width: 100px" disabled>
										</div>
										<div class="col-sm-12 col-md-2">
											<input class="form-control" type="text" name="TotStr"
												id="tts" maxlength="10"
												onkeypress="return isNumberKey(event)" style="width: 100px"
												disabled>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-12 col-form-label"> 6.
											&nbsp;&nbsp;Number of Stroke patients treated in your
											insitution during year 2018 at Departments of: </label>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-3 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Neurology
										</label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" name="neurology"
												maxlength="250" id="neu">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-3 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Neurosurgery(SAH,ICH)
										</label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" name="neurologySAH"
												maxlength="250" id="neurlS">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-3 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Medicine
										</label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" name="medicine"
												maxlength="250" id="med">
										</div>

									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-3 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others
										</label>
										<div class="col-sm-12 col-md-3">
											<input class="form-control" type="text" name="others"
												maxlength="250" id="other">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label"> <font>
												7. &nbsp;&nbsp;Is there a dedicated stroke unit in the
												institution? </font>
										</label>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" id="customRadio7" value="Yes"
												name="dedicatestroke" class="custom-control-input"
												onClick="getenable()" /> <label
												class="custom-control-label" for="customRadio7"> <font>
													Yes </font>
											</label>

										</div>
										<div class="custom-control custom-radio mb-3"></div>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" id="customRadio8"
												class="custom-control-input" value="No"
												name="dedicatestroke" onClick="getenable()" /> <label
												class="custom-control-label" for="customRadio8"> <font>
													No </font>

											</label>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) If yes, briefly
											describe the facilities available </label>
										<div class="col-sm-12 col-md-6">
											<input class="form-control" type="text" name="brefily"
												maxlength="500" id="briefly" disabled />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) If no, are there any
											earmarked stroke beds in the </label>
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label"> <font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Neurology
												ward/Medicine ward/Stroke ward? </font>
										</label>

										<div class="custom-control custom-radio mb-3">
											<input type="radio" id="customRadio9" value="Yes"
												class="custom-control-input" name="neurology_medicine"
												onClick="getenable1()" /> <label
												class="custom-control-label" for="customRadio9"> <font>
													Yes </font>
											</label>

										</div>
										<div class="custom-control custom-radio mb-3"></div>
										<div class="custom-control custom-radio mb-3">
											<input type="radio" id="customRadio10"
												class="custom-control-input" name="neurology_medicine"
												value="No" onClick="getenable1()" /> <label
												class="custom-control-label" for="customRadio10"> <font>
													No </font>
											</label>
										</div>

									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-6 col-form-label">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If yes,
											mention the number of beds</label>
										<div class="col-sm-12 col-md-1">
											<input class="form-control" type="text" name="mention"
												id="numbeds1" maxlength="4"
												onkeypress="return isNumberKey(event)" style="width: 70px"
												disabled>
										</div>
										<!-- <div class="col-sm-12 col-md-1">
											<input class="form-control" type="text" name="mention"
												id="numbeds2" maxlength="4"
												onkeypress="return isNumberKey(event)" style="width: 70px"
												disabled>
										</div> -->
									</div>
									<div class="form-group row">
										<label class="col-sm-12 col-md-12 col-form-label"> 8.
											&nbsp;&nbsp;One critical and important item of patient
											information for patients diagnosed with stroke is the
											correct, complete and detailed
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;permanent residential
											address with duration of stay (Or living) in that address.
											Patient status after discharge at day 28,
											3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;months need to be
											completed. This needs to be gathered directly from the
											patient or patient's representative. When can you
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;obtain this information?
											(Multiple responses possible). </label>
									</div>
									<div class="form-group">
										<div class="row">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<div class="col-md-10 col-sm-12 col-form-label">

												<div class="custom-control custom-radio mb-5">
													<div class="custom-control custom-checkbox mb-5">
														<input type="checkbox" class="custom-control-input"
															id="customCheck1" name="intial"
															value="At initial registration"> <label
															class="custom-control-label" for="customCheck1">At
															initial registration</label>
													</div>
													<div class="custom-control custom-checkbox mb-">
														<input type="checkbox" class="custom-control-input"
															name="ct_mri" id="customCheck2"
															value="At the time of CT/MRI/Department of Radiology">
														<label class="custom-control-label" for="customCheck2">At
															the time of CT/MRI/Department of Radiology </label>
													</div>
													<div class="custom-control custom-checkbox mb-5">
														<input type="checkbox" class="custom-control-input"
															name="records" id="customCheck3"
															value="From the records (If from the records, please indicate where
															is the record kept?)">
														<label class="custom-control-label" for="customCheck3">From
															the records (If from the records, please indicate where
															is the record kept?) </label>
													</div>
													<div class="custom-control custom-checkbox mb-5">
														<input type="checkbox" class="custom-control-input"
															name="department" id="customCheck4"
															value="Department of Medicine"> <label
															class="custom-control-label" for="customCheck4">Department
															of Medicine </label>
													</div>
													<div class="custom-control custom-checkbox mb-">
														<input type="checkbox" class="custom-control-input"
															name="other_dep" id="customCheck5" value="Specify:">
														<label class="custom-control-label" for="customCheck5">From
															the records of other Departments-specify </label>
														<div class="col-sm-12 col-md-6">
															<input class="form-control" type="text" name="other_depSpecify" 
																maxlength="250" placeholder="specify" id="specify1"
																disabled>
														</div>
													</div>
													<div class="custom-control custom-checkbox mb-5">
														<input type="checkbox" class="custom-control-input"
															name="concerned" id="customCheck6"
															value="Through concerned clinician"> <label
															class="custom-control-label" for="customCheck6">
															Through concerned clinician </label>
													</div>
													<div class="custom-control custom-checkbox mb-5">
														<input type="checkbox" class="custom-control-input"
															id="customCheck7" name="other_means" value="Specify:">
														<label class="custom-control-label" for="customCheck7">
															Other means (Please specify the methodologies) </label>
														<div class="col-sm-12 col-md-6">
															<input class="form-control" type="text"
																placeholder="specify" id="specify2" name="other_meansSpecify"
																maxlength="250" disabled>
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-12 col-md-12 col-form-label">
												8.1&nbsp;&nbsp; Maintenance of Medical Records </label>
										</div>
										<div class="form-group">
											<div class="row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="col-md-5 col-sm-12">
													<div class="custom-control custom-radio  mb-5">
														<div class="custom-control custom-checkbox mb-5">
															<input type="checkbox" id="customCheck8"
																name="in_patient" value="Only In-Patient Records"
																class="custom-control-input"> <label
																class="custom-control-label" for="customCheck8">
																Only In-Patient Records </label>
														</div>
														<div class="custom-control custom-checkbox mb-5">
															<input type="checkbox" id="customCheck9"
																name="bothRecords"
																value="Both In and Out-patient Records"
																class="custom-control-input"> <label
																class="custom-control-label" for="customCheck9">
																Both In and Out-patient Records </label>
														</div>
														<div class="custom-control custom-checkbox mb-5">
															<input type="checkbox" id="customCheck10"
																name="noMedical" value="No Medical Records"
																class="custom-control-input"> <label
																class="custom-control-label" for="customCheck10">
																No Medical Records </label>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-12 col-form-label">
													8.2 &nbsp;&nbsp;If you keep records for all visits,specify
													wheather each visit has a different number or the same
													number </label>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio18" name="ifuKeepRec"
														value="Same" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio18">Same</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio19" name="ifuKeepRec"
														value="Different" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio19">Different</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-4 col-form-label">
													8.3 &nbsp;&nbsp;Are medical records in the form of </label>
												<div class="custom-control custom-radio mb-12"></div>
												<div class="custom-control custom-radio mb-1">

													<input type="radio" id="customRadio20" name="medRecInFor"
														value="Hard Copy" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio20">Hard
														Copy</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio21" name="medRecInFor"
														value="Computerized" class="custom-control-input">
													<label class="custom-control-label" for="customRadio21">Computerized</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio22" name="medRecInFor"
														value="Both" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio22">Both</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-12 "> 9
													&nbsp;&nbsp;&nbsp;&nbsp;Available computer facilities </label>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-6 col-form-label">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													Servers, desktops, laptops </label>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio23"
														name="server_desk_lap" value="Yes"
														class="custom-control-input"> <label
														class="custom-control-label" for="customRadio23">Yes</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio24"
														name="server_desk_lap" value="No"
														class="custom-control-input"> <label
														class="custom-control-label" for="customRadio24">No</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-6">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Internet
													connectivity </label>
											</div>
											<div class="form-group">
												<div class="row">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="custom-control custom-radio mb-5">

														<div class="col-md-12 col-sm-12">

															<div class="custom-control custom-checkbox mb-5">
																<input type="checkbox" id="checkbox11"
																	name="overall" value="a) Broad Band-Overall"
																	class="custom-control-input"> <label
																	class="custom-control-label" for="checkbox11">
																	a) Broad Band-Overall </label>
															</div>
															<div class="custom-control custom-checkbox mb-5">
																<input type="checkbox" id="checkbox12"
																	name="eachDep"
																	value="b) Broad Band for each department"
																	class="custom-control-input"> <label
																	class="custom-control-label" for="checkbox12">
																	b) Broad Band for each department </label>
															</div>
															<div class="custom-control custom-checkbox mb-5">
																<input type="checkbox" id="checkbox13"
																	name="inter_others" class="custom-control-input">
																<label class="custom-control-label" for="checkbox13">
																	c) Others </label>
																<div class="col-sm-2 col-md-8">
																	<input class="form-control" type="text"
																		placeholder="specify" id="specify3"
																		name="inter_OthersSpecify" maxlength="250" disabled>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-12 col-md-12 col-form-label">
													10 &nbsp;&nbsp;Would Your Institute / Department be able to
													obtain the following or funds for the following items, for
													use in the project ?</label>

											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<label class="col-sm-12 col-md-4 col-form-label"> </label> <label
													class="col-sm-12 col-md-5 col-form-label">
													Available </label>
											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<label class="col-sm-12 col-md-4 col-form-label">
													Personal Computer </label>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio28" name=persComp
														value="Yes" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio28">Yes</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio29" name="persComp"
														value="No" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio29">No</label>
												</div>
											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<label class="col-sm-12 col-md-4 col-form-label">
													Independent Telephone Connection </label>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio30" name="indTelConn"
														value="Yes" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio30">Yes</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio31" name="indTelConn"
														value="No" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio31">No</label>
												</div>
											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<label class="col-sm-12 col-md-4 col-form-label">
													Internet / e-mails Connection </label>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio32"
														name="internet_email" value="Yes"
														class="custom-control-input"> <label
														class="custom-control-label" for="customRadio32">Yes</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio33"
														name="internet_email" value="No"
														class="custom-control-input"> <label
														class="custom-control-label" for="customRadio33">No</label>
												</div>
											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<label class="col-sm-12 col-md-4 col-form-label">
													Contigency / maintenance </label>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio34" name="contMain"
														value="Yes" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio34">Yes</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio35" name="contMain"
														value="No" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio35">No</label>
												</div>
											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<label class="col-sm-12 col-md-4 col-form-label">
													Data Collection / Entry etc </label>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio36" name="dataColl"
														value="Yes" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio36">Yes</label>
												</div>
												<div class="custom-control custom-radio mb-1"></div>
												<div class="custom-control custom-radio mb-1">
													<input type="radio" id="customRadio37" name="dataColl"
														value="No" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio37">No</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-12 col-form-label">
													11 &nbsp;&nbsp;Would your Institution be able to collect
													data and start transmission to NCDIR for all cases of
													&nbsp;stroke registered / diagnosed
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ treated from 1
													january 2019? </label>
											</div>
											<div class="form-group row">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div
													class="col-sm-4 col-md-2 custom-control custom-radio mb-1">
													<input type="radio" id="customRadio38" name="ncdirCollData"
														value="Yes" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio38">Yes</label>
												</div>
												<div
													class="col-sm-12 col-md-1 custom-control custom-radio mb-1">
													<input type="radio" id="customRadio39" name="ncdirCollData"
														value="No" class="custom-control-input"> <label
														class="custom-control-label" for="customRadio39">No</label>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-md-12"> 12
													&nbsp;&nbsp;Any other Relevant information: </label>

											</div>
											<div class="col-sm-2 col-md-12">
												<textarea class="form-control rounded-100" id="information"
													maxlength="1000" name="anyOtherRel"></textarea>
											</div>
											<div class="custom-control custom-label mb-1"></div>
											<div class="custom-control custom-label mb-1"></div>
											<div class="custom-control custom-label mb-1"></div>
											<div class="custom-control custom-label mb-1"></div>
											<div class="custom-control custom-label mb-1"></div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-12">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<strong>Head of Institution Sign and Seal </strong>
												</label>

											</div>

											<div class="form-group row">
												<strong> <label
													class="col-sm-12 col-md-12 col-form-label">&nbsp;
														&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; The above form
														complete in all respects may be sent to: </label></strong>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-md-12 col-form-label">&nbsp;
													&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ICMR-National
													Centre for Disease Informatics and Research Nirmal Bhawan -
													ICMR Complex (II Floor), Poojanahalli Road,
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Off
													NH-7, Adjacent to Trumpet flyover of BIAL, Kannamangala
													Post, Bangalore-562 110, Tel: 080-22176400;
													&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													Fax: 080-30723643,E-mail: ncdir@ncdirindia.org </label>
											</div>

											<div class="form-group row"></div>
											<div class="row">
												<div class="col-sm-5"></div>

												<div class="col-sm-2">
													<div class="input-group">


														<input class="btn btn-outline-primary btn-lg btn-block"
															type="submit" value="Submit">
													</div>
												</div>

												<div class="col-sm-2">
													<div class="forgot-password">
														<form:button type="button"
															class="btn btn-outline-primary btn-lg btn-block"
															value="/report">PrintPreview</form:button>
													</div>
												</div>

												<!-- <a href="report/?type=xls"">Download Excel</a> -->
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- js -->
	</form:form>
	<%--  <form id="login" action="report" method="GET">
    <label>Username: </label>
    <input type="text" name="username">
    <br/>
    <br/>
    <button>Print Preview</button> --%>

	<script src="resources/scripts/js/script.js"></script>
	<script src="resources/scripts/custom_js/Hbsr_Registration.js"></script>
	<script src="resources/scripts/custom_js/pdf.js"></script>

</body>


</html>