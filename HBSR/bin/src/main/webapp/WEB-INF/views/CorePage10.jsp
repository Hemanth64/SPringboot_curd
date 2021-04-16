<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="form-group row">
						<label class="col-md-12 col-form-label  weight-600 text-center alert-info "><code
								style="padding-right: 10px; color: black">VIII</code>MATCHING
							WITH PBSR</label>

					</div>
					<div class="form-group row">
						<label class="col-md-12 col-form-label "><code
								style="padding-right: 10px; color: black">44</code>Matching with
							PBSR record:</label>

					</div>
					<div class="form-group row">

						<label class=" col-md-4 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Incidence
							Registration number </label>
						<div class=" col-md-7">
							<form:input class="form-control valKeyCN" type="text" id="desi2" path="incdRegnum" value="${CoreObject.incdRegnum}" tabindex="788"
								maxlength="7" />
						</div>

					</div>
					<div class="form-group row">
						<label class=" col-md-5 col-form-label"><code
								style="padding-right: 10px; color: black">45</code>Name of the
							person completing form </label>
						<div class=" col-md-6">
							<form:input class="form-control valKeyC" type="text" id="desi2" path="nameOFPerson" value="${CoreObject.nameOFPerson}" tabindex="789"
								maxlength="100" />
						</div>
						<div class=" col-md-1"></div>
					</div>
					<div class="form-group row">
						<label class=" col-md-4 col-form-label"><code
								style="padding-right: 10px; color: black">46</code>Date of
							completion of forms</label>
						<div class=" col-md-4">
							<form:input class="form-control date-picker dat" type="text" id="datecompf" value="${CoreObject.dateOfComple}" tabindex="790"
								path="dateOfComple" placeholder=""/>
						</div>
						<div class=" col-md-2"></div>

					</div>
					<!-- <div class="form-group row">
						<label class=" col-md-12 col-form-label  weight-600"><code
								style="padding-right: 10px; color: black">47</code>Signature: </label>


					</div> -->
			
</body>
</html>