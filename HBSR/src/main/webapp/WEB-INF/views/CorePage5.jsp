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
	<div class="form-group cusDiv row">

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
	<div class="form-group cusDiv row">
		<label class="col-md-5 col-form-label"><code
				style="padding-right: 10px; color: black"></code></label> <label
			class="col-md-1 col-form-label  weight-600"></label><label
			class="col-md-1 col-form-label  weight-600"></label>
			 <label	class="col-md-3 col-form-label  weight-600 text-center">(completed in months)</label> <label
			class="col-md-2 col-form-label  weight-600">
			</label>

	</div>
	

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous
			Stroke </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio43" value="1" tabindex="346"
					checked="${CoreObject.prevStroke == '1' ? 'checked' : '' }"
					class="custom-control-input btn_prevStroke" path="prevStroke" onClick="enable17()" />
				<label class="custom-control-label" for="customRadio43"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio44" value="2" tabindex="347"
					checked="${CoreObject.prevStroke == '2' ? 'checked' : '' }"
					class="custom-control-input btn_prevStroke" path="prevStroke" onClick="enable17()" />
				<label class="custom-control-label" for="customRadio44"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio45" value="3" tabindex="348"
					checked="${CoreObject.prevStroke == '3' ? 'checked' : '' }"
					class="custom-control-input btn_prevStroke" path="prevStroke" onClick="enable17()" />
				<label class="custom-control-label" for="customRadio45"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration1"
				tabindex="349" path="prevStrokeDura"
				value="${CoreObject.prevStrokeDura}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="prvNewly"
					tabindex="350" value="4"
					checked="${CoreObject.prvNewly == '4' ? 'checked' : '' }"
					id="customCheck1-418" />
				<label class="custom-control-label" for="customCheck1-418"></label>
			</div>


		</div>
	</div>
	
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="prvStr hide" type="text" id="prvStr" name="prvStr"/>


			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous Transient Ischemic Attack <br>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="italic"><font size="2.5">(anytime in the past)</font></span> 
		</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio47" value="1" tabindex="351"
					checked="${CoreObject.prvTransAtt == '1' ? 'checked' : '' }"
					class="custom-control-input btn_prvTransAtt" path="prvTransAtt"
					onClick="enable42()" />
				<label class="custom-control-label" for="customRadio47"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio48" value="2" tabindex="352"
					checked="${CoreObject.prvTransAtt == '2' ? 'checked' : '' }"
					class="custom-control-input btn_prvTransAtt" path="prvTransAtt"
					onClick="enable42()" />
				<label class="custom-control-label" for="customRadio48"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio49" value="3" tabindex="353"
					checked="${CoreObject.prvTransAtt == '3' ? 'checked' : '' }"
					class="custom-control-input btn_prvTransAtt" path="prvTransAtt"
					onClick="enable42()" />
				<label class="custom-control-label" for="customRadio49"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">



			<form:input class="form-control valKeyN" type="text" id="duration2"
				tabindex="354" path="prvTransAttDur"
				value="${CoreObject.prvTransAttDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="prvTrasNewly"
					tabindex="355" value="4"
					checked="${CoreObject.prvTrasNewly == '4' ? 'checked' : '' }"
					id="customCheck1-419" />
				<label class="custom-control-label" for="customCheck1-419"></label>
			</div>


		</div>
	</div>
<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="prvTrIs hide" type="text" id="prvTrIs" name="prvTrIs"/>


			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hypertension</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio51" value="1" tabindex="356"
					checked="${CoreObject.hypertension == '1' ? 'checked' : '' }"
					class="custom-control-input btn_hypertension" path="hypertension"
					onClick="enable44()" />
				<label class="custom-control-label" for="customRadio51"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio52" value="2" tabindex="357"
					checked="${CoreObject.hypertension == '2' ? 'checked' : '' }"
					class="custom-control-input btn_hypertension" path="hypertension"
					onClick="enable44()" />
				<label class="custom-control-label" for="customRadio52"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio53" value="3" tabindex="358"
					checked="${CoreObject.hypertension == '3' ? 'checked' : '' }"
					class="custom-control-input btn_hypertension" path="hypertension"
					onClick="enable44()" />
				<label class="custom-control-label" for="customRadio53"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration3"
				tabindex="359" path="hypertensionDur"
				value="${CoreObject.hypertensionDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="hyperNewly"
					tabindex="360" value="4"
					checked="${CoreObject.hyperNewly == '4' ? 'checked' : '' }"
					id="customCheck1-420" />
				<label class="custom-control-label" for="customCheck1-420"></label>
			</div>


		</div>
	</div>

<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="hyper hide" type="text" id="hyper" name="hyper"/>


			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diabetes
			Mellitus</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio54" value="1" tabindex="361"
					checked="${CoreObject.diabetMelli == '1' ? 'checked' : '' }"
					class="custom-control-input btn_diabetMelli" path="diabetMelli"
					onClick="enable46()" />
				<label class="custom-control-label" for="customRadio54"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio55" value="2" tabindex="362"
					checked="${CoreObject.diabetMelli == '2' ? 'checked' : '' }"
					class="custom-control-input btn_diabetMelli" path="diabetMelli"
					onClick="enable46()" />
				<label class="custom-control-label" for="customRadio55"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio56" value="3" tabindex="363"
					checked="${CoreObject.diabetMelli == '3' ? 'checked' : '' }"
					class="custom-control-input btn_diabetMelli" path="diabetMelli"
					onClick="enable46()" />
				<label class="custom-control-label" for="customRadio56"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration4"
				tabindex="364" path="diabetMelliDur"
				value="${CoreObject.diabetMelliDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="diabNewly"
					tabindex="365" value="4"
					checked="${CoreObject.diabNewly == '4' ? 'checked' : '' }"
					id="customCheck1-421" />
				<label class="custom-control-label" for="customCheck1-421"></label>
			</div>

		</div>
	</div>

<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="diabMill hide" type="text" id="diabMill" name="diabMill"/>


			</div>
		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Atrial
			Fibrillation </label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio58" value="1" tabindex="366"
					checked="${CoreObject.fibrillation == '1' ? 'checked' : '' }"
					class="custom-control-input btn_fibrillation" path="fibrillation"
					onClick="enable48()" />
				<label class="custom-control-label" for="customRadio58"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio59" value="2" tabindex="367"
					checked="${CoreObject.fibrillation == '2' ? 'checked' : '' }"
					class="custom-control-input btn_fibrillation" path="fibrillation"
					onClick="enable48()" />
				<label class="custom-control-label" for="customRadio59"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio60" value="3" tabindex="368"
					checked="${CoreObject.fibrillation == '3' ? 'checked' : '' }"
					class="custom-control-input btn_fibrillation" path="fibrillation"
					onClick="enable48()" />
				<label class="custom-control-label" for="customRadio60"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration5"
				tabindex="369" path="fibrillationDur"
				value="${CoreObject.fibrillationDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="atrialNewly"
					tabindex="370" value="4"
					checked="${CoreObject.atrialNewly == '4' ? 'checked' : '' }"
					id="customCheck1-422" />
				<label class="custom-control-label" for="customCheck1-422"></label>
			</div>


		</div>
	</div>

<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="atrFibril hide" type="text" id="atrFibril" name="atrFibril"/>


			</div>
		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Carotid
			stenosis</label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio62" value="1" tabindex="371"
					checked="${CoreObject.stenosis == '1' ? 'checked' : '' }"
					class="custom-control-input btn_stenosis" path="stenosis" onClick="enable50()" />
				<label class="custom-control-label" for="customRadio62"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio63" value="2" tabindex="372"
					checked="${CoreObject.stenosis == '2' ? 'checked' : '' }"
					class="custom-control-input btn_stenosis" path="stenosis" onClick="enable50()" />
				<label class="custom-control-label" for="customRadio63"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio64" value="3" tabindex="373"
					checked="${CoreObject.stenosis == '3' ? 'checked' : '' }"
					class="custom-control-input btn_stenosis" path="stenosis" onClick="enable50()" />
				<label class="custom-control-label" for="customRadio64"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration6"
				tabindex="374" path="stenosisDur" value="${CoreObject.stenosisDur}"
				maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="carotidNewly"
					tabindex="375" value="4"
					checked="${CoreObject.carotidNewly == '4' ? 'checked' : '' }"
					id="customCheck1-423" />
				<label class="custom-control-label" for="customCheck1-423"></label>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="carSten hide" type="text" id="carSten" name="carSten"/>


			</div>
		</div>
	</div>
	
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Myocardial
			Infarction</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio66" value="1" tabindex="376"
					checked="${CoreObject.infarction == '1' ? 'checked' : '' }"
					class="custom-control-input btn_infarction" path="infarction" onClick="enable52()" />
				<label class="custom-control-label" for="customRadio66"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio67" value="2" tabindex="377"
					checked="${CoreObject.infarction == '2' ? 'checked' : '' }"
					class="custom-control-input btn_infarction" path="infarction" onClick="enable52()" />
				<label class="custom-control-label" for="customRadio67"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio68" value="3" tabindex="378"
					checked="${CoreObject.infarction == '3' ? 'checked' : '' }"
					class="custom-control-input btn_infarction" path="infarction" onClick="enable52()" />
				<label class="custom-control-label" for="customRadio68"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration7"
				tabindex="379" path="infarctionDur"
				value="${CoreObject.infarctionDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="myocNewly"
					tabindex="380" value="4"
					checked="${CoreObject.myocNewly == '4' ? 'checked' : '' }"
					id="customCheck1-424" />
				<label class="custom-control-label" for="customCheck1-424"></label>
			</div>

		</div>
	</div>
<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="mycrInf hide" type="text" id="mycrInf" name="mycrInf"/>


			</div>
		</div>
	</div>
	

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ishemic
			Heart Disease<span class="italic"><font size="2.5">(other
					than Atherosclerotic MI)</font></span>
		</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio70" value="1" tabindex="381"
					checked="${CoreObject.heartDisea == '1' ? 'checked' : '' }"
					class="custom-control-input btn_heartDisea" path="heartDisea" onClick="enable54()" />
				<label class="custom-control-label" for="customRadio70"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio71" value="2" tabindex="382"
					checked="${CoreObject.heartDisea == '2' ? 'checked' : '' }"
					class="custom-control-input btn_heartDisea" path="heartDisea" onClick="enable54()" />
				<label class="custom-control-label" for="customRadio71"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio72" value="3" tabindex="383"
					checked="${CoreObject.heartDisea == '3' ? 'checked' : '' }"
					class="custom-control-input btn_heartDisea" path="heartDisea" onClick="enable54()" />
				<label class="custom-control-label" for="customRadio72"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration8"
				tabindex="384" path="heartDiseaDur"
				value="${CoreObject.heartDiseaDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="ischNewly"
					tabindex="385" value="4"
					checked="${CoreObject.ischNewly == '4' ? 'checked' : '' }"
					id="customCheck1-425" />
				<label class="custom-control-label" for="customCheck1-425"></label>
			</div>

		</div>
	</div>
	
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="inscHeart hide" type="text" id="inscHeart" name="inscHeart"/>


			</div>
		</div>
	</div>
	
	
	<div class="form-group row">

		<label class="col-md-12 col-form-label  weight-600">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Valvular
			heart Disease</label>

	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.Rheumatic
			Heart Disease</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio74" value="1" tabindex="386"
					checked="${CoreObject.rheumaticHearDise == '1' ? 'checked' : '' }"
					class="custom-control-input btn_rheumaticHearDise" path="rheumaticHearDise"
					onClick="enable56()" />
				<label class="custom-control-label" for="customRadio74"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio75" value="2" tabindex="387"
					checked="${CoreObject.rheumaticHearDise == '2' ? 'checked' : '' }"
					class="custom-control-input btn_rheumaticHearDise" path="rheumaticHearDise"
					onClick="enable56()" />
				<label class="custom-control-label" for="customRadio75"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio76" value="3" tabindex="388"
					checked="${CoreObject.rheumaticHearDise == '3' ? 'checked' : '' }"
					class="custom-control-input btn_rheumaticHearDise" path="rheumaticHearDise"
					onClick="enable56()" />
				<label class="custom-control-label" for="customRadio76"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<form:input class="form-control valKeyN" type="text" id="duration9"
				tabindex="389" path="rheumaticHearDiseDur"
				value="${CoreObject.rheumaticHearDiseDur}" maxlength="3"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="rehuNewly"
					tabindex="390" value="4"
					checked="${CoreObject.rehuNewly == '4' ? 'checked' : '' }"
					id="customCheck1-426" />
				<label class="custom-control-label" for="customCheck1-426"></label>
			</div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="rehHeart hide" type="text" id="rehHeart" name="rehHeart"/>


			</div>
		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.Non
			Rheumatic Heart Disease</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio78" value="1" tabindex="391"
					checked="${CoreObject.nonRheumaHeaDise == '1' ? 'checked' : '' }"
					class="custom-control-input btn_nonRheumaHeaDise" path="nonRheumaHeaDise"
					onClick="enable58()" />
				<label class="custom-control-label" for="customRadio78"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio79" value="2" tabindex="392"
					checked="${CoreObject.nonRheumaHeaDise == '2' ? 'checked' : '' }"
					class="custom-control-input btn_nonRheumaHeaDise" path="nonRheumaHeaDise"
					onClick="enable58()" />
				<label class="custom-control-label" for="customRadio79"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio80" value="3" tabindex="393"
					checked="${CoreObject.nonRheumaHeaDise == '3' ? 'checked' : '' }"
					class="custom-control-input btn_nonRheumaHeaDise" path="nonRheumaHeaDise"
					onClick="enable58()" />
				<label class="custom-control-label" for="customRadio80"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration10"
				tabindex="394" path="nonRheumaHeaDiseDur"
				value="${CoreObject.nonRheumaHeaDiseDur}" maxlength="3"
				disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="nonRehNewly"
					tabindex="395" value="4"
					checked="${CoreObject.nonRehNewly == '4' ? 'checked' : '' }"
					id="customCheck1-427" />
				<label class="custom-control-label" for="customCheck1-427"></label>
			</div>


		</div>
	</div>
	
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="nonrehHeart hide" type="text" id="nonrehHeart" name="nonrehHeart"/>


			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Valve
			Prosthesis</label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio82" value="1" tabindex="396"
					checked="${CoreObject.prosthesis == '1' ? 'checked' : '' }"
					class="custom-control-input btn_prosthesis" path="prosthesis" onClick="enable60()" />
				<label class="custom-control-label" for="customRadio82"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio83" value="2" tabindex="397"
					checked="${CoreObject.prosthesis == '2' ? 'checked' : '' }"
					class="custom-control-input btn_prosthesis" path="prosthesis" onClick="enable60()" />
				<label class="custom-control-label" for="customRadio83"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio84" value="3" tabindex="398"
					checked="${CoreObject.prosthesis == '3' ? 'checked' : '' }"
					class="custom-control-input btn_prosthesis" path="prosthesis" onClick="enable60()" />
				<label class="custom-control-label" for="customRadio84"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration11"
				tabindex="399" path="prosthesisDur"
				value="${CoreObject.prosthesisDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="valveNewly"
					tabindex="400" value="4"
					checked="${CoreObject.valveNewly == '4' ? 'checked' : '' }"
					id="customCheck1-428" />
				<label class="custom-control-label" for="customCheck1-428"></label>
			</div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="valvPro hide" type="text" id="valvPro" name="valvPro"/>
			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Heart
			Failure </label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio86" value="1" tabindex="401"
					checked="${CoreObject.heartFailure == '1' ? 'checked' : '' }"
					class="custom-control-input btn_heartFailure" path="heartFailure"
					onClick="enable62()" />
				<label class="custom-control-label" for="customRadio86"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio87" value="2" tabindex="402"
					checked="${CoreObject.heartFailure == '2' ? 'checked' : '' }"
					class="custom-control-input btn_heartFailure" path="heartFailure"
					onClick="enable62()" />
				<label class="custom-control-label" for="customRadio87"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio88" value="3" tabindex="403"
					checked="${CoreObject.heartFailure == '3' ? 'checked' : '' }"
					class="custom-control-input btn_heartFailure" path="heartFailure"
					onClick="enable62()" />
				<label class="custom-control-label" for="customRadio88"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration12"
				tabindex="404" path="heartFailureDur"
				value="${CoreObject.heartFailureDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="heartNewly"
					tabindex="405" value="4"
					checked="${CoreObject.heartNewly == '4' ? 'checked' : '' }"
					id="customCheck1-429" />
				<label class="custom-control-label" for="customCheck1-429"></label>
			</div>

		</div>
	</div>
	
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="heartFail hide" type="text" id="heartFail" name="heartFail"/>

			</div>
		</div>
	</div>

	<div class="form-group">
	
		<div class="row">
	
			<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Peripheral
				Arterial Disease</label>
				
			<div class="col-md-1">
	
	
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio90" value="1" tabindex="406"
						checked="${CoreObject.arterialDisea == '1' ? 'checked' : '' }"
						class="custom-control-input btn_arterialDisea" path="arterialDisea"
						onClick="enable64()" />
					<label class="custom-control-label" for="customRadio90"> <font>
					</font>
					</label>
	
				</div>
			</div>
	
			<div class="col-md-1">
	
	
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio91" value="2" tabindex="407"
						checked="${CoreObject.arterialDisea == '2' ? 'checked' : '' }"
						class="custom-control-input btn_arterialDisea" path="arterialDisea"
						onClick="enable64()" />
					<label class="custom-control-label" for="customRadio91"> <font>
					</font>
					</label>
	
				</div>
			</div>
	
			<div class="col-md-1">
	
	
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio92" value="3" tabindex="408"
						checked="${CoreObject.arterialDisea == '3' ? 'checked' : '' }"
						class="custom-control-input btn_arterialDisea" path="arterialDisea"
						onClick="enable64()" />
					<label class="custom-control-label" for="customRadio92"> <font>
					</font>
					</label>
	
				</div>
			</div>
	
			<div class="col-md-1">
	
	
				<form:input class="form-control valKeyN" type="text" id="duration13"
					tabindex="409" path="arterialDiseaDur"
					value="${CoreObject.arterialDiseaDur}" maxlength="3" disabled="true" />
			</div>
	
			<div class="col-md-3">
				<div class="custom-control text-center custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="pripNewly"
						tabindex="410" value="4"
						checked="${CoreObject.pripNewly == '4' ? 'checked' : '' }"
						id="customCheck1-430" />
					<label class="custom-control-label" for="customCheck1-430"></label>
				</div>
	
	
			</div>
		
		</div>	
	
	</div>
	
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="arterialDiseaTxt hide" type="text" id="arterialDiseaTxt" name="arterialDiseaTxt"/>
			</div>
		</div>
		</div>

	
	<div class="form-group row">
		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chronic
			Kidney Disease </label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio94" value="1" tabindex="411"
					checked="${CoreObject.kidneyDise == '1' ? 'checked' : '' }"
					class="custom-control-input btn_kidneyDise" path="kidneyDise" onClick="enable66()" />
				<label class="custom-control-label" for="customRadio94"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio95" value="2" tabindex="412"
					checked="${CoreObject.kidneyDise == '2' ? 'checked' : '' }"
					class="custom-control-input btn_kidneyDise" path="kidneyDise" onClick="enable66()" />
				<label class="custom-control-label" for="customRadio95"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio96" value="3" tabindex="413"
					checked="${CoreObject.kidneyDise == '3' ? 'checked' : '' }"
					class="custom-control-input btn_kidneyDise" path="kidneyDise" onClick="enable66()" />
				<label class="custom-control-label" for="customRadio96"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration14"
				tabindex="414" path="kidneyDiseDur"
				value="${CoreObject.kidneyDiseDur}" maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">
			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="chronicNewly"
					tabindex="415" value="4"
					checked="${CoreObject.chronicNewly == '4' ? 'checked' : '' }"
					id="customCheck1-431" />
				<label class="custom-control-label" for="customCheck1-431"></label>
			</div>


		</div>
	</div>
	
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="kidyDis hide" type="text" id="kidyDis" name="kidyDis"/>


			</div>
		</div>
	</div>
	
	
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anemia</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio98" value="1" tabindex="416"
					checked="${CoreObject.anemia == '1' ? 'checked' : '' }"
					class="custom-control-input btn_anemia" path="anemia" onClick="enable68()" />
				<label class="custom-control-label" for="customRadio98"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio99" value="2" tabindex="417"
					checked="${CoreObject.anemia == '2' ? 'checked' : '' }"
					class="custom-control-input btn_anemia" path="anemia" onClick="enable68()" />
				<label class="custom-control-label" for="customRadio99"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio100" value="3" tabindex="418"
					checked="${CoreObject.anemia == '3' ? 'checked' : '' }"
					class="custom-control-input btn_anemia" path="anemia" onClick="enable68()" />
				<label class="custom-control-label" for="customRadio100"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration15"
				tabindex="419" path="anemiaDur" value="${CoreObject.anemiaDur}"
				maxlength="3" disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control text-center custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="anemiaNewly"
					tabindex="420" value="4"
					checked="${CoreObject.anemiaNewly == '4' ? 'checked' : '' }"
					id="customCheck1-432" />
				<label class="custom-control-label" for="customCheck1-432"></label>
			</div>

		</div>
	</div>
	
	
		<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="anem hide" type="text" id="anem" name="anem"/>


			</div>
		</div>
	</div>
	

	<div class="form-group row">
		

		<label class="col-md-2 col-form-label text-right"><font
			color="black"> Haemoglobin</font> </label>
			<div class="col-md-1 text-right">		
				<div class="custom-control custom-radio mb-3">
				 	<form:radiobutton id="hemogl_radio1"  value="1" 
						checked="${CoreObject.hemogl_radio == '1' ? 'checked' : '' }"
						class="custom-control-input" path="hemogl_radio" onClick="hemogl_radioFn()"  disabled="true"/> 	
						<label class="custom-control-label" for="hemogl_radio1"> <font>
				</font>
				</label>
				</div>
			</div>
		<div class="col-md-1">
			<form:input class="form-control valKeyN" type="text" id="hemogl"
				tabindex="419" path="hemogl" value="${CoreObject.hemogl}"
				maxlength="4" disabled="true" />
			<span><font size="2" style="padding-left: 10px;"><i>
						(g/dl)</i></font></span>
		</div>

		<label class="col-form-label text-right"> &nbsp;Or</label>
			<div class="col-md-1 text-right">
				<div class="custom-control custom-radio mb-3">				
					<form:radiobutton id="hemogl_radio2"  value="2" 
						checked="${CoreObject.hemogl_radio == '2' ? 'checked' : '' }"
						class="custom-control-input" path="hemogl_radio" onClick="hemogl_radioFn()" disabled="true"  /> 
						<label class="custom-control-label" for="hemogl_radio2"> <font>
				</font>
				</label>
				</div>
			</div>
		<div class="col-md-1">
			<form:input class="form-control valKeyN" type="text" id="hemogl1"
				tabindex="419" path="hemogl1" value="${CoreObject.hemogl1}"
				maxlength="4" disabled="true" />
				<span><font size="2" style="padding-left: 8px;"><i>
						(mmol/L)</i></font></span>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hypercholesterolemia</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio102" value="1" tabindex="421"
					checked="${CoreObject.hypercholesterolemia == '1' ? 'checked' : '' }"
					class="custom-control-input btn_hypercholesterolemia" path="hypercholesterolemia"
					onClick="enable70()" />
				<label class="custom-control-label" for="customRadio102"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio103" value="2" tabindex="422"
					checked="${CoreObject.hypercholesterolemia == '2' ? 'checked' : '' }"
					class="custom-control-input btn_hypercholesterolemia" path="hypercholesterolemia"
					onClick="enable70()" />
				<label class="custom-control-label" for="customRadio103"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio104" value="3" tabindex="423"
					checked="${CoreObject.hypercholesterolemia == '3' ? 'checked' : '' }"
					class="custom-control-input btn_hypercholesterolemia" path="hypercholesterolemia"
					onClick="enable70()" />
				<label class="custom-control-label" for="customRadio104"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration16"
				tabindex="424" path="hypercholesterolemiaDur"
				value="${CoreObject.hypercholesterolemiaDur}" maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">


			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="hypercNewly"
					tabindex="425" value="4"
					checked="${CoreObject.hypercNewly == '4' ? 'checked' : '' }"
					id="customCheck1-433" />
				<label class="custom-control-label" for="customCheck1-433"></label>
			</div>

		</div>
	</div>
		<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="hyperCh hide" type="text" id="hyperCh" name="hyperCh"/>


			</div>
		</div>
	</div>
	
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hyper
			homocysteinemia</label>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio106" value="1" tabindex="426"
					checked="${CoreObject.hyperHomocysteinemia == '1' ? 'checked' : '' }"
					class="custom-control-input btn_hyperHomocysteinemia" path="hyperHomocysteinemia"
					onClick="enable72()" />
				<label class="custom-control-label" for="customRadio106"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio107" value="2" tabindex="427"
					checked="${CoreObject.hyperHomocysteinemia == '2' ? 'checked' : '' }"
					class="custom-control-input btn_hyperHomocysteinemia" path="hyperHomocysteinemia"
					onClick="enable72()" />
				<label class="custom-control-label" for="customRadio107"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio108" value="3" tabindex="428"
					checked="${CoreObject.hyperHomocysteinemia == '3' ? 'checked' : '' }"
					class="custom-control-input btn_hyperHomocysteinemia" path="hyperHomocysteinemia"
					onClick="enable72()" />
				<label class="custom-control-label" for="customRadio108"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">


			<form:input class="form-control valKeyN" type="text" id="duration17"
				tabindex="429" path="hyperHomocysteinemiaDur"
				value="${CoreObject.hyperHomocysteinemiaDur}" maxlength="4"
				disabled="true" />
		</div>

		<div class="col-md-3">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" path="hyperhoNewly"
					tabindex="430" value="4"
					checked="${CoreObject.hyperhoNewly == '4' ? 'checked' : '' }"
					id="customCheck1-434" />
				<label class="custom-control-label" for="customCheck1-434"></label>
			</div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
		<div class="col-md-5"></div>
			<div class="col-md-5">
				<input class="hyperHom hide" type="text" id="hyperHom" name="hyperHom"/>


			</div>
		</div>
	</div>
	
	<div class="form-group row">

		<label class="col-md-2 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others
		</label>
		<div class="col-md-3">
			<form:input class="form-control" type="text" id="co_morbidOthers1"
				tabindex="431" path="co_morbidOthers1"
				onkeypress="return isNotNumberKey(event)" maxlength="250"
				value="${CoreObject.co_morbidOthers1}" />
		</div>


		<div class="col-md-3">
			<form:input class="form-control" type="text" id="co_morbidOthers2"
				tabindex="432" path="co_morbidOthers2"
				onkeypress="return isNotNumberKey(event)" maxlength="250"
				value="${CoreObject.co_morbidOthers2}" />
		</div>


		<div class="col-md-3">
			<form:input class="form-control" type="text" id="co_morbidOthers3"
				tabindex="433" path="co_morbidOthers3"
				onkeypress="return isNotNumberKey(event)" maxlength="250"
				value="${CoreObject.co_morbidOthers3}" />
		</div>
		<div class="col-md-1"></div>

	</div>


	<div class="form-group row">

		<label class="col-md-5	 col-form-label"><code
				style="padding-right: 10px; color: black">25</code>Other
			risks/conditions <span class="italic"><font size="2">(current
					or history of):</font></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
			class="col-md-1 col-form-label  weight-600"> Yes</label> <label
			class="col-md-1 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600"> Unknown </label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Family
					History of Stroke </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio110" value="1" tabindex="434"
						checked="${CoreObject.familyHisOfStrok == '1' ? 'checked' : '' }"
						class="custom-control-input btn_famHisOfStr"
						path="familyHisOfStrok" />
					<label class="custom-control-label" for="customRadio110"> </label>

				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio111" value="2" tabindex="435"
						checked="${CoreObject.familyHisOfStrok == '2' ? 'checked' : '' }"
						class="custom-control-input btn_famHisOfStr"
						path="familyHisOfStrok" />
					<label class="custom-control-label" for="customRadio111"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio112" value="3" tabindex="436"
						checked="${CoreObject.familyHisOfStrok == '3' ? 'checked' : '' }"
						class="custom-control-input btn_famHisOfStr"
						path="familyHisOfStrok" />
					<label class="custom-control-label" for="customRadio112"> </label>

				</div>
			</div>
			<div class="col-md-3">
			<input class="famHisOfStr hide" type="text" id="famHisOfStr" name="famHisOfStr"/>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tobacco
					Smoking </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio113" value="1" tabindex="437"
						checked="${CoreObject.tobaccoSmok == '1' ? 'checked' : '' }"
						class="custom-control-input btn_tobSmo" path="tobaccoSmok" />
					<label class="custom-control-label" for="customRadio113"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio114" value="2" tabindex="438"
						checked="${CoreObject.tobaccoSmok == '2' ? 'checked' : '' }"
						class="custom-control-input btn_tobSmo" path="tobaccoSmok" />
					<label class="custom-control-label" for="customRadio114"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio115" value="3" tabindex="439"
						checked="${CoreObject.tobaccoSmok == '3' ? 'checked' : '' }"
						class="custom-control-input btn_tobSmo" path="tobaccoSmok" />
					<label class="custom-control-label" for="customRadio115"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="tobacco hide" type="text" id="tobacco" name="tobacco"/>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Smokeless
					Tobacco use </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio116" value="1" tabindex="440"
						checked="${CoreObject.smkolessTobacco == '1' ? 'checked' : '' }"
						class="custom-control-input btn_smoTob" path="smkolessTobacco" />
					<label class="custom-control-label" for="customRadio116"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio117" value="2" tabindex="441"
						checked="${CoreObject.smkolessTobacco == '2' ? 'checked' : '' }"
						class="custom-control-input btn_smoTob" path="smkolessTobacco" />
					<label class="custom-control-label" for="customRadio117"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio118" value="3" tabindex="442"
						checked="${CoreObject.smkolessTobacco == '3' ? 'checked' : '' }"
						class="custom-control-input btn_smoTob" path="smkolessTobacco" />
					<label class="custom-control-label" for="customRadio118"> </label>

				</div>
			</div>
			<div class="col-md-3">
			<input class="smokTobbaco hide" type="text" id="smokTobbaco" name="smokTobbaco"/>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alcohol
					use </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio119" value="1" tabindex="443"
						checked="${CoreObject.alcoholUse == '1' ? 'checked' : '' }"
						class="custom-control-input btn_alchUse" path="alcoholUse" />
					<label class="custom-control-label" for="customRadio119"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio120" value="2" tabindex="444"
						checked="${CoreObject.alcoholUse == '2' ? 'checked' : '' }"
						class="custom-control-input btn_alchUse" path="alcoholUse" />
					<label class="custom-control-label" for="customRadio120"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio121" value="3" tabindex="445"
						checked="${CoreObject.alcoholUse == '3' ? 'checked' : '' }"
						class="custom-control-input btn_alchUse" path="alcoholUse" />
					<label class="custom-control-label" for="customRadio121"> </label>

				</div>
			</div>
			<div class="col-md-3">
			<input class="alcUse hide" type="text" id="alcUse" name="alcUse"/>
			</div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Drug Abuse
					or Addiction </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio122" value="1" tabindex="446"
						checked="${CoreObject.drugAbuse == '1' ? 'checked' : '' }"
						class="custom-control-input btn_drugAb" path="drugAbuse" />
					<label class="custom-control-label" for="customRadio122"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio123" value="2" tabindex="447"
						checked="${CoreObject.drugAbuse == '2' ? 'checked' : '' }"
						class="custom-control-input btn_drugAb" path="drugAbuse" />
					<label class="custom-control-label" for="customRadio123"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio124" value="3" tabindex="448"
						checked="${CoreObject.drugAbuse == '3' ? 'checked' : '' }"
						class="custom-control-input btn_drugAb" path="drugAbuse" />
					<label class="custom-control-label" for="customRadio124"> </label>

				</div>
			</div>
			<div class="col-md-3">
			<input class="drugAb hide" type="text" id="drugAb" name="drugAb"/>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pregnancy
					or within 6 weeks after a delivery or
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;termination of pregnancy
				</label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio125" value="1" tabindex="449"
						checked="${CoreObject.deliveryORtermination == '1' ? 'checked' : '' }"
						class="custom-control-input btn_pregn"
						path="deliveryORtermination" />
					<label class="custom-control-label" for="customRadio125"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio126" value="2" tabindex="450 "
						checked="${CoreObject.deliveryORtermination == '2' ? 'checked' : '' }"
						class="custom-control-input btn_pregn"
						path="deliveryORtermination" />
					<label class="custom-control-label" for="customRadio126"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio127" value="3" tabindex="451"
						checked="${CoreObject.deliveryORtermination == '3' ? 'checked' : '' }"
						class="custom-control-input btn_pregn"
						path="deliveryORtermination" />
					<label class="custom-control-label" for="customRadio127"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="deliTreat hide" type="text" id="deliTreat" name="deliTreat"/>
			</div>
		</div>
	</div>


	<!-- --- -->


	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hormone
					replacement therapy/Hormonal drug  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;use</label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio128" value="1" tabindex="452"
						checked="${CoreObject.therapy == '1' ? 'checked' : '' }"
						class="custom-control-input btn_therapy" path="therapy" />
					<label class="custom-control-label" for="customRadio128"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio129" value="2" tabindex="453"
						checked="${CoreObject.therapy == '2' ? 'checked' : '' }"
						class="custom-control-input btn_therapy" path="therapy" />
					<label class="custom-control-label" for="customRadio129"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio130" value="3" tabindex="454"
						checked="${CoreObject.therapy == '3' ? 'checked' : '' }"
						class="custom-control-input btn_therapy" path="therapy" />
					<label class="custom-control-label" for="customRadio130"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="hormone hide" type="text" id="hormone" name="hormone"/>
			</div>

		</div>
	</div>

	<!-- --- -->



































	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Migraine </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio417" value="1" tabindex="452"
						checked="${CoreObject.migraine == '1' ? 'checked' : '' }"
						class="custom-control-input btn_migran" path="migraine" />
					<label class="custom-control-label" for="customRadio417"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio418" value="2" tabindex="453"
						checked="${CoreObject.migraine == '2' ? 'checked' : '' }"
						class="custom-control-input btn_migran" path="migraine" />
					<label class="custom-control-label" for="customRadio418"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio419" value="3" tabindex="454"
						checked="${CoreObject.migraine == '3' ? 'checked' : '' }"
						class="custom-control-input btn_migran" path="migraine" />
					<label class="custom-control-label" for="customRadio419"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="migra hide" type="text" id="migra" name="migra"/>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sickle
					Cell disease </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio131" value="1" tabindex="456"
						checked="${CoreObject.sickleCellDisease == '1' ? 'checked' : '' }"
						class="custom-control-input btn_sickle" path="sickleCellDisease" />
					<label class="custom-control-label" for="customRadio131"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio132" value="2" tabindex="457"
						checked="${CoreObject.sickleCellDisease == '2' ? 'checked' : '' }"
						class="custom-control-input btn_sickle" path="sickleCellDisease" />
					<label class="custom-control-label" for="customRadio132"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio133" value="3" tabindex="458"
						checked="${CoreObject.sickleCellDisease == '3' ? 'checked' : '' }"
						class="custom-control-input btn_sickle" path="sickleCellDisease" />
					<label class="custom-control-label" for="customRadio133"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="cellDis hide" type="text" id="cellDis" name="cellDis"/>
			</div>
		</div>
	</div>

	<!-- --- -->


	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HIV
					infection</label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio420" value="1" tabindex="452"
						checked="${CoreObject.migraine == '1' ? 'checked' : '' }"
						class="custom-control-input btn_hiv" path="hiv" />
					<label class="custom-control-label" for="customRadio420"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio421" value="2" tabindex="453"
						checked="${CoreObject.migraine == '2' ? 'checked' : '' }"
						class="custom-control-input btn_hiv" path="hiv" />
					<label class="custom-control-label" for="customRadio421"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio422" value="3" tabindex="454"
						checked="${CoreObject.migraine == '3' ? 'checked' : '' }"
						class="custom-control-input btn_hiv" path="hiv" />
					<label class="custom-control-label" for="customRadio422"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="hivInf hide" type="text" id="hivInf" name="hivInf"/>
			</div>

		</div>
	</div>

	<!-- --- -->


	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CNS TB </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio134" value="1" tabindex="459"
						checked="${CoreObject.cnsTB == '1' ? 'checked' : '' }"
						class="custom-control-input btn_cnstb" path="cnsTB" />
					<label class="custom-control-label" for="customRadio134"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio135" value="2" tabindex="460"
						checked="${CoreObject.cnsTB == '2' ? 'checked' : '' }"
						class="custom-control-input btn_cnstb" path="cnsTB" />
					<label class="custom-control-label" for="customRadio135"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio136" value="3" tabindex="461"
						checked="${CoreObject.cnsTB == '3' ? 'checked' : '' }"
						class="custom-control-input btn_cnstb" path="cnsTB" />
					<label class="custom-control-label" for="customRadio136"> </label>

				</div>
			</div>
			<div class="col-md-3">
				<input class="cns hide" type="text" id="cns" name="cns"/>
			</div>
		</div>
	</div>


	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">
			&nbsp;&nbsp; Height <span class="italic"><font size="2">(cm)</font></span>
		</label>
		<div class="col-md-2">
			<form:input class="form-control valKeyN" type="text" id="height"
				path="height" tabindex="462" maxlength="4"
				value="${CoreObject.height}" />
		</div>
		<div class="col-md-6"></div>


	</div>

	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">&nbsp;&nbsp;
			Weight <span class="italic"><font size="2">(kgs)</font></span>
		</label>
		<div class="col-md-2">
			<form:input class="form-control valKeyN" type="text" id="weight"
				path="weight" tabindex="463" maxlength="4"
				value="${CoreObject.weight}" />
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
					<form:radiobutton id="customRadio409" value="1" tabindex="464"
						checked="${CoreObject.bmi == '1' ? 'checked' : '' }"
						class="custom-control-input btn_bm" path="bmi" />
					<label class="custom-control-label" for="customRadio409">
						Underweight </label>

				</div>

			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio410" value="2" tabindex="465"
						class="custom-control-input btn_bm" path="bmi" />
					<label checked="${CoreObject.bmi == '2' ? 'checked' : '' }"
						class="custom-control-label" for="customRadio410"> Normal
					</label>

				</div>


			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio411" value="3" tabindex="466"
						checked="${CoreObject.bmi == '3' ? 'checked' : '' }"
						class="custom-control-input btn_bm" path="bmi" />
					<label class="custom-control-label" for="customRadio411">
						Overweight </label>

				</div>


			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio412" value="4" tabindex="467"
						checked="${CoreObject.bmi == '4' ? 'checked' : '' }"
						class="custom-control-input btn_bm" path="bmi" />
					<label class="custom-control-label" for="customRadio412">
						Obese </label>

				</div>

			</div>

		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-4"></div>
		<div class="col-md-3">
			<input class="bm hide" type="text" id="bm" name="bm"/>
		</div>
	</div>
	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">&nbsp;&nbsp;
			Others <span class="italic"><font size="2">(specify)</font></span>
		</label>
		<div class="col-md-6">
			<form:input class="form-control" type="text" id="riskCondOthers"
				tabindex="468" path="riskCondOthers" maxlength="250"
				value="${CoreObject.riskCondOthers}" />
		</div>
		<div class="col-md-4"></div>


	</div>

</body>
</html>