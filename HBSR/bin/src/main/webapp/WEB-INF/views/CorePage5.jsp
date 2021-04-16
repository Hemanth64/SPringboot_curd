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
	<div class="form-group">
		<div class="row">

			<div class="col-md-12 text-center alert-info ">
				<label><b><code
							style="padding-right: 10px; color: black">III</code>RISK FACTORS
						AND CO-MORBID CONDITIONS </b> </label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label"><code
				style="padding-right: 10px; color: black">24</code>Underlying
			diseases or co-morbid conditions:</label> <label
			class="col-md-1 col-form-label  weight-600">Yes</label><label
			class="col-md-1 col-form-label  weight-600">No</label> <label
			class="col-md-1 col-form-label  weight-600">Unknown</label> <label
			class="col-md-1 col-form-label  weight-600">Duration</label> <label
			class="col-md-3 col-form-label  weight-600">Newly Detected at
			admission</label>

	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous
			Stroke </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio43" value="1" tabindex="300"
					checked="${CoreObject.prevStroke == '1' ? 'checked' : '' }"
					class="custom-control-input" path="prevStroke" onClick="enable17()" />
				<label class="custom-control-label" for="customRadio43"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio44" value="2" tabindex="301"
					checked="${CoreObject.prevStroke == '2' ? 'checked' : '' }"
					class="custom-control-input" path="prevStroke" onClick="enable17()" />
				<label class="custom-control-label" for="customRadio44"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio45" value="3" tabindex="302"
					checked="${CoreObject.prevStroke == '3' ? 'checked' : '' }"
					class="custom-control-input" path="prevStroke" onClick="enable17()" />
				<label class="custom-control-label" for="customRadio45"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration1" tabindex="303"
				path="prevStrokeDura" value="${CoreObject.prevStrokeDura}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="prvNewly" tabindex="304"
					value="4" checked="${CoreObject.prvNewly == '4' ? 'checked' : '' }"
					id="customCheck1-418" />
				<label class="custom-control-label" for="customCheck1-418"></label>
			</div>

		
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous
			Transient Attack</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio47" value="1" tabindex="305"
					checked="${CoreObject.prvTransAtt == '1' ? 'checked' : '' }"
					class="custom-control-input" path="prvTransAtt"
					onClick="enable42()" />
				<label class="custom-control-label" for="customRadio47"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio48" value="2" tabindex="306"
					checked="${CoreObject.prvTransAtt == '2' ? 'checked' : '' }"
					class="custom-control-input" path="prvTransAtt"
					onClick="enable42()" />
				<label class="custom-control-label" for="customRadio48"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio49" value="3" tabindex="307"
					checked="${CoreObject.prvTransAtt == '3' ? 'checked' : '' }"
					class="custom-control-input" path="prvTransAtt"
					onClick="enable42()" />
				<label class="custom-control-label" for="customRadio49"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">



			<form:input class="form-control valKeyN" type="text" id="duration2" tabindex="308"
				path="prvTransAttDur" value="${CoreObject.prvTransAttDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="prvTrasNewly" tabindex="309"
					value="4"
					checked="${CoreObject.prvTrasNewly == '4' ? 'checked' : '' }"
					id="customCheck1-419" />
				<label class="custom-control-label" for="customCheck1-419"></label>
			</div>

		
		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hypertension</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio51" value="1" tabindex="310"
					checked="${CoreObject.hypertension == '1' ? 'checked' : '' }"
					class="custom-control-input" path="hypertension"
					onClick="enable44()" />
				<label class="custom-control-label" for="customRadio51"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio52" value="2" tabindex="311"
					checked="${CoreObject.hypertension == '2' ? 'checked' : '' }"
					class="custom-control-input" path="hypertension"
					onClick="enable44()" />
				<label class="custom-control-label" for="customRadio52"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio53" value="3" tabindex="312"
					checked="${CoreObject.hypertension == '3' ? 'checked' : '' }"
					class="custom-control-input" path="hypertension"
					onClick="enable44()" />
				<label class="custom-control-label" for="customRadio53"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration3" tabindex="313"
				path="hypertensionDur" value="${CoreObject.hypertensionDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="hyperNewly" tabindex="314"
					value="4"
					checked="${CoreObject.hyperNewly == '4' ? 'checked' : '' }"
					id="customCheck1-420" />
				<label class="custom-control-label" for="customCheck1-420"></label>
			</div>

			
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diabetes
			Mellitus</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio54" value="1" tabindex="315"
					checked="${CoreObject.diabetMelli == '1' ? 'checked' : '' }"
					class="custom-control-input" path="diabetMelli"
					onClick="enable46()" />
				<label class="custom-control-label" for="customRadio54"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio55" value="2" tabindex="316"
					checked="${CoreObject.diabetMelli == '2' ? 'checked' : '' }"
					class="custom-control-input" path="diabetMelli"
					onClick="enable46()" />
				<label class="custom-control-label" for="customRadio55"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio56" value="3" tabindex="317"
					checked="${CoreObject.diabetMelli == '3' ? 'checked' : '' }"
					class="custom-control-input" path="diabetMelli"
					onClick="enable46()" />
				<label class="custom-control-label" for="customRadio56"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration4" tabindex="318"
				path="diabetMelliDur" value="${CoreObject.diabetMelliDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="diabNewly" tabindex="319"
					value="4"
					checked="${CoreObject.diabNewly == '4' ? 'checked' : '' }"
					id="customCheck1-421" />
				<label class="custom-control-label" for="customCheck1-421"></label>
			</div>
		
		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Atrial
			Fibrillation </label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio58" value="1" tabindex="320"
					checked="${CoreObject.fibrillation == '1' ? 'checked' : '' }"
					class="custom-control-input" path="fibrillation"
					onClick="enable48()" />
				<label class="custom-control-label" for="customRadio58"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio59" value="2" tabindex="321"
					checked="${CoreObject.fibrillation == '2' ? 'checked' : '' }"
					class="custom-control-input" path="fibrillation"
					onClick="enable48()" />
				<label class="custom-control-label" for="customRadio59"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio60" value="3" tabindex="322"
					checked="${CoreObject.fibrillation == '3' ? 'checked' : '' }"
					class="custom-control-input" path="fibrillation"
					onClick="enable48()" />
				<label class="custom-control-label" for="customRadio60"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration5" tabindex="323"
				path="fibrillationDur" value="${CoreObject.fibrillationDur}"
			 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="atrialNewly" tabindex="324"
					value="4"
					checked="${CoreObject.atrialNewly == '4' ? 'checked' : '' }"
					id="customCheck1-422" />
				<label class="custom-control-label" for="customCheck1-422"></label>
			</div>

		
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Carotid
			stenosis</label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio62" value="1" tabindex="325"
					checked="${CoreObject.stenosis == '1' ? 'checked' : '' }"
					class="custom-control-input" path="stenosis" onClick="enable50()" />
				<label class="custom-control-label" for="customRadio62"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio63" value="2" tabindex="326"
					checked="${CoreObject.stenosis == '2' ? 'checked' : '' }"
					class="custom-control-input" path="stenosis" onClick="enable50()" />
				<label class="custom-control-label" for="customRadio63"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio64" value="3" tabindex="327"
					checked="${CoreObject.stenosis == '3' ? 'checked' : '' }"
					class="custom-control-input" path="stenosis" onClick="enable50()" />
				<label class="custom-control-label" for="customRadio64"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration6" tabindex="328"
				path="stenosisDur" value="${CoreObject.stenosisDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="carotidNewly" tabindex="329"
					value="4"
					checked="${CoreObject.carotidNewly == '4' ? 'checked' : '' }"
					id="customCheck1-423" />
				<label class="custom-control-label" for="customCheck1-423"></label>
			</div>
			
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Myocardial
			Infarction</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio66" value="1" tabindex="330"
					checked="${CoreObject.infarction == '1' ? 'checked' : '' }"
					class="custom-control-input" path="infarction" onClick="enable52()" />
				<label class="custom-control-label" for="customRadio66"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio67" value="2" tabindex="331"
					checked="${CoreObject.infarction == '2' ? 'checked' : '' }"
					class="custom-control-input" path="infarction" onClick="enable52()" />
				<label class="custom-control-label" for="customRadio67"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio68" value="3" tabindex="332"
					checked="${CoreObject.infarction == '3' ? 'checked' : '' }"
					class="custom-control-input" path="infarction" onClick="enable52()" />
				<label class="custom-control-label" for="customRadio68"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration7" tabindex="333"
				path="infarctionDur" value="${CoreObject.infarctionDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="myocNewly" tabindex="334"
					value="4"
					checked="${CoreObject.myocNewly == '4' ? 'checked' : '' }"
					id="customCheck1-424" />
				<label class="custom-control-label" for="customCheck1-424"></label>
			</div>
			
		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ishemic
			Heart Disease</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio70" value="1" tabindex="335"
					checked="${CoreObject.heartDisea == '1' ? 'checked' : '' }"
					class="custom-control-input" path="heartDisea" onClick="enable54()" />
				<label class="custom-control-label" for="customRadio70"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio71" value="2" tabindex="336"
					checked="${CoreObject.heartDisea == '2' ? 'checked' : '' }"
					class="custom-control-input" path="heartDisea" onClick="enable54()" />
				<label class="custom-control-label" for="customRadio71"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio72" value="3" tabindex="337"
					checked="${CoreObject.heartDisea == '3' ? 'checked' : '' }"
					class="custom-control-input" path="heartDisea" onClick="enable54()" />
				<label class="custom-control-label" for="customRadio72"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration8" tabindex="338"
				path="heartDiseaDur" value="${CoreObject.heartDiseaDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="ischNewly" tabindex="339"
					value="4"
					checked="${CoreObject.ischNewly == '4' ? 'checked' : '' }"
					id="customCheck1-425" />
				<label class="custom-control-label" for="customCheck1-425"></label>
			</div>
		
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-12 col-form-label  weight-600">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Valvular
			heart Disease</label>

	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rheumatic
			Heart Disease</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio74" value="1" tabindex="340"
					checked="${CoreObject.rheumaticHearDise == '1' ? 'checked' : '' }"
					class="custom-control-input" path="rheumaticHearDise"
					onClick="enable56()" />
				<label class="custom-control-label" for="customRadio74"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio75" value="2" tabindex="341"
					checked="${CoreObject.rheumaticHearDise == '2' ? 'checked' : '' }"
					class="custom-control-input" path="rheumaticHearDise"
					onClick="enable56()" />
				<label class="custom-control-label" for="customRadio75"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio76" value="3" tabindex="342"
					checked="${CoreObject.rheumaticHearDise == '3' ? 'checked' : '' }"
					class="custom-control-input" path="rheumaticHearDise"
					onClick="enable56()" />
				<label class="custom-control-label" for="customRadio76"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration9" tabindex="343"
				path="rheumaticHearDiseDur"
				value="${CoreObject.rheumaticHearDiseDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="rehuNewly" tabindex="344"
					value="4"
					checked="${CoreObject.rehuNewly == '4' ? 'checked' : '' }"
					id="customCheck1-426" />
				<label class="custom-control-label" for="customCheck1-426"></label>
			</div>

			
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Non
			Rheumatic Heart Disease</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio78" value="1" tabindex="345"
					checked="${CoreObject.nonRheumaHeaDise == '1' ? 'checked' : '' }"
					class="custom-control-input" path="nonRheumaHeaDise"
					onClick="enable58()" />
				<label class="custom-control-label" for="customRadio78"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio79" value="2" tabindex="346"
					checked="${CoreObject.nonRheumaHeaDise == '2' ? 'checked' : '' }"
					class="custom-control-input" path="nonRheumaHeaDise"
					onClick="enable58()" />
				<label class="custom-control-label" for="customRadio79"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio80" value="3" tabindex="347"
					checked="${CoreObject.nonRheumaHeaDise == '3' ? 'checked' : '' }"
					class="custom-control-input" path="nonRheumaHeaDise"
					onClick="enable58()" />
				<label class="custom-control-label" for="customRadio80"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration10" tabindex="348"
				path="nonRheumaHeaDiseDur" value="${CoreObject.nonRheumaHeaDiseDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="nonRehNewly" tabindex="349"
					value="4"
					checked="${CoreObject.nonRehNewly == '4' ? 'checked' : '' }"
					id="customCheck1-427" />
				<label class="custom-control-label" for="customCheck1-427"></label>
			</div>

			
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Valve
			Prosthesis</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio82" value="1" tabindex="350"
					checked="${CoreObject.prosthesis == '1' ? 'checked' : '' }"
					class="custom-control-input" path="prosthesis" onClick="enable60()" />
				<label class="custom-control-label" for="customRadio82"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio83" value="2" tabindex="351"
					checked="${CoreObject.prosthesis == '2' ? 'checked' : '' }"
					class="custom-control-input" path="prosthesis" onClick="enable60()" />
				<label class="custom-control-label" for="customRadio83"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio84" value="3" tabindex="352"
					checked="${CoreObject.prosthesis == '3' ? 'checked' : '' }"
					class="custom-control-input" path="prosthesis" onClick="enable60()" />
				<label class="custom-control-label" for="customRadio84"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration11" tabindex="353"
				path="prosthesisDur" value="${CoreObject.prosthesisDur}"
			 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="valveNewly" tabindex="354"
					value="4"
					checked="${CoreObject.valveNewly == '4' ? 'checked' : '' }"
					id="customCheck1-428" />
				<label class="custom-control-label" for="customCheck1-428"></label>
			</div>

		
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Heart
			Failure </label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio86" value="1" tabindex="355"
					checked="${CoreObject.heartFailure == '1' ? 'checked' : '' }"
					class="custom-control-input" path="heartFailure"
					onClick="enable62()" />
				<label class="custom-control-label" for="customRadio86"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio87" value="2" tabindex="356"
					checked="${CoreObject.heartFailure == '2' ? 'checked' : '' }"
					class="custom-control-input" path="heartFailure"
					onClick="enable62()" />
				<label class="custom-control-label" for="customRadio87"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio88" value="3" tabindex="357"
					checked="${CoreObject.heartFailure == '3' ? 'checked' : '' }"
					class="custom-control-input" path="heartFailure"
					onClick="enable62()" />
				<label class="custom-control-label" for="customRadio88"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration12" tabindex="358"
				path="heartFailureDur" value="${CoreObject.heartFailureDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="heartNewly" tabindex="359"
					value="4"
					checked="${CoreObject.heartNewly == '4' ? 'checked' : '' }"
					id="customCheck1-429" />
				<label class="custom-control-label" for="customCheck1-429"></label>
			</div>

		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Peripheral
			Arterial Disease</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio90" value="1" tabindex="360"
					checked="${CoreObject.arterialDisea == '1' ? 'checked' : '' }"
					class="custom-control-input" path="arterialDisea"
					onClick="enable64()" />
				<label class="custom-control-label" for="customRadio90"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio91" value="2" tabindex="361"
					checked="${CoreObject.arterialDisea == '2' ? 'checked' : '' }"
					class="custom-control-input" path="arterialDisea"
					onClick="enable64()" />
				<label class="custom-control-label" for="customRadio91"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio92" value="3" tabindex="362"
					checked="${CoreObject.arterialDisea == '3' ? 'checked' : '' }"
					class="custom-control-input" path="arterialDisea"
					onClick="enable64()" />
				<label class="custom-control-label" for="customRadio92"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration13" tabindex="363"
				path="arterialDiseaDur" value="${CoreObject.arterialDiseaDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="pripNewly" tabindex="364"
					value="4"
					checked="${CoreObject.pripNewly == '4' ? 'checked' : '' }"
					id="customCheck1-430" />
				<label class="custom-control-label" for="customCheck1-430"></label>
			</div>

			
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chronic
			Kidney Disease </label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio94" value="1" tabindex="365"
					checked="${CoreObject.kidneyDise == '1' ? 'checked' : '' }"
					class="custom-control-input" path="kidneyDise" onClick="enable66()" />
				<label class="custom-control-label" for="customRadio94"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio95" value="2" tabindex="366"
					checked="${CoreObject.kidneyDise == '2' ? 'checked' : '' }"
					class="custom-control-input" path="kidneyDise" onClick="enable66()" />
				<label class="custom-control-label" for="customRadio95"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio96" value="3" tabindex="367"
					checked="${CoreObject.kidneyDise == '3' ? 'checked' : '' }"
					class="custom-control-input" path="kidneyDise" onClick="enable66()" />
				<label class="custom-control-label" for="customRadio96"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration14" tabindex="368"
				path="kidneyDiseDur" value="${CoreObject.kidneyDiseDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="chronicNewly" tabindex="369"
					value="4"
					checked="${CoreObject.chronicNewly == '4' ? 'checked' : '' }"
					id="customCheck1-431" />
				<label class="custom-control-label" for="customCheck1-431"></label>
			</div>

			
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anemia</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio98" value="1" tabindex="370"
					checked="${CoreObject.anemia == '1' ? 'checked' : '' }"
					class="custom-control-input" path="anemia" onClick="enable68()" />
				<label class="custom-control-label" for="customRadio98"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio99" value="2" tabindex="371"
					checked="${CoreObject.anemia == '2' ? 'checked' : '' }"
					class="custom-control-input" path="anemia" onClick="enable68()" />
				<label class="custom-control-label" for="customRadio99"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio100" value="3" tabindex="372"
					checked="${CoreObject.anemia == '3' ? 'checked' : '' }"
					class="custom-control-input" path="anemia" onClick="enable68()" />
				<label class="custom-control-label" for="customRadio100"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration15" tabindex="373"
				path="anemiaDur" value="${CoreObject.anemiaDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="anemiaNewly" tabindex="374"
					value="4"
					checked="${CoreObject.anemiaNewly == '4' ? 'checked' : '' }"
					id="customCheck1-432" />
				<label class="custom-control-label" for="customCheck1-432"></label>
			</div>
			
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hypercholesterolemia</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio102" value="1" tabindex="375"
					checked="${CoreObject.hypercholesterolemia == '1' ? 'checked' : '' }"
					class="custom-control-input" path="hypercholesterolemia"
					onClick="enable70()" />
				<label class="custom-control-label" for="customRadio102"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio103" value="2" tabindex="376"
					checked="${CoreObject.hypercholesterolemia == '2' ? 'checked' : '' }"
					class="custom-control-input" path="hypercholesterolemia"
					onClick="enable70()" />
				<label class="custom-control-label" for="customRadio103"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio104" value="3" tabindex="377"
					checked="${CoreObject.hypercholesterolemia == '3' ? 'checked' : '' }"
					class="custom-control-input" path="hypercholesterolemia"
					onClick="enable70()" />
				<label class="custom-control-label" for="customRadio104"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration16" tabindex="378"
				path="hypercholesterolemiaDur"
				value="${CoreObject.hypercholesterolemiaDur}"
				 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="hypercNewly" tabindex="379"
					value="4"
					checked="${CoreObject.hypercNewly == '4' ? 'checked' : '' }"
					id="customCheck1-433" />
				<label class="custom-control-label" for="customCheck1-433"></label>
			</div>
			
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hyper
			homocysteinemia</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio106" value="1" tabindex="380"
					checked="${CoreObject.hyperHomocysteinemia == '1' ? 'checked' : '' }"
					class="custom-control-input" path="hyperHomocysteinemia"
					onClick="enable72()" />
				<label class="custom-control-label" for="customRadio106"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio107" value="2" tabindex="381"
					checked="${CoreObject.hyperHomocysteinemia == '2' ? 'checked' : '' }"
					class="custom-control-input" path="hyperHomocysteinemia"
					onClick="enable72()" />
				<label class="custom-control-label" for="customRadio107"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio108" value="3" tabindex="382"
					checked="${CoreObject.hyperHomocysteinemia == '3' ? 'checked' : '' }"
					class="custom-control-input" path="hyperHomocysteinemia"
					onClick="enable72()" />
				<label class="custom-control-label" for="customRadio108"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration17" tabindex="383"
				path="hyperHomocysteinemiaDur"
				value="${CoreObject.hyperHomocysteinemiaDur}"
			 maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="hyperhoNewly" tabindex="384"
					value="4"
					checked="${CoreObject.hyperhoNewly == '4' ? 'checked' : '' }"
					id="customCheck1-434" />
				<label class="custom-control-label" for="customCheck1-434"></label>
			</div>

			
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-2 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others
		</label>
		<div class="col-md-3">
			<form:input class="form-control" type="text" id="name2" tabindex="385"
				path="co_morbidOthers1" onkeypress="return isNotNumberKey(event)"
				maxlength="250" value="${CoreObject.co_morbidOthers1}" />
		</div>


		<div class="col-md-3">
			<form:input class="form-control" type="text" id="name2" tabindex="386"
				path="co_morbidOthers2" onkeypress="return isNotNumberKey(event)"
				maxlength="250" value="${CoreObject.co_morbidOthers2}" />
		</div>


		<div class="col-md-3">
			<form:input class="form-control" type="text" id="name2" tabindex="387"
				path="co_morbidOthers3" onkeypress="return isNotNumberKey(event)"
				maxlength="250" value="${CoreObject.co_morbidOthers3}" />
		</div>
		<div class="col-md-1"></div>

	</div>


	<div class="form-group row">

		<label class="col-md-8	 col-form-label"><code
				style="padding-right: 10px; color: black">25</code>Other
			risks/conditions <span class="italic"><font size="2">(current
					or history of):</font></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
			class="col-md-1 col-form-label  weight-600"> Yes</label> <label
			class="col-md-1 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600"> Unknown </label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Family
					History of Stroke </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio110" value="1" tabindex="388"
						checked="${CoreObject.familyHisOfStrok == '1' ? 'checked' : '' }"
						class="custom-control-input" path="familyHisOfStrok" />
					<label class="custom-control-label" for="customRadio110"> </label>

				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio111" value="2" tabindex="389"
						checked="${CoreObject.familyHisOfStrok == '2' ? 'checked' : '' }"
						class="custom-control-input" path="familyHisOfStrok" />
					<label class="custom-control-label" for="customRadio111"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio112" value="3" tabindex="390"
						checked="${CoreObject.familyHisOfStrok == '3' ? 'checked' : '' }"
						class="custom-control-input" path="familyHisOfStrok" />
					<label class="custom-control-label" for="customRadio112"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tobacco
					Smoking </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio113" value="1" tabindex="391"
						checked="${CoreObject.tobaccoSmok == '1' ? 'checked' : '' }"
						class="custom-control-input" path="tobaccoSmok" />
					<label class="custom-control-label" for="customRadio113"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio114" value="2" tabindex="392"
						checked="${CoreObject.tobaccoSmok == '2' ? 'checked' : '' }"
						class="custom-control-input" path="tobaccoSmok" />
					<label class="custom-control-label" for="customRadio114"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio115" value="3" tabindex="393"
						checked="${CoreObject.tobaccoSmok == '3' ? 'checked' : '' }"
						class="custom-control-input" path="tobaccoSmok" />
					<label class="custom-control-label" for="customRadio115"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Smokeless
					Tobacco use </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio116" value="1" tabindex="394"
						checked="${CoreObject.smkolessTobacco == '1' ? 'checked' : '' }"
						class="custom-control-input" path="smkolessTobacco" />
					<label class="custom-control-label" for="customRadio116"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio117" value="2" tabindex="395"
						checked="${CoreObject.smkolessTobacco == '2' ? 'checked' : '' }"
						class="custom-control-input" path="smkolessTobacco" />
					<label class="custom-control-label" for="customRadio117"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio118" value="3" tabindex="396"
						checked="${CoreObject.smkolessTobacco == '3' ? 'checked' : '' }"
						class="custom-control-input" path="smkolessTobacco" />
					<label class="custom-control-label" for="customRadio118"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alcohol
					use </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio119" value="1" tabindex="397"
						checked="${CoreObject.alcoholUse == '1' ? 'checked' : '' }"
						class="custom-control-input" path="alcoholUse" />
					<label class="custom-control-label" for="customRadio119"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio120" value="2" tabindex="398"
						checked="${CoreObject.alcoholUse == '2' ? 'checked' : '' }"
						class="custom-control-input" path="alcoholUse" />
					<label class="custom-control-label" for="customRadio120"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio121" value="3" tabindex="399"
						checked="${CoreObject.alcoholUse == '3' ? 'checked' : '' }"
						class="custom-control-input" path="alcoholUse" />
					<label class="custom-control-label" for="customRadio121"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Drug Abuse
					or Addiction </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio122" value="1" tabindex="400"
						checked="${CoreObject.drugAbuse == '1' ? 'checked' : '' }"
						class="custom-control-input" path="drugAbuse" />
					<label class="custom-control-label" for="customRadio122"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio123" value="2" tabindex="401"
						checked="${CoreObject.drugAbuse == '2' ? 'checked' : '' }"
						class="custom-control-input" path="drugAbuse" />
					<label class="custom-control-label" for="customRadio123"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio124" value="3"  tabindex="402"
						checked="${CoreObject.drugAbuse == '3' ? 'checked' : '' }"
						class="custom-control-input" path="drugAbuse" />
					<label class="custom-control-label" for="customRadio124"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pregnancy
					or within 6 weeks after a delivery or termination of pregnancy </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio125" value="1"  tabindex="403"
						checked="${CoreObject.deliveryORtermination == '1' ? 'checked' : '' }"
						class="custom-control-input" path="deliveryORtermination" />
					<label class="custom-control-label" for="customRadio125"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio126" value="2"  tabindex="404 "
						checked="${CoreObject.deliveryORtermination == '2' ? 'checked' : '' }"
						class="custom-control-input" path="deliveryORtermination" />
					<label class="custom-control-label" for="customRadio126"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio127" value="3"  tabindex="405"
						checked="${CoreObject.deliveryORtermination == '3' ? 'checked' : '' }"
						class="custom-control-input" path="deliveryORtermination" />
					<label class="custom-control-label" for="customRadio127"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Migraine </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio128" value="1"  tabindex="406"
						checked="${CoreObject.migraine == '1' ? 'checked' : '' }"
						class="custom-control-input" path="migraine" />
					<label class="custom-control-label" for="customRadio128"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio129" value="2"  tabindex="407"
						checked="${CoreObject.migraine == '2' ? 'checked' : '' }"
						class="custom-control-input" path="migraine" />
					<label class="custom-control-label" for="customRadio129"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio130" value="3"  tabindex="408"
						checked="${CoreObject.migraine == '3' ? 'checked' : '' }"
						class="custom-control-input" path="migraine" />
					<label class="custom-control-label" for="customRadio130"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sickle
					Cell disease </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio131" value="1"  tabindex="409"
						checked="${CoreObject.sickleCellDisease == '1' ? 'checked' : '' }"
						class="custom-control-input" path="sickleCellDisease" />
					<label class="custom-control-label" for="customRadio131"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio132" value="2"  tabindex="410"
						checked="${CoreObject.sickleCellDisease == '2' ? 'checked' : '' }"
						class="custom-control-input" path="sickleCellDisease" />
					<label class="custom-control-label" for="customRadio132"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio133" value="3"  tabindex="411"
						checked="${CoreObject.sickleCellDisease == '3' ? 'checked' : '' }"
						class="custom-control-input" path="sickleCellDisease" />
					<label class="custom-control-label" for="customRadio133"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CNS TB </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio134" value="1"  tabindex="412"
						checked="${CoreObject.cnsTB == '1' ? 'checked' : '' }"
						class="custom-control-input" path="cnsTB" />
					<label class="custom-control-label" for="customRadio134"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio135" value="2"  tabindex="413"
						checked="${CoreObject.cnsTB == '2' ? 'checked' : '' }"
						class="custom-control-input" path="cnsTB" />
					<label class="custom-control-label" for="customRadio135"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio136" value="3"  tabindex="414"
						checked="${CoreObject.cnsTB == '3' ? 'checked' : '' }"
						class="custom-control-input" path="cnsTB" />
					<label class="custom-control-label" for="customRadio136"> </label>

				</div>
			</div>

		</div>
	</div>


	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">
			&nbsp;&nbsp; Height <span class="italic"><font size="2">(cm)</font></span>
		</label>
		<div class="col-md-4">
			<form:input class="form-control valKeyN" type="text" id="name2" path="height"  tabindex="415"
				maxlength="4" value="${CoreObject.height}" />
		</div>
		<div class="col-md-6"></div>


	</div>

	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">&nbsp;&nbsp;
			Weight <span class="italic"><font size="2">(kgs)</font></span>
		</label>
		<div class="col-md-4">
			<form:input class="form-control valKeyN" type="text" id="name2" path="weight"  tabindex="416"
				maxlength="4" value="${CoreObject.weight}" />
		</div>
		<div class="col-md-6"></div>


	</div>

	<div class="form-group">
		<div class="row">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="col-md-2">
				<label>&nbsp;&nbsp;&nbsp;BMI </label>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio409" value="1"  tabindex="417"
						checked="${CoreObject.bmi == '1' ? 'checked' : '' }"
						class="custom-control-input" path="bmi" />
					<label class="custom-control-label" for="customRadio409">
						Underweight </label>

				</div>

			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio410" value="2"  tabindex="418"
						class="custom-control-input" path="bmi" />
					<label checked="${CoreObject.bmi == '2' ? 'checked' : '' }"
						class="custom-control-label" for="customRadio410"> Normal
					</label>

				</div>


			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio411" value="3"  tabindex="419"
						checked="${CoreObject.bmi == '3' ? 'checked' : '' }"
						class="custom-control-input" path="bmi" />
					<label class="custom-control-label" for="customRadio411">
						Overweight </label>

				</div>


			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio412" value="4"  tabindex="420"
						checked="${CoreObject.bmi == '4' ? 'checked' : '' }"
						class="custom-control-input" path="bmi" />
					<label class="custom-control-label" for="customRadio412">
						Obese </label>

				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">&nbsp;&nbsp;
			Others <span class="italic"><font size="2">(specify)</font></span>
		</label>
		<div class="col-md-6">
			<form:input class="form-control" type="text" id="name2"  tabindex="421"
				path="riskCondOthers" maxlength="250"
				value="${CoreObject.riskCondOthers}" />
		</div>
		<div class="col-md-4"></div>


	</div>

</body>
</html>