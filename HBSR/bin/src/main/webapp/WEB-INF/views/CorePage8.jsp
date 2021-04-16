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

		<label class="col-md-12 col-form-label  weight-600"><code
				style="padding-right: 10px; color: black">31</code>Couse during
			hospital Stay </label>

	</div>
	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">31.1</code>Did the patient
			deterioarate during hospitalisation? been tested within 24hours of
			admission to RI? </label>

	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio355" value="1"  checked="${CoreObject.after48hr == '1' ? 'checked' : '' }" tabindex="622"
						class="custom-control-input" path="after48hr" onClick="enable30()" />
					<label class="custom-control-label" for="customRadio355">Developed new Stroke event</label>

				</div>


			</div>
			<div class="col-md-6">

				
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio356" value="2"  checked="${CoreObject.after48hr == '2' ? 'checked' : '' }" tabindex="623"
						class="custom-control-input" path="after48hr" onClick="enable31()" />
					<label class="custom-control-label" for="customRadio356">Complications developed during
						hospitalization</label>

				</div>


			</div>
			<div class="col-md-1">
				

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio357" value="3"  checked="${CoreObject.after48hr == '3' ? 'checked' : '' }" tabindex="624"
						class="custom-control-input" path="after48hr" onClick="enable77()"/> <label
						class="custom-control-label" for="customRadio357">No</label>

				</div>


			</div>

		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">31.2</code> If the option
			1, what is the type of stroke? </label>

	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input"  checked="${CoreObject.typeOfstrIsch == '1' ? 'checked' : '' }" tabindex="625"
						path="typeOfstrIsch" value="1" id="customCheck1-367" disabled="true"/>
					<label class="custom-control-label" for="customCheck1-367">
						Ischemic </label>
				</div>
			</div>
			<div class="col-md-5">

				<div class="custom-control custom-checkbox mb-5"> 
					<form:checkbox class="custom-control-input"  checked="${CoreObject.typeOfstrIsch == '2' ? 'checked' : '' }" tabindex="626"
						path="typeOfstrIntrac" value="2" id="customCheck1-368" disabled="true"/>
					<label class="custom-control-label" for="customCheck1-368">
						Intracerebral haemorrhage </label>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input"  checked="${CoreObject.typeOfstrIsch == '3' ? 'checked' : '' }" tabindex="627"
						path="typeOfstrSubar" value="3" id="customCheck1-369" disabled="true"/>
					<label class="custom-control-label" for="customCheck1-369">
						Subarachnoid Haemorrhage </label>
				</div>
			</div>
			<div class="col-md-5">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input"  checked="${CoreObject.typeOfstrIsch == '4' ? 'checked' : '' }" tabindex="628"
						path="typeOfstrVenous" value="4" id="customCheck1-370" disabled="true"/>
					<label class="custom-control-label" for="customCheck1-370">
						Venous stroke </label>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label"><font color="black"><code
					style="padding-right: 10px; color: black">31.3</code>Final
				Diagnosis of new stroke event </font></label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="finaldiag" tabindex="629"
				path="newStrokeEvent" maxlength="100" disabled="true"  value="${CoreObject.newStrokeEvent}"/> 
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-3 col-form-label"><font color="black"><code
					style="padding-right: 10px; color: black">31.4</code> ICD-10
				Description </font></label>
		<div class="col-md-4">
			<form:input class="form-control valKeyCN" type="text" id="icd_desc" path="icdDesc1" tabindex="630"
				maxlength="100" disabled="true" value="${CoreObject.icdDesc1}"/>
		</div>
		<label class="col-md-2 col-form-label"><font color="black">
				ICD-10 code:</font> </label>
		<div class="col-md-1">
			<form:input class="form-control valKeyCN" type="text" id="icd_code" path="icdCode1" tabindex="631"
				disabled="true" maxlength="3" value="${CoreObject.icdCode1}"/>
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<label class=" col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">31.5</code>Date of new
			stroke event </label>
		<div class=" col-md-3">
			<form:input class="form-control date-picker valKeyN dat" type="text" id="strokeevent" tabindex="632" 
				path="dateOfnewStroke" placeholder="" disabled="true" value="${CoreObject.dateOfnewStroke}"/>
		</div>
		<div class=" col-md-5"></div>
	</div>
	<div class="form-group row">

		<label class="col-md-7 col-form-label"><code
				style="padding-right: 10px; color: black">31.6</code>If option
			2,what are the complications during hospitalisation? </label> <label
			class="col-md-1 col-form-label  weight-600"> Yes</label> <label
			class="col-md-2 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600"> Unknown </label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Intracerebral hemorrhage
					due to antithrombotic therapy </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio289" value="1"  checked="${CoreObject.antithrombotic == '1' ? 'checked' : '' }" tabindex="633"
						class="custom-control-input" path="antithrombotic" disabled="true" /> <label
						class="custom-control-label" for="customRadio289"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio290" value="2"  checked="${CoreObject.antithrombotic == '2' ? 'checked' : '' }" tabindex="634"
						class="custom-control-input" path="antithrombotic" disabled="true" /> <label
						class="custom-control-label" for="customRadio290"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio291" value="3"  checked="${CoreObject.antithrombotic == '3' ? 'checked' : '' }" tabindex="635"
						class="custom-control-input" path="antithrombotic" disabled="true" /> <label
						class="custom-control-label" for="customRadio291"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Progression of current
					stroke <span class="italic"><font size="2">(in terms
							of expansion/ of stroke)</font></span>
				</label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio292" value="1"  checked="${CoreObject.currentStroke == '1' ? 'checked' : '' }" tabindex="636"
						class="custom-control-input" path="currentStroke" disabled="true" /> <label
						class="custom-control-label" for="customRadio292"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio293" value="2"  checked="${CoreObject.currentStroke == '2' ? 'checked' : '' }" tabindex="637"
						class="custom-control-input" path="currentStroke" disabled="true" /> <label
						class="custom-control-label" for="customRadio293"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio294" value="3"  checked="${CoreObject.currentStroke == '3' ? 'checked' : '' }" tabindex="638"
						class="custom-control-input" path="currentStroke" disabled="true" /> <label
						class="custom-control-label" for="customRadio294"></label>

				</div>
			</div>

		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cardic
					event </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio295" value="1"  checked="${CoreObject.cardicEvent == '1' ? 'checked' : '' }" tabindex="639"
						class="custom-control-input" path="cardicEvent" disabled="true" /> <label
						class="custom-control-label" for="customRadio295"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio296" value="2"  checked="${CoreObject.cardicEvent == '2' ? 'checked' : '' }" tabindex="640"
						class="custom-control-input" path="cardicEvent" disabled="true" /> <label
						class="custom-control-label" for="customRadio296"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio297" value="3"  checked="${CoreObject.cardicEvent == '3' ? 'checked' : '' }" tabindex="641"
						class="custom-control-input" path="cardicEvent" disabled="true" /> <label
						class="custom-control-label" for="customRadio297"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seizures </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio298" value="1"  checked="${CoreObject.seizures == '1' ? 'checked' : '' }" tabindex="642"
						class="custom-control-input" path="seizures" disabled="true" /> <label
						class="custom-control-label" for="customRadio298"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio299" value="2"  checked="${CoreObject.seizures == '2' ? 'checked' : '' }" tabindex="643"
						class="custom-control-input" path="seizures" disabled="true" /> <label
						class="custom-control-label" for="customRadio299"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio300" value="3"  checked="${CoreObject.seizures == '3' ? 'checked' : '' }" tabindex="644"
						class="custom-control-input" path="seizures" disabled="true" /> <label
						class="custom-control-label" for="customRadio300"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pneumonia </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio301" value="1"  checked="${CoreObject.pneumonia == '1' ? 'checked' : '' }" tabindex="645"
						class="custom-control-input" path="pneumonia" disabled="true" /> <label
						class="custom-control-label" for="customRadio301"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio302" value="2"  checked="${CoreObject.pneumonia == '2' ? 'checked' : '' }" tabindex="646"
						class="custom-control-input" path="pneumonia" disabled="true" /> <label
						class="custom-control-label" for="customRadio302"></label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3"> 
					<form:radiobutton id="customRadio303" value="3"  checked="${CoreObject.pneumonia == '3' ? 'checked' : '' }" tabindex="647"
						class="custom-control-input" path="pneumonia" disabled="true" /> <label
						class="custom-control-label" for="customRadio303"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Urinary
					Tract Infection </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio304" value="1"  checked="${CoreObject.urinaryTracInfe == '1' ? 'checked' : '' }" tabindex="648"
						class="custom-control-input" path="urinaryTracInfe" disabled="true" /> <label
						class="custom-control-label" for="customRadio304"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio305" value="2"  checked="${CoreObject.urinaryTracInfe == '2' ? 'checked' : '' }" tabindex="649"
						class="custom-control-input" path="urinaryTracInfe" disabled="true" /> <label
						class="custom-control-label" for="customRadio305"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio306" value="3"  checked="${CoreObject.urinaryTracInfe == '3' ? 'checked' : '' }" tabindex="650"
						class="custom-control-input" path="urinaryTracInfe" disabled="true" /> <label
						class="custom-control-label" for="customRadio306"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Decubitus
					ulcer </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio307" value="1"  checked="${CoreObject.decubitusUlcer == '1' ? 'checked' : '' }" tabindex="651"
						class="custom-control-input" path="decubitusUlcer" disabled="true" /> <label
						class="custom-control-label" for="customRadio307"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio308" value="2"  checked="${CoreObject.decubitusUlcer == '2' ? 'checked' : '' }" tabindex="652"
						class="custom-control-input" path="decubitusUlcer" disabled="true" /> <label
						class="custom-control-label" for="customRadio308"></label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3"> 
					<form:radiobutton id="customRadio309" value="3"  checked="${CoreObject.decubitusUlcer == '3' ? 'checked' : '' }" tabindex="653"
						class="custom-control-input" path="decubitusUlcer" disabled="true" /> <label
						class="custom-control-label" for="customRadio309"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Deep
					Venousn Thrombosis </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio310" value="1"  checked="${CoreObject.venousnThrom == '1' ? 'checked' : '' }" tabindex="654"
						class="custom-control-input" path="venousnThrom" disabled="true" /> <label
						class="custom-control-label" for="customRadio310"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio311" value="2"  checked="${CoreObject.venousnThrom == '2' ? 'checked' : '' }" tabindex="656"
						class="custom-control-input" path="venousnThrom" disabled="true" /> <label
						class="custom-control-label" for="customRadio311"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio312" value="3"  checked="${CoreObject.venousnThrom == '3' ? 'checked' : '' }" tabindex="657"
						class="custom-control-input" path="venousnThrom" disabled="true" /> <label
						class="custom-control-label" for="customRadio312"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pulmonary
					Embolism </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio313" value="1"  checked="${CoreObject.pulmonary == '1' ? 'checked' : '' }" tabindex="658"
						class="custom-control-input" path="pulmonary" disabled="true" /> <label
						class="custom-control-label" for="customRadio313"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio314" value="2"  checked="${CoreObject.pulmonary == '2' ? 'checked' : '' }" tabindex="659"
						class="custom-control-input" path="pulmonary" disabled="true" /> <label
						class="custom-control-label" for="customRadio314"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio315" value="3"  checked="${CoreObject.pulmonary == '3' ? 'checked' : '' }" tabindex="660"
						class="custom-control-input" path="pulmonary" disabled="true" /> <label
						class="custom-control-label" for="customRadio315"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fall </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio316" value="1"  checked="${CoreObject.fall == '1' ? 'checked' : '' }" tabindex="661"
						class="custom-control-input" path="fall" disabled="true" /> <label
						class="custom-control-label" for="customRadio316"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio317" value="2"  checked="${CoreObject.fall == '2' ? 'checked' : '' }" tabindex="662"
						class="custom-control-input" path="fall" disabled="true" /> <label
						class="custom-control-label" for="customRadio317"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio318" value="3"  checked="${CoreObject.fall == '3' ? 'checked' : '' }" tabindex="663"
						class="custom-control-input" path="fall" disabled="true" /> <label
						class="custom-control-label" for="customRadio318"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Renal
					Failure </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio319" value="1"  checked="${CoreObject.renalFailure == '1' ? 'checked' : '' }" tabindex="664"
						class="custom-control-input" path="renalFailure" disabled="true" /> <label
						class="custom-control-label" for="customRadio319"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio320" value="2"  checked="${CoreObject.renalFailure == '2' ? 'checked' : '' }" tabindex="665"
						class="custom-control-input" path="renalFailure" disabled="true" /> <label
						class="custom-control-label" for="customRadio320"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio321" value="3"  checked="${CoreObject.renalFailure == '3' ? 'checked' : '' }" tabindex="666"
						class="custom-control-input" path="renalFailure" disabled="true" /> <label
						class="custom-control-label" for="customRadio321"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Post Stroke
					depression </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio322" value="1"  checked="${CoreObject.strokeDepression == '1' ? 'checked' : '' }" tabindex="667"
						class="custom-control-input" path="strokeDepression" disabled="true" />
					<label class="custom-control-label" for="customRadio322"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio323" value="2"  checked="${CoreObject.strokeDepression == '2' ? 'checked' : '' }" tabindex="668"
						class="custom-control-input" path="strokeDepression" disabled="true" />
					<label class="custom-control-label" for="customRadio323"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio324" value="3"  checked="${CoreObject.strokeDepression == '3' ? 'checked' : '' }" tabindex="669"
						class="custom-control-input" path="strokeDepression" disabled="true" />
					<label class="custom-control-label" for="customRadio324"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-7">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Any other
					psychiatric illness </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio325" value="1"  checked="${CoreObject.psychiatricIllness == '1' ? 'checked' : '' }" tabindex="670"
						class="custom-control-input" path="psychiatricIllness" disabled="true" />
					<label class="custom-control-label" for="customRadio325"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio326" value="2"  checked="${CoreObject.psychiatricIllness == '2' ? 'checked' : '' }" tabindex="671"
						class="custom-control-input" path="psychiatricIllness" disabled="true" />
					<label class="custom-control-label" for="customRadio326"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio327" value="3"  checked="${CoreObject.psychiatricIllness == '3' ? 'checked' : '' }" tabindex="672"
						class="custom-control-input" path="psychiatricIllness" disabled="true" />
					<label class="custom-control-label" for="customRadio327"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-4 col-form-label">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others <span class="italic"><font
				size="2">(specify) </font></span>
		</label>
		<div class="col-md-6">
			<form:input class="form-control" type="text" id="hospitalisation" tabindex="673"
				path="comduringhospOth" maxlength="250" disabled="true" value="${CoreObject.comduringhospOth}"/>
		</div>
		<div class="col-md-2"></div>
	</div>



	<div class="form-group row">

		<label class="col-md-12 col-form-label  weight-600 text-center alert-info "><code
				style="padding-right: 10px; color: black">V</code>DISCHARGE
			INFORMATION </label>

	</div>

	<div class="form-group row">
		<label class=" col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">32</code>Date of discharge
		</label>
		<div class=" col-md-3">
			<form:input class="form-control date-picker dat" type="text" id="datDisc"  tabindex="674"
				path="dateOfDisch" placeholder="" value="${CoreObject.dateOfDisch}"/>
		</div>
		<div class=" col-md-5"></div>
	</div>

	<div class="form-group row">
		<label class=" col-md-8 col-form-label"><code
				style="padding-right: 10px; color: black">33</code>How many days was
			the patient admitted in the hospital? </label>
		<div class=" col-md-2">
			<form:input class="form-control valKeyN" type="text" id="desi2" tabindex="675"
				path="patientAdmitted" maxlength="2"
				 value="${CoreObject.patientAdmitted}"/>
		</div>
		<div class=" col-md-2"></div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label><code style="padding-right: 10px; color: black">34</code>
					Vital status at discharge </label>
			</div>

			<div class="col-md-2">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio328" value="1"  checked="${CoreObject.discharge == '1' ? 'checked' : '' }" tabindex="676"
						class="custom-control-input" path="discharge" onClick="enable32()" />
					<label class="custom-control-label" for="customRadio328">
						Alive</label>

				</div>


			</div>
			<div class="col-md-2">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio329" value="2"  checked="${CoreObject.discharge == '2' ? 'checked' : '' }" tabindex="677"
						class="custom-control-input" path="discharge" onClick="enable32()" />
					<label class="custom-control-label" for="customRadio329">
						Dead</label>

				</div>


			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio330" value="3"  checked="${CoreObject.discharge == '3' ? 'checked' : '' }" tabindex="678"
						class="custom-control-input" path="discharge" onClick="enable32()" />
					<label class="custom-control-label" for="customRadio330">
						Unknown</label>

				</div>


			</div>

		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-12 col-form-label "><code
				style="padding-right: 10px; color: black">35</code>Functional status
			<span class="italic"><font size="2">(Modified Rankin
					scale)</font></span> </label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-9 col-form-label  weight-600"> Symptoms</label> <label
			class="col-md-2 col-form-label  weight-600"> Score</label>



	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient doesn't have
					any symptoms <span class="italic"><font size="2">(0)</font></span>
				</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatDoesn == '0' ? 'checked' : '' }" tabindex="679"
						path="funcStatPatDoesn" value="0" id="customCheck1-371"/><label
						class="custom-control-label" for="customCheck1-371"></label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient is able to
					carry out all usual duties and activities without any assistance <span
					class="italic"><font size="2">(1)</font></span>
				</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatAble == '1' ? 'checked' : '' }" tabindex="680"
						path="funcStatPatAble" value="1" id="customCheck1-372"/><label
						class="custom-control-label" for="customCheck1-372"></label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient can look after
					own affairs without assistance <span class="italic"><font
						size="2">(2)</font></span>
				</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatCan == '2' ? 'checked' : '' }" tabindex="681"
						path="funcStatPatCan" value="2" id="customCheck1-373"/><label
						class="custom-control-label" for="customCheck1-373"></label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient requires some
					assistance incdoing activities and can walk by himself or herself
					without any support <span class="italic"><font size="2">(3)</font></span>
				</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatReqAss == '3' ? 'checked' : '' }" tabindex="682"
						path="funcStatPatReqAss" value="3" id="customCheck1-374"/><label 
						class="custom-control-label" for="customCheck1-374"></label>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient needs
					assistance for walking and attending own needs <span class="italic"><font
						size="2">(4)</font></span>
				</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatNedAss == '4' ? 'checked' : '' }" tabindex="683"
						path="funcStatPatNedAss" value="4" id="customCheck1-375"/><label
						class="custom-control-label" for="customCheck1-375"></label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient is
					bedridden/incontinet and requries constant care <span
					class="italic"><font size="2">(5)</font></span>
				</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatBerd == '5' ? 'checked' : '' }" tabindex="684"
						path="funcStatPatBerd" value="5" id="customCheck1-376"/> <label
						class="custom-control-label" for="customCheck1-376"></label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-11">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient is dead <span
					class="italic"><font size="2">(6)</font></span></label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input"  checked="${CoreObject.funcStatPatisDea == '6' ? 'checked' : '' }" tabindex="685"
						path="funcStatPatisDea" value="6" id="customCheck1-377"/><label
						class="custom-control-label" for="customCheck1-377"></label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-6 col-form-label"><code
				style="padding-right: 10px; color: black">36</code>Pharmacologic
			medication at discharge </label> <label
			class="col-md-2 col-form-label  weight-600"> Yes</label> <label
			class="col-md-2 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600"> Unknown</label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Antihypertensive </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio331" value="1"  checked="${CoreObject.antiHyper == '1' ? 'checked' : '' }" tabindex="686"
						class="custom-control-input" path="antiHyper" disabled="true" /> <label
						class="custom-control-label" for="customRadio331"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio332" value="2"  checked="${CoreObject.antiHyper == '2' ? 'checked' : '' }" tabindex="687"
						class="custom-control-input" path="antiHyper" disabled="true" /> <label
						class="custom-control-label" for="customRadio332"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio333" value="3"  checked="${CoreObject.antiHyper == '3' ? 'checked' : '' }" tabindex="688"
						class="custom-control-input" path="antiHyper" disabled="true" /> <label
						class="custom-control-label" for="customRadio333"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Antiplatelets</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio334" value="1"  checked="${CoreObject.antiplatelets2 == '1' ? 'checked' : '' }" tabindex="689"
						class="custom-control-input" path="antiplatelets2" disabled="true" /> <label
						class="custom-control-label" for="customRadio334"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio335" value="2"  checked="${CoreObject.antiplatelets2 == '2' ? 'checked' : '' }" tabindex="690"
						class="custom-control-input" path="antiplatelets2" disabled="true" /> <label
						class="custom-control-label" for="customRadio335"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio336" value="3"  checked="${CoreObject.antiplatelets2 == '3' ? 'checked' : '' }" tabindex="691"
						class="custom-control-input" path="antiplatelets2" disabled="true" /> <label
						class="custom-control-label" for="customRadio336"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anticoagulants </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio337" value="1" checked="${CoreObject.anticoagulants == '1' ? 'checked' : '' }" tabindex="692"
						class="custom-control-input" path="anticoagulants" disabled="true" /> <label
						class="custom-control-label" for="customRadio337"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio338" value="2"  checked="${CoreObject.anticoagulants == '2' ? 'checked' : '' }" tabindex="693"
						class="custom-control-input" path="anticoagulants" disabled="true" /> <label 
						class="custom-control-label" for="customRadio338"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio339" value="3"  checked="${CoreObject.anticoagulants == '3' ? 'checked' : '' }" tabindex="694"
						class="custom-control-input" path="anticoagulants" disabled="true" /> <label
						class="custom-control-label" for="customRadio339"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Statins </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio415" value="1"  checked="${CoreObject.statins == '1' ? 'checked' : '' }" tabindex="695"
						class="custom-control-input" path="statins" disabled="true" /> <label
						class="custom-control-label" for="customRadio340"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio341" value="2"  checked="${CoreObject.statins == '2' ? 'checked' : '' }" tabindex="696"
						class="custom-control-input" path="statins" disabled="true" /> <label
						class="custom-control-label" for="customRadio341"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio342" value="3"  checked="${CoreObject.statins == '3' ? 'checked' : '' }" tabindex="697"
						class="custom-control-input" path="statins" disabled="true" /> <label
						class="custom-control-label" for="customRadio342"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Antidiabetics </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio343" value="1"  checked="${CoreObject.antidiabetics1 == '1' ? 'checked' : '' }" tabindex="698"
						class="custom-control-input" path="antidiabetics1" disabled="true" /> <label
						class="custom-control-label" for="customRadio343"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio344" value="2"  checked="${CoreObject.antidiabetics1 == '2' ? 'checked' : '' }" tabindex="699"
						class="custom-control-input" path="antidiabetics1" disabled="true" /> <label
						class="custom-control-label" for="customRadio344"></label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio345" value="3"  checked="${CoreObject.antidiabetics1 == '3' ? 'checked' : '' }" tabindex="700"
						class="custom-control-input" path="antidiabetics1" disabled="true" /> <label
						class="custom-control-label" for="customRadio345"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">
			Others <span class="italic"><font size="2">(specify)</font></span>
		</label>
		<div class="col-md-6">
			<form:input class="form-control" type="text" id="Pharmacologic" tabindex="701"
				path="pharmacologicMedOth" maxlength="250" disabled="true" value="${CoreObject.pharmacologicMedOth}"/>
		</div>
		<div class="col-md-4"></div>
	</div>
	<div class="form-group row">

		<label class="col-md-6 col-form-label"><code
				style="padding-right: 10px; color: black">37</code>Counselling
			regarding management at discharge </label> <label
			class="col-md-2 col-form-label  weight-600"> Yes</label> <label
			class="col-md-2 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600"> Unknown</label>



	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Counselling for
					regular follow up</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio346" value="1"  checked="${CoreObject.counsellingForReg == '1' ? 'checked' : '' }" tabindex="702"
						class="custom-control-input" path="counsellingForReg" disabled="true" />
					<label class="custom-control-label" for="customRadio346"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio347" value="2"  checked="${CoreObject.counsellingForReg == '2' ? 'checked' : '' }" tabindex="703"
						class="custom-control-input" path="counsellingForReg" disabled="true" />
					<label class="custom-control-label" for="customRadio347"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio348" value="3"  checked="${CoreObject.counsellingForReg == '3' ? 'checked' : '' }" tabindex="704"
						class="custom-control-input" path="counsellingForReg" disabled="true" />
					<label class="custom-control-label" for="customRadio348"></label>

				</div>
			</div>

		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Counselling for
					compliance of medication</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio349" value="1"  checked="${CoreObject.counsellingForCompl == '1' ? 'checked' : '' }" tabindex="705"
						class="custom-control-input" path="counsellingForCompl" disabled="true" />
					<label class="custom-control-label" for="customRadio349"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio350" value="2"  checked="${CoreObject.counsellingForCompl == '2' ? 'checked' : '' }" tabindex="706"
						class="custom-control-input" path="counsellingForCompl" disabled="true" />
					<label class="custom-control-label" for="customRadio350"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio351" value="3"  checked="${CoreObject.counsellingForCompl == '3' ? 'checked' : '' }" tabindex="707"
						class="custom-control-input" path="counsellingForCompl" disabled="true" />
					<label class="custom-control-label" for="customRadio351"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Smoking cessation
					Counselling </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio352" value="1"  checked="${CoreObject.smokCessation == '1' ? 'checked' : '' }" tabindex="708"
						class="custom-control-input" path="smokCessation" disabled="true" /> <label
						class="custom-control-label" for="customRadio352"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio353" value="2"  checked="${CoreObject.smokCessation == '2' ? 'checked' : '' }" tabindex="709"
						class="custom-control-input" path="smokCessation" disabled="true" /> <label
						class="custom-control-label" for="customRadio353"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio354" value="3"  checked="${CoreObject.smokCessation == '3' ? 'checked' : '' }" tabindex="710"
						class="custom-control-input" path="smokCessation" disabled="true" /> <label
						class="custom-control-label" for="customRadio354"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Smokeless tobacco
					cessation counselling </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio416" value="1"  checked="${CoreObject.smokLessTobCess == '1' ? 'checked' : '' }" tabindex="711"
						class="custom-control-input" path="smokLessTobCess" disabled="true" /> <label
						class="custom-control-label" for="customRadio416"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio417" value="2"  checked="${CoreObject.smokLessTobCess == '2' ? 'checked' : '' }" tabindex="712"
						class="custom-control-input" path="smokLessTobCess" disabled="true" /> <label
						class="custom-control-label" for=customRadio417></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio358" value="3"  checked="${CoreObject.smokLessTobCess == '3' ? 'checked' : '' }" tabindex="713"
						class="custom-control-input" path="smokLessTobCess" disabled="true" /> <label
						class="custom-control-label" for="customRadio358"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Counselling to abstain
					alcohol </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio359" value="1"  checked="${CoreObject.counForAbstAlc == '1' ? 'checked' : '' }" tabindex="714"
						class="custom-control-input" path="counForAbstAlc" disabled="true" /> <label
						class="custom-control-label" for="customRadio359"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio360" value="2"  checked="${CoreObject.counForAbstAlc == '2' ? 'checked' : '' }" tabindex="715"
						class="custom-control-input" path="counForAbstAlc" disabled="true" /> <label
						class="custom-control-label" for="customRadio360"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio361" value="3"  checked="${CoreObject.counForAbstAlc == '3' ? 'checked' : '' }" tabindex="716"
						class="custom-control-input" path="counForAbstAlc" disabled="true" /> <label
						class="custom-control-label" for="customRadio361"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Counselling to abstain
					from drug abuse&addiction </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio362" value="1"  checked="${CoreObject.counForDrugAbuse == '1' ? 'checked' : '' }" tabindex="717"
						class="custom-control-input" path="counForDrugAbuse" disabled="true" />
					<label class="custom-control-label" for="customRadio362"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio363" value="2"  checked="${CoreObject.counForDrugAbuse == '2' ? 'checked' : '' }" tabindex="718"
						class="custom-control-input" path="counForDrugAbuse" disabled="true" />
					<label class="custom-control-label" for="customRadio363"></label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio364" value="3"  checked="${CoreObject.counForDrugAbuse == '3' ? 'checked' : '' }" tabindex="719"
						class="custom-control-input" path="counForDrugAbuse" disabled="true" /> 
					<label class="custom-control-label" for="customRadio364"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Advice on
					rehabiliation services advice </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio365" value="1"  checked="${CoreObject.rehabiliationServ == '1' ? 'checked' : '' }" tabindex="720"
						class="custom-control-input" path="rehabiliationServ" disabled="true" />
					<label class="custom-control-label" for="customRadio365"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio366" value="2"  checked="${CoreObject.rehabiliationServ == '2' ? 'checked' : '' }" tabindex="721"
						class="custom-control-input" path="rehabiliationServ" disabled="true" />
					<label class="custom-control-label" for="customRadio366"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio367" value="3"  checked="${CoreObject.rehabiliationServ == '3' ? 'checked' : '' }" tabindex="722"
						class="custom-control-input" path="rehabiliationServ" disabled="true" /> 
					<label class="custom-control-label" for="customRadio367"></label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Stroke education </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio368" value="1"  checked="${CoreObject.strokeEduc == '1' ? 'checked' : '' }" tabindex="723"
						class="custom-control-input" path="strokeEduc" disabled="true" /> <label
						class="custom-control-label" for="customRadio368"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio369" value="2"  checked="${CoreObject.strokeEduc == '2' ? 'checked' : '' }" tabindex="724"
						class="custom-control-input" path="strokeEduc" disabled="true" /> <label
						class="custom-control-label" for="customRadio369"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio370" value="3"  checked="${CoreObject.strokeEduc == '3' ? 'checked' : '' }" tabindex="725"
						class="custom-control-input" path="strokeEduc" disabled="true" /> <label
						class="custom-control-label" for="customRadio370"></label>

				</div>
			</div>

		</div>
	</div>



</body>
</html>