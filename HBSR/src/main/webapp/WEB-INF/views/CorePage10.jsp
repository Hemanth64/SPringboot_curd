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
								style="padding-right: 10px; color: black">44</code>Matching death with
							PBSR record:</label>

					</div>
					<div class="form-group row">

						<label class=" col-md-4 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Incidence
							Registration Number </label>
						<div class=" col-md-7">
							<form:input class="form-control valKeyCN" type="text" id="desi2" path="incdRegnum" value="${CoreObject.incdRegnum}" tabindex="832"
								maxlength="7" />
						</div>

					</div>
					<div class="form-group row">
						<label class=" col-md-5 col-form-label"><code
								style="padding-right: 10px; color: black">45</code>Name of the
							person completing form </label>
						<div class=" col-md-6">
							<form:input class="form-control valKeyC" type="text" id="desi2" path="nameOFPerson" value="${CoreObject.nameOFPerson}" tabindex="833"
								maxlength="100" />
						</div>
						<div class=" col-md-1"></div>
					</div>
					<div class="form-group row">
						<label class=" col-md-4 col-form-label"><code
								style="padding-right: 10px; color: black">46</code>Date of
							completion of form</label>
						<div class=" col-md-4">
							<form:input class="form-control date-picker dat" type="text" id="datecompf" value="${CoreObject.dateOfComple}" tabindex="834"
								path="dateOfComple" placeholder=""/>
						</div>
						<div class=" col-md-2"></div>

					</div>
					
					<div class="form-group row">
						<label class=" col-md-4 col-form-label"><code
								style="padding-right: 10px; color: black">47</code>Name of Data Entry Operator </label>
						<div class=" col-md-4">
						<%-- <c:set var="user" scope="session" value="${CoreObject.deoName}"/>
								<c:if test="${user == null}">
								   <form:input class="form-control" type="text" id="DeoName" value="${loggedinuser}" tabindex="834" path="DeoName" readonly="true"/>
								</c:if>
								
								<c:if test="${user != ''}">								   
								 <form:input class="form-control" type="text" id="DeoName" value="${CoreObject.deoName}" tabindex="834"	path="DeoName" readonly="true"/>								
								</c:if> --%>
								
								<form:input class="form-control" type="text" id="DeoName" value="${CoreObject.deoName}" tabindex="834"	path="DeoName" readonly="true"/>
							
						</div>
						<div class=" col-md-2"></div>

					</div>
					<div class="form-group row">
					

					
					
						<label class=" col-md-4 col-form-label"><code
								style="padding-right: 10px; color: black">48</code>Date of entry</label>
						<div class=" col-md-4">					
							<form:input class="form-control" type="text" id="entryDate" value="${date}${CoreObject.entryDate}" tabindex="834"
								path="EntryDate" readonly="true"/>
						</div>
						<div class=" col-md-2"></div>

					</div>
				
			
</body>
<script>



$(function(){ 
	var d = new Date();
	var day = "0";
	var month = "0";
	if(d.getDate() < 10)
		day = "0"+d.getDate();
	else
		day = d.getDate();
	
	if(d.getMonth()+1 < 10)
		month = "0"+ parseInt(d.getMonth()+1);
	
	var strDate = day + "-" + month + "-" + d.getFullYear() ;

	
	/*  if($("#entryDate").val() == ""){
		$("#entryDate").val(strDate);
	}      	 */
});

$(function(){	
	var newUser = '${loggedinuser}';	
	if($("#DeoName").val() == ""){
		$("#DeoName").val(newUser);
	}
});


</script>

</html>