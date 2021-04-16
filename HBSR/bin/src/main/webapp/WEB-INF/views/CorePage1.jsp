<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style type="text/css">
.alert-success {
	background-color: #2894BA;
	font-family: normal;
	color: black;
	text-align: center;
}

</style>
<script type="text/javascript">
	function selectOnlyThis(id) {
		var myCheckbox = document.getElementsByName("cultural");
		Array.prototype.forEach.call(myCheckbox, function(el) {
			el.checked = false;
		});
		id.checked = true;
	}

	document.addEventListener("DOMContentLoaded", function(event) {
		document.getElementById("name2").focus();
	});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="form-group row">
		<label class="col-md-12 col-form-label weight-600   text-center alert-info "><code
				style="padding-right: 10px; color: black">I</code>IDENTIFYING
			INFORMATION </label></div>
	<div class="form-group row">
		<div class="col-md-4">
			<form:hidden path="core_id" value="${CoreObject.core_id}" />
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">1.</code><font
			color="black"> Name of Participating Centre</font></label>
		<div class="col-md-5">
			<form:input class="form-control" id="name" path="partCenNam"
				onkeypress="return isNotNumberKey(event)" maxlength="100"
				 value="${ReffCenName}" readonly="true" />

		</div>
		<label class="col-md-2 col-form-label text-right"><font color="black">
				Centre Code</font> </label>
		<div class="col-md-1">
			<form:input class="form-control" id="desi2" path="cenCode"
				maxlength="3" onkeypress="return isNumberKey(event)" 
				readonly="true" value="${ReffCenCod}" />

		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-4 col-form-label" for="regNum"> <code
				style="padding-right: 10px; color: black">2.</code> <font
			color="black">HBSR Registration Number</font>
		</label>
		<div class="col-md-4 ">
			<form:input path="regNum" id="name2" name="name2" class="form-control valKeyN" tabindex="1"
				value="${CoreObject.regNum}" maxlength="7" />



		</div>
		<span><font size="2" style="padding-left: 40px;"><i>(First
					2 digits are for year of registration and the next 5 digits for
					actual registration number)</i></font></span>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-6">

				<label> <code style="padding-right: 10px; color: black">3.</code>Registration
					at Reporting Institution
				</label>
			</div>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio1" value="1" tabindex="2"
						autofocus="autofocus" class="custom-control-input" path="repInst"  
						checked="${CoreObject.repInst == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio1"> <font>
							Out-Patient </font>
					</label>

				</div>
			</div>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio2" value="2" tabindex="3"
						autofocus="autofocus" class="custom-control-input" path="repInst"
						checked="${CoreObject.repInst == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio2"> <font>
							In-Patient </font>
					</label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-4 col-form-label" for="sourceofReg"> <code
				style="padding-right: 10px; color: black">3.1</code> <font
			color="black">Name of source of registration</font>
		</label>
		<div class="col-md-4">
			<form:input class="form-control valKeyCN" id="name2" path="sourceofReg"
				maxlength="100" 
				tabindex="4" value="${CoreObject.sourceofReg}" />
		</div>
		<label class="col-md-2 col-form-label"> Code </label>
		<div class="col-md-1">
			<form:input class="form-control valKeyCN" id="desi2" path="code1"
				maxlength="3" tabindex="5" value="${CoreObject.code1}" />
		</div>
		<div class=" col-md-1"></div>
	</div>
	<div class="form-group row">

		<label class=" col-md-5 col-form-label" for="deptName"> <code
				style="padding-right: 10px; color: black">3.2</code><font
			color="black">Name of department / unit / physician</font>
		</label>
		<div class=" col-md-3">
			<form:input class="form-control valKeyCN" id="name2" path="deptName"  tabindex="6"
				maxlength="40" 
				value="${CoreObject.deptName}" />
		</div>
		<label class="  col-md-2 col-form-label" for="code2"> Code </label>
		<div class=" col-md-1">
			<form:input class="form-control valKeyCN" id="desi2" path="code2"  tabindex="7"
				maxlength="3" onkeypress="return isNotNumberKey(event)"
				value="${CoreObject.code2}" />
		</div>
		<div class=" col-md-1"></div>
	</div>
	<div class="form-group row">

		<label class=" col-md-4 col-form-label" for="hospRegNum"> <code
				style="padding-right: 10px; color: black">3.3</code><font
			color="black">Hospital Registration Number</font>
		</label>
		<div class="col-sm-2 col-md-4">
			<form:input class="form-control valKeyC_Extra" id="name2" path="hospRegNum"  tabindex="8"
				maxlength="20" value="${CoreObject.hospRegNum}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">4.</code>Name of Paitient
		</label>
		<div class=" col-md-2">
			<form:select class="form-control" path="patTitle"  tabindex="9">
				<form:option value=" ">--Title--</form:option>
				<form:option value="Mr.Shri"
					selected="${CoreObject.patTitle == 'Mr.Shri' ? 'checked' : '' }">Mr./Shri.</form:option>
				<form:option value="Mrs.Shrimati"
					selected="${CoreObject.patTitle == 'Mrs.Shrimati' ? 'checked' : '' }">Mrs./Shrimati</form:option>
				<form:option value="Master.Kr"
					selected="${CoreObject.patTitle == 'Master.Kr' ? 'checked' : '' }">Master/Kr.</form:option>
				<form:option value="Ms.Kumari"
					selected="${CoreObject.patTitle == 'Ms.Kumari' ? 'checked' : '' }">Ms./Kumari</form:option>
				<form:option value="Dr."
					selected="${CoreObject.patTitle == 'Dr.' ? 'checked' : '' }">Dr.</form:option>
				<form:option value="BabyOf"
					selected="${CoreObject.patTitle == 'BabyOf' ? 'checked' : '' }">Baby Of</form:option>
			</form:select>
		</div>
		<div class="col-md-2">
			<form:input class="form-control valKeyC" placeholder="firstname" id="desi2"
				path="patFirstN" maxlength="40"  tabindex="10"
				
				value="${CoreObject.patFirstN}" />
		</div>
		<div class="col-md-2">
			<form:input class="form-control valKeyC" placeholder="middlename" id="desi2"
				path="patMidN" maxlength="40"  tabindex="11"
				
				value="${CoreObject.patMidN}" />
		</div>
		<div class="col-md-2">
			<form:input class="form-control valKeyC" placeholder="lastname" id="desi2"
				path="patLastN" maxlength="40"  tabindex="12"
				
				value="${CoreObject.patLastN}" />
		</div>

		<span class="label label-success italic" style="padding-left: 40px;"><font
			size="2">(At least one name is Compulsory)</font></span>
	</div>
	<div class="form-group row">
		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">5.</code>Place of
			residence<span class="italic"><font size="2">(place of
					usual residence where the patient has been residing for the past 1
					year)</font></span></label>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<div class="custom-control custom-radio mb-3">
					<code style="padding-right: 22px; color: black">5.1</code>
					<form:radiobutton id="customRadio3" value="1"
						class="custom-control-input" path="residence"  tabindex="13"
						onClick="getEnableAddress()"
						checked="${CoreObject.residence == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio3">Urban
						Areas <span class="italic"><font size="2">(Town /
								Cities)</font></span>
					</label>
				</div>
			</div>
			<div class="col-md-6 ">

				<div class="custom-control custom-radio mb-3">
					<code style="padding-right: 50px; color: black">5.2</code>
					<form:radiobutton id="customRadio4" value="2"  tabindex="14"
						class="custom-control-input" path="residence"
						onClick="getEnableAddress1()"
						checked="${CoreObject.residence == '2' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio4">Non-urban
						/ Rural Areas </label>

				</div>
			</div>
		</div>
	</div>

	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> House No </label>
		<div class="col-md-2">
			<form:input class="form-control" id="hsno" path="housNo1"  tabindex="15"
				maxlength="25" onkeypress="return isNumberKey(event)"
				disabled="true" value="${CoreObject.housNo1}" />
		</div>
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label">&nbsp;&nbsp;&nbsp;
			House No </label>
		<div class=" col-md-2">
			<form:input class="form-control" id="hsno1" path="housNo2" tabindex="16"
				maxlength="25" onkeypress="return isNumberKey(event)"
				disabled="true" value="${CoreObject.housNo2}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> Road / Street Name </label>
		<div class="col-md-2">
			<form:input class="form-control valKeyCN" id="ward" path="road" maxlength="40"  tabindex="17"
				disabled="true" value="${CoreObject.road}" />
		</div>
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label">&nbsp;&nbsp;&nbsp;
			Ward </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyN" id="ward1" path="ward"  tabindex="18"
				maxlength="15" disabled="true" value="${CoreObject.ward}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> Area / Locality </label>
		<div class="col-md-2">
			<form:input class="form-control valKeyCN" id="area" path="area" maxlength="40"  tabindex="19"
				disabled="true" value="${CoreObject.area}" />
		</div>
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label">&nbsp;&nbsp;&nbsp;
			Name of Gram Panchayat </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyCN" id="panchy" path="gramaPanc"  tabindex="20"
				maxlength="40" disabled="true" value="${CoreObject.gramaPanc}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label" for="division"> Ward / Corporation /
			Division </label>
		<div class="col-md-2">
			<form:input class="form-control valKeyN" id="corp" path="division"  tabindex="21" 
				maxlength="15" disabled="true" value="${CoreObject.division}" />
		</div>
		<div class=" col-md-1"></div>
		<label class=" col-md-4 col-form-label">&nbsp;&nbsp;&nbsp;
			Name of Sub-Unit of District </label>
		<div class=" col-md-1">
			<form:input class="form-control valKeyN" id="subDist" path="subDist"  tabindex="22"
				maxlength="15" disabled="true" value="${CoreObject.subDist}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> Name of City / Town </label>
		<div class="col-md-2">
			<form:input class="form-control valKeyCN"  id="city" path="city" maxlength="40"  tabindex="23"
				disabled="true" value="${CoreObject.city}" />
		</div>
		<div class=" col-md-1"></div>
		<label class=" col-md-4 col-form-label">&nbsp;&nbsp;&nbsp;
			Name of PHC / Sub Centre </label>
		<div class=" col-md-1">
			<form:input class="form-control valKeyCN" id="subCen" path="subCenter"  tabindex="24"
				maxlength="40" disabled="true" value="${CoreObject.subCenter}" />
		</div>

	</div>


	<br>


	<div class="form-group row">

		<label class=" col-md-3 col-form-label" for="dist"> &nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; Name of District </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyCN" id="Dist" path="dist" maxlength="45" tabindex="25"
				value="${CoreObject.dist}" />
		</div>
		<div class=" col-md-2"></div>
	</div>

	<div class="form-group row">

		<label class=" col-md-3 col-form-label" for="postalPin"> &nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; Postal Pin Code </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyN" id="pin" path="postalPin" tabindex="26"
				maxlength="6" 
				value="${CoreObject.postalPin}" />
		</div>
		<div class=" col-md-2"></div>
	</div>

	<div class="form-group row">

		<label class=" col-md-3 col-form-label"> &nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; Telephone No(s) Off </label>
		<div class=" col-md-4">
			<form:input class="form-control valKeyN" id="tel" path="off_tel" tabindex="27"
				maxlength="24" 
				value="${CoreObject.off_tel}" />
		</div>
		<div class=" col-md-2"></div>
	</div>

	<div class="form-group row">

		<label class=" col-md-3 col-form-label"> &nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; Res </label>
		<div class=" col-md-4">
			<form:input class="form-control valKeyN" id="res" path="res" maxlength="24	" tabindex="28"
				value="${CoreObject.res}" />
		</div>
		<div class=" col-md-2"></div>
	</div>

	<div class="form-group row">

		<label class=" col-md-3 col-form-label">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile No.1 </label>
		<div class=" col-md-4">
			<form:input class="form-control valKeyN" id="mob" path="mob1" maxlength="32" tabindex="29"
				 value="${CoreObject.mob1}" />
		</div>
		<div class=" col-md-2"></div>
	</div>

	<div class="form-group row">

		<label class=" col-md-3 col-form-label"> &nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; Mobile No.2 </label>
		<div class=" col-md-4">
			<form:input class="form-control valKeyN" id="mob1" path="mob2" maxlength="32" tabindex="30"
				 value="${CoreObject.mob2}" />
		</div>
		<div class=" col-md-2"></div>
	</div>



	<div class="form-group row">

		<label class=" col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">5.3</code> Other Address </label>

	</div>


	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> Address </label>
		<div class=" col-md-6">
			<form:input class="form-control" id="name2" path="address" tabindex="31"
				maxlength="250" value="${CoreObject.address}" />
		</div>
		<div class=" col-md-2"></div>
	</div>


	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> District </label>
		<div class=" col-md-3">
			<form:input class="form-control valKeyCN" id="name2" path="district" tabindex="32"
				maxlength="45" value="${CoreObject.district}" />
		</div>
		<div class=" col-md-5"></div>
	</div>

	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> Pin Code </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyN" id="name2" path="pin" maxlength="6" tabindex="33"
				 value="${CoreObject.pin}" />
		</div>
		<div class=" col-md-6"></div>
	</div>

	<div class="form-group row">
		<div class=" col-md-1"></div>
		<label class=" col-md-3 col-form-label"> Telephone </label>
		<div class=" col-md-5">
			<form:input class="form-control valKeyN" id="name2" path="tel" maxlength="32" tabindex="34"
				onkeypress="return isNumberKey(event)" value="${CoreObject.tel}" />
		</div>
		<div class=" col-md-3"></div>
	</div>




	<div class="form-group row">

		<label class=" col-md-6 col-form-label" for="durationStay"><code
				style="padding-right: 10px; color: black">6</code><font
			color="black">Duration of stay</font><span class="italic"><font
				size="2"> (At the place of usual residence (In Years))</font></span> </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyN" placeholder="" id="name2" tabindex="35"
				path="durationStay" maxlength="2"
				
				value="${CoreObject.durationStay}" />
		</div>
	</div>


	<div class="form-group row">

		<label class=" col-md-2 col-form-label" for="age"> <code
				style="padding-right: 10px; color: black">7</code><font
			color="black">Age</font> <span class="italic"><font size="2">(years)</font></span>
		</label>
		<div class=" col-md-1">
			<form:input class="form-control valKeyN" id="name2" path="age" maxlength="2" tabindex="36"
				 value="${CoreObject.age}" />
		</div>

		<label class=" col-md-3 col-form-label" for="dob">Date of Birth <span
			class="italic"><font size="2">( years)</font></span>
		</label>
			<div class=" col-md-3">
			<form:input class="form-control date-picker dat" id="dobDate" path="dob" tabindex="37"
				placeholder="Select Date" value="${CoreObject.dob}" />
		</div>
		<div class=" col-md-3 col-form-label"></div>
	</div>

	

	<div class="form-group">
		<div class="row" >
				<div class="col-md-2">
					<label class="control-lable" for="sex"><code style="padding-right: 10px; color: black">8</code><font
						color="black">Sex</font></label>
				</div>
				
				
				<div class="col-md-2">
					<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio5" name="btn_sex" value="1" class="custom-control-input btn_sex" path="sex" tabindex="38"
						checked="${CoreObject.sex == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio5"> <font>
							Male </font>
					</label>

					</div>
				</div>
				<div class="col-md-2">		
					<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio6" name="btn_sex" value="2"
								class="custom-control-input btn_sex" path="sex" tabindex="39"
								checked="${CoreObject.sex == '2' ? 'checked' : '' }" />
							<label class="custom-control-label" for="customRadio6"> <font>
									Female </font>
							</label>		
					</div>
				</div>
				<div class="col-md-2">
				<div class="custom-control custom-radio mb-3 ">
					<form:radiobutton id="customRadio7" value="3"
						class="custom-control-input btn_sex" path="sex" tabindex="40"
						checked="${CoreObject.sex == '3' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio7"> <font>
							Others </font>							
					</label>					
				</div>
				</div>
				<div class="col-md-4">
					<label  id="sex_Err" class="errorMsg">Please choose Sex *</label>
				</div>
		</div>				
	</div> 



	<div class="form-group">
		<div class="row">
			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">9</code>Number
					of Languages spoken<span class="italic"><font size="2">(Multiple
							options can be chosen)</span></font></label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Assam" tabindex="41"
						value="01" id="customCheck1-8"
						checked="${CoreObject.lang_Assam == '01' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-8">01.
						Assamese </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Beng" tabindex="42"
						value="02" id="customCheck1-9"
						checked="${CoreObject.lang_Beng == '02' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-9">
						02. Bengali </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Guja" tabindex="43"
						value="03" id="customCheck1-10"
						checked="${CoreObject.lang_Guja == '03' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-10">03.
						Gujarathi </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Hind" tabindex="44"
						value="04" id="customCheck1-11"
						checked="${CoreObject.lang_Hind == '04' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-11">04.
						Hindi </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Kann" tabindex="45"
						value="05" id="customCheck1-12"
						checked="${CoreObject.lang_Kann == '05' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-12">05.
						Kannada </label>
				</div>
			</div>

		</div>
	</div>








	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Malay" tabindex="46"
						value="06" id="customCheck1-13"
						checked="${CoreObject.lang_Malay == '06' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-13">06.
						Malayalam </label>
				</div>
			</div>

			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Marati" tabindex="47"
						value="07" id="customCheck1-14"
						checked="${CoreObject.lang_Marati == '07' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-14">07.
						Marathi </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Oriya" tabindex="48"
						value="08" id="customCheck1-15"
						checked="${CoreObject.lang_Oriya == '08' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-15">08.
						Oriya </label>
				</div>
			</div>


			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Punja" tabindex="49"
						value="09" id="customCheck1-16"
						checked="${CoreObject.lang_Punja == '09' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-16">09.
						Punjabi </label>
				</div>
			</div>

			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Sans" tabindex="50"
						value="10" id="customCheck1-17"
						checked="${CoreObject.lang_Sans == '10' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-17">10.
						Sanskrit </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Sindi" tabindex="51"
						value="11" id="customCheck1-18"
						checked="${CoreObject.lang_Sindi == '11' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-18">11.
						Sindi </label>
				</div>
			</div>

			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Tam" tabindex="52"
						value="12" id="customCheck1-19" 
						checked="${CoreObject.lang_Tam == '12' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-19">12.
						Tamil </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Telu" tabindex="53"
						value="13" id="customCheck1-20"
						checked="${CoreObject.lang_Telu == '13' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-20">13.
						Telugu </label>
				</div>
			</div>


			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Urdu" tabindex="54"
						value="14" id="customCheck1-21"
						checked="${CoreObject.lang_Urdu == '14' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-21">14.
						Urdu </label>
				</div>
			</div>

			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Eng" tabindex="55"
						value="15" id="customCheck1-22"
						checked="${CoreObject.lang_Eng == '15' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-22">15.
						English </label>
				</div>
			</div>

		</div>
	</div>




	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Konkan" tabindex="56"
						value="16" id="customCheck1-23"
						checked="${CoreObject.lang_Konkan == '16' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-23">16.
						konkani </label>
				</div>
			</div>

			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Bhutia" tabindex="57"
						value="17" id="customCheck1-24"
						checked="${CoreObject.lang_Bhutia == '17' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-24">17.
						Bhutia </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Manipuri" tabindex="58"
						value="18" id="customCheck1-25"
						checked="${CoreObject.lang_Manipuri == '18' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-25">18.
						Manipuri </label>
				</div>
			</div>


			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Mizo" tabindex="59"
						value="19" id="customCheck1-26"
						checked="${CoreObject.lang_Mizo == '19' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-26">19.
						Mizo </label>
				</div>
			</div>

			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Nepalli" tabindex="60"
						value="20" id="customCheck1-27"
						checked="${CoreObject.lang_Nepalli == '20' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-27">20.
						Nepali </label>
				</div>
			</div>

		</div>
	</div>





	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Lepcha" tabindex="61"
						value="21" id="customCheck1-28"
						checked="${CoreObject.lang_Lepcha == '21' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-28">21.
						Lepcha </label>
				</div>
			</div>

			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_Rajast" tabindex="62"
						value="22" id="customCheck1-29"
						checked="${CoreObject.lang_Rajast == '22' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-29">22.
						Rajasthani </label>
				</div>
			</div>
			<div class="col-md-3 ">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" value="23" path="" tabindex="63"
						id="customCheck1-30" onClick="enable()"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-30">23.
						Others<span class="italic">(specify)</span>
					</label>

				</div>
			</div>




			<div class="col-md-4">
				<form:input class="form-control valKeyC" id="lang" path="others1" tabindex="64"
					maxlength="250" disabled="true" value="${CoreObject.others1}" />
			</div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-11 ">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="lang_unk" tabindex="65"
						value="24" id="customCheck1-31"
						checked="${CoreObject.lang_unk == '24' ? 'checked' : '' }"></form:checkbox>
					<label class="custom-control-label" for="customCheck1-31">24.
						Unknown </label>
				</div>
			</div>
		</div>
	</div>
	
	


</body>
</html>