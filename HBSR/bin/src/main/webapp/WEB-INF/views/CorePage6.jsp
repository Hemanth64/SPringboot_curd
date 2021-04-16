<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	$("#ThTimeAmPm").click(
			function() {
				$("#thrombolyticSymTime").val(
						$("#ThTimehr").val() + ":" + $("#ThTimeMn").val()
								+ " " + $("#ThTimeAmPm").val())
			});
	if ($("#thrombolyticSymTime").val() != "") {
		var str = $("#thrombolyticSymTime").val();
		$("#ThTimehr").val(str.substring(0, 2));
		$("#ThTimeMn").val(str.substring(3, 5));
		$("#ThTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
				'selected', true);
	}
});

</script>
</head>
<body>
	<div class="form-group row">
		<label class="col-md-12 col-form-label  weight-600 text-center alert-info "><code
				style="padding-right: 10px; color: black">IV </code>TREATMENT
			DETAILS </label>

	</div>


	<div class="form-group row">

		<label class="col-md-5 col-form-label"><code
				style="padding-right: 10px; color: black">26</code>Treatment status
			before onset of stroke </label> <label
			class="col-md-1 col-form-label  weight-600"> Yes</label> <label
			class="col-md-1 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600">Unknown</label><label
			class="col-md-3 col-form-label  weight-600"> Duration in
			months </label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Antiplatelets </label>
			</div>


			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio137" value="1"  checked="${CoreObject.repInst == '1' ? 'checked' : '' }"  tabindex="422"
						class="custom-control-input" path="antiplatelets"
						onClick="enable18()" /> <label class="custom-control-label"
						for="customRadio137"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio138" value="2"
						class="custom-control-input" path="antiplatelets"  checked="${CoreObject.antiplatelets == '2' ? 'checked' : '' }"  tabindex="423"
						onClick="enable18()" /> <label class="custom-control-label"
						for="customRadio138"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio139" value="3"  checked="${CoreObject.antiplatelets == '3' ? 'checked' : '' }"  tabindex="424"
						class="custom-control-input" path="antiplatelets"
						onClick="enable18()" /> <label class="custom-control-label"
						for="customRadio139"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="months" path="antiplateletsDur"  tabindex="425"
					disabled="true" maxlength="4" value="${CoreObject.antiplateletsDur}"/>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="form-group row">
		<label class=" col-md-2 col-form-label">

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;specify </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="treatmentspec"  tabindex="426"
				path="antiplateletsSpe" maxlength="250" disabled="true" value="${CoreObject.antiplateletsSpe}"/>
		</div>
		<div class=" col-md-5"></div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anti-hypertensive
					drugs </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio140" value="1"  checked="${CoreObject.hypertensiveDrugs == '1' ? 'checked' : '' }"  tabindex="427"
						class="custom-control-input" path="hypertensiveDrugs"
						onClick="enable19()" /> <label class="custom-control-label"
						for="customRadio140"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio141" value="2"  checked="${CoreObject.hypertensiveDrugs == '2' ? 'checked' : '' }"  tabindex="428"
						class="custom-control-input" path="hypertensiveDrugs"
						onClick="enable19()" /> <label class="custom-control-label"
						for="customRadio141"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio142" value="3"  checked="${CoreObject.hypertensiveDrugs == '3' ? 'checked' : '' }"  tabindex="429"
						class="custom-control-input" path="hypertensiveDrugs"
						onClick="enable19()" /> <label class="custom-control-label"
						for="customRadio142"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="months1" path="hypertensiveDrugsDur" value="${CoreObject.hypertensiveDrugsDur}"  tabindex="430"
					disabled="true" maxlength="4" /> 
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lipid lowering drugs </label>
			</div>

			<div class="col-md-1">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio143" value="1"  checked="${CoreObject.loweringDrugs == '1' ? 'checked' : '' }"  tabindex="431"
						class="custom-control-input" path="loweringDrugs"
						onClick="enable20()" /> <label class="custom-control-label"
						for="customRadio143"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio144" value="2"
						class="custom-control-input" path="loweringDrugs"  checked="${CoreObject.loweringDrugs == '2' ? 'checked' : '' }"  tabindex="432"
						onClick="enable20()" /> <label class="custom-control-label"
						for="customRadio144"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio145" value="3"  checked="${CoreObject.loweringDrugs == '3' ? 'checked' : '' }"  tabindex="433"
						class="custom-control-input" path="loweringDrugs"
						onClick="enable20()" /> <label class="custom-control-label"
						for="customRadio145"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="months2" path="loweringDrugsDur" value="${CoreObject.loweringDrugsDur}"  tabindex="434"
					disabled="true" maxlength="4" />
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-5">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anti-Diabetic agents </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio146" value="1"  checked="${CoreObject.diabeticAgents == '1' ? 'checked' : '' }"  tabindex="435"
						class="custom-control-input" path="diabeticAgents"
						onClick="enable21()" /> <label class="custom-control-label"
						for="customRadio146"> </label>

				</div>
			</div>
			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio147" value="2"  checked="${CoreObject.diabeticAgents == '2' ? 'checked' : '' }"  tabindex="436"
						class="custom-control-input" path="diabeticAgents"
						onClick="enable21()" /> <label class="custom-control-label"
						for="customRadio147"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio148" value="3"   checked="${CoreObject.diabeticAgents == '3' ? 'checked' : '' }"  tabindex="437"
						class="custom-control-input" path="diabeticAgents" 
						onClick="enable21()" /> <label class="custom-control-label"
						for="customRadio148"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="months3" path="diabeticAgentsDur" value="${CoreObject.diabeticAgentsDur}"  tabindex="438"
					disabled="true" maxlength="4" />
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="form-group row">

		<label class=" col-md-2 col-form-label">

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others <span class="italic"><font
				size="2">(specify)</font></span>
		</label>
		<div class=" col-md-6">
			<form:input class="form-control" type="text" id="path2" path="treatmentOthers" value="${CoreObject.treatmentOthers}"  tabindex="439"
				maxlength="250" />
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="form-group row">
		<label class=" col-md-12 col-form-label"> <code
				style="padding-right: 10px; color: black">26.1</code> Medications
			taken for this episode of stroke, prior to admission to Reporting
			Institution:
		</label>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio149" value="1"   checked="${CoreObject.medicationsTaken == '1' ? 'checked' : '' }"  tabindex="440"
						class="custom-control-input" path="medicationsTaken"
						onClick="enable22()" /> <label class="custom-control-label"
						for="customRadio149"> Yes</label>

				</div>
			</div>

			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio150" value="2"  checked="${CoreObject.medicationsTaken == '2' ? 'checked' : '' }"  tabindex="441"
						class="custom-control-input" path="medicationsTaken" 
						onClick="enable22()" /> <label class="custom-control-label"
						for="customRadio150">No </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio151" value="3"   checked="${CoreObject.medicationsTaken == '3' ? 'checked' : '' }"  tabindex="442"
						class="custom-control-input" path="medicationsTaken"
						onClick="enable22()" /> <label class="custom-control-label"
						for="customRadio151">Unknown </label>

				</div>
			</div>
			<div class="col-md-5"></div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">26.2</code>Antiplatelet </label> <label
			class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">26.3</code> Anticoagulant</label>
		<label class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">26.4</code> Thrombolytic
			treatment</label>


	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-4">
				<label >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Aspirin</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="anti_Aspirin"  value="1"  checked="${CoreObject.anti_Aspirin == '1' ? 'checked' : '' }"  tabindex="443"
						id="customCheck1-340" disabled="true"/><label
						class="custom-control-label" for="customCheck1-340"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Heparin IV</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="antico_Heprin"  value="1"  checked="${CoreObject.antico_Heprin == '1' ? 'checked' : '' }"  tabindex="444"
						id="customCheck1-341" disabled="true"/><label
						class="custom-control-label" for="customCheck1-341"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IV tPA</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="throm_IVtPA" value="1"  checked="${CoreObject.throm_IVtPA == '1' ? 'checked' : '' }"  tabindex="445"
						id="customCheck1-342" disabled="true"/><label
						class="custom-control-label" for="customCheck1-342"></label>
				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-4">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Aspirin/dipyridamole</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="anti_Dipyri" value="1"  checked="${CoreObject.anti_Dipyri == '1' ? 'checked' : '' }"  tabindex="446"
						id="customCheck1-343" disabled="true"/><label
						class="custom-control-label" for="customCheck1-343"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Full dose LMW
					heparin</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="antico_Full" value="1"  checked="${CoreObject.antico_Full == '1' ? 'checked' : '' }"  tabindex="447"
						id="customCheck1-344" disabled="true"/> <label 
						class="custom-control-label" for="customCheck1-344"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IA tPA</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="throm_IAtPA" value="1"  checked="${CoreObject.throm_IAtPA == '1' ? 'checked' : '' }"  tabindex="448"
						id="customCheck1-345" disabled="true"/><label 
						class="custom-control-label" for="customCheck1-345"></label>
				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-4">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clopidogrel</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="anti_Clopid" value="1"  checked="${CoreObject.anti_Clopid == '1' ? 'checked' : '' }"  tabindex="449"
						id="customCheck1-346" disabled="true"/><label
						class="custom-control-label" for="customCheck1-346"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Warfarin</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="antico_Warfarin" value="1"  checked="${CoreObject.antico_Warfarin == '1' ? 'checked' : '' }"  tabindex="450"
						id="customCheck1-347" disabled="true"/><label
						class="custom-control-label" for="customCheck1-347"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mechanical
					Thromectomy</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="throm_Mechan" value="1"  checked="${CoreObject.throm_Mechan == '1' ? 'checked' : '' }"  tabindex="451"
						id="customCheck1-348" disabled="true"/><label
						class="custom-control-label" for="customCheck1-348"></label>
				</div>
			</div>

		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-2">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others</label>
			</div>
			<div class="col-md-2">
				<form:input class="form-control" type="text" id="medother" path="antiplateletOth" value="${CoreObject.antiplateletOth}"  tabindex="452"
					 maxlength="250" disabled="true" />
			</div>

			<div class="col-md-4">
				<label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New oral
					Anti-coagulant</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="antico_NewOral" value="1"  checked="${CoreObject.antico_NewOral == '1' ? 'checked' : '' }"  tabindex="453"
						id="customCheck1-349" disabled="true"/><label
						class="custom-control-label" for="customCheck1-349"></label>
				</div>
			</div>
			<div class="col-md-2">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others</label>
			</div>
			<div class="col-md-2">
				<form:input class="form-control" type="text" id="medother1" path="thrombolyticTreatmentOth" value="${CoreObject.thrombolyticTreatmentOth}"  tabindex="454"
					 maxlength="250" disabled="true" />
			</div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-2">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others</label>
			</div>
			<div class="col-md-2">
				<form:input class="form-control" type="text" id="medother2" path="anticoagulantOth" value="${CoreObject.anticoagulantOth}"  tabindex="455"
					 maxlength="250" disabled="true" />
			</div>
			<div class="col-md-4"></div>

		</div>
	</div>





	<div class="form-group">
		<div class="row">
			<div class="col-md-3">
				<label><code style="padding-right: 10px; color: black">26.5</code>Antidiabetics</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="antidiabetics" value="1"  checked="${CoreObject.antidiabetics == '1' ? 'checked' : '' }"  tabindex="456"
						id="customCheck1-350" disabled="true"/><label 
						class="custom-control-label" for="customCheck1-350"></label>
				</div>
			</div>
			<div class="col-md-4">
				<label><code style="padding-right: 10px; color: black">26.6</code>Anti
					Hypertensive</label>
				<div class="custom-control custom-checkbox pull-right">

					<form:checkbox class="custom-control-input" path="antiHypertensive" value="1"  checked="${CoreObject.antiHypertensive == '1' ? 'checked' : '' }"  tabindex="457"
						id="customCheck1-351" disabled="true"/><label
						class="custom-control-label" for="customCheck1-351"></label>
				</div>
			</div>
			<div class="col-md-5">
				<label><code style="padding-right: 10px; color: black">26.7</code>Lipid
					lowering agents/Statins</label>
				<div class="custom-control custom-checkbox pull-right">
 
					<form:checkbox class="custom-control-input" path="lipidLowering" value="1"  checked="${CoreObject.lipidLowering == '1' ? 'checked' : '' }"  tabindex="458"
						id="customCheck1-352" disabled="true"/> <label
						class="custom-control-label" for="customCheck1-352"></label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group row">
		<label class="col-md-12 col-form-label  weight-600"><code
				style="padding-right: 10px; color: black">27 </code>Thrombolytic
			traetment at Reporting Institution </label>

	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label><code style="padding-right: 10px; color: black">27.1</code>
					Was Thrombolytic traetment given? </label>
			</div>

			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio152" value="1"   checked="${CoreObject.thrombolyticTraetmentGiv == '1' ? 'checked' : '' }"  tabindex="459"
						class="custom-control-input" path="thrombolyticTraetmentGiv"
						onClick="enable10()" /> <label class="custom-control-label"
						for="customRadio152"> Yes</label>

				</div>
			</div>
			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio153" value="2"   checked="${CoreObject.thrombolyticTraetmentGiv == '2' ? 'checked' : '' }"  tabindex="460"
						class="custom-control-input" path="thrombolyticTraetmentGiv"
						onClick="enable10()" /> <label class="custom-control-label"
						for="customRadio153"> No</label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="thromIVtPA" value="1"   checked="${CoreObject.thromIVtPA == '1' ? 'checked' : '' }"  tabindex="461" 
						id="customCheck1-355" disabled="true"/> <label
						class="custom-control-label" for="customCheck1-355"> IV
						tPA</label>
				</div>
			</div>
			<div class="col-md-3">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="thromIAtPA" value="2"   checked="${CoreObject.thromIAtPA == '2' ? 'checked' : '' }"  tabindex="462"
						id="customCheck1-356" disabled="true"/> <label
						class="custom-control-label" for="customCheck1-356"> IA
						tPA </label>
				</div>
			</div>
			<div class="col-md-4">
				<div class="custom-control custom-checkbox mb-5"> 
					<form:checkbox class="custom-control-input" path="thromMechan" value="3"   checked="${CoreObject.thromMechan == '3' ? 'checked' : '' }"  tabindex="463"
						id="customCheck1-357" disabled="true"/> <label
						class="custom-control-label" for="customCheck1-357">
						Mechanical thrombectomy </label>
				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<input type="checkbox" class="custom-control-input"   tabindex="464"
						id="customCheck1-358" maxlength="250" disabled="true"/> <label
						class="custom-control-label" for="customCheck1-358">
						Others <span class="italic"><font size="2">(Specify)</font></span>
					</label>
				</div>
			</div>
			<div class="col-md-6">
				<div class="custom-control custom-checkbox mb-5">
					<form:input class="form-control" type="text" id="thrombolytic" value="${CoreObject.thrombolyticTraetmentGivOth}"  tabindex="465"
						path="thrombolyticTraetmentGivOth" 
						maxlength="250" disabled="true" />
				</div>
			</div>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="thromUnk" value="9"   checked="${CoreObject.thromUnk == '9' ? 'checked' : '' }"  tabindex="466"
						id="customCheck1-359" disabled="true"/> <label 
						class="custom-control-label" for="customCheck1-359">
						Unknown </label>
				</div>

			</div>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">27.2</code>Time of
			intiating Thrombolytic traetment after symptom onset </label>

	</div>
	<div class="form-group row">
		<div class=" col-md-1 col-form-label"></div>
		<label class=" col-md-1 col-form-label"> Date </label>
		<div class=" col-md-2">
			<form:input class="form-control date-picker dat" type="text" 
				id="Thrombolyticdate" path="thrombolyticSymDate"  value="${CoreObject.thrombolyticSymDate}"  tabindex="467"
				disabled="true" />
		</div>
<div class=" col-md-1 col-form-label"></div>
		<label class=" col-md-1 col-form-label">Time </label>
		<div class=" col-md-3">
			<%-- <form:input class="form-control " type="text" id="Thrombolytictime" maxlength="4" value="${CoreObject.thrombolyticSymTime}"  tabindex="468"
				path="thrombolyticSymTime" placeholder="" disabled="true" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="ThTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="ThTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="ThTimeAmPm" name="deathTimeAmPm">
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="thrombolyticSymTime" path="thrombolyticSymTime"
			value="${CoreObject.thrombolyticSymTime}" />
	</div>

			
		

	
	<div class="form-group row">

		<label class="col-md-6 col-form-label"><code
				style="padding-right: 10px; color: black">27.3</code>Reason for not
			receving Throbolysis treatment </label> <label
			class="col-md-2 col-form-label  weight-600"> Yes</label> <label
			class="col-md-2 col-form-label  weight-600"> No</label> <label
			class="col-md-2 col-form-label  weight-600"> Unknown </label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delay in
					arrival to hospital</label>
			</div>

			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio154" value="1"  checked="${CoreObject.delayInArrival == '1' ? 'checked' : '' }"  tabindex="469"
						class="custom-control-input" path="delayInArrival" disabled="true" /> <label
						class="custom-control-label" for="customRadio154"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio155" value="2"  checked="${CoreObject.delayInArrival == '2' ? 'checked' : '' }"  tabindex="470"
						class="custom-control-input" path="delayInArrival" disabled="true" /> <label
						class="custom-control-label" for="customRadio155"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio156" value="3"  checked="${CoreObject.delayInArrival == '3' ? 'checked' : '' }"  tabindex="471"
						class="custom-control-input" path="delayInArrival" disabled="true" /> <label
						class="custom-control-label" for="customRadio156"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delay in
					the imaging time</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio157" value="1"  checked="${CoreObject.delayInImag == '1' ? 'checked' : '' }"  tabindex="472"
						class="custom-control-input" path="delayInImag" disabled="true" /> <label
						class="custom-control-label" for="customRadio157"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio158" value="2"  checked="${CoreObject.delayInImag == '2' ? 'checked' : '' }"  tabindex="473"
						class="custom-control-input" path="delayInImag" disabled="true" /> <label
						class="custom-control-label" for="customRadio158"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio159" value="3"  checked="${CoreObject.delayInImag == '3' ? 'checked' : '' }"  tabindex="474"
						class="custom-control-input" path="delayInImag" disabled="true" /> <label 
						class="custom-control-label" for="customRadio159"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diabetes
					mellitus with h/o previous ischemic stroke</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio160" value="1"  checked="${CoreObject.diabeticsMellitus == '1' ? 'checked' : '' }"  tabindex="475"
						class="custom-control-input" path="diabeticsMellitus" disabled="true" /> <label
						class="custom-control-label" for="customRadio160"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio161" value="2"  checked="${CoreObject.diabeticsMellitus == '2' ? 'checked' : '' }"  tabindex="476"
						class="custom-control-input" path="diabeticsMellitus" disabled="true" /> <label
						class="custom-control-label" for="customRadio161"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio162" value="3"  checked="${CoreObject.diabeticsMellitus == '3' ? 'checked' : '' }"  tabindex="477"
						class="custom-control-input" path="diabeticsMellitus" disabled="true" /> <label
						class="custom-control-label" for="customRadio162"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Onset of
					symptoms unknown to decide on treatment
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;initiation</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio163" value="1"  checked="${CoreObject.onsetOfSymp == '1' ? 'checked' : '' }"  tabindex="478"
						class="custom-control-input" path="onsetOfSymp" disabled="true" /> <label
						class="custom-control-label" for="customRadio163"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio164" value="2"  checked="${CoreObject.onsetOfSymp == '2' ? 'checked' : '' }"  tabindex="479"
						class="custom-control-input" path="onsetOfSymp" disabled="true" /> <label
						class="custom-control-label" for="customRadio164"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio165" value="3"   checked="${CoreObject.onsetOfSymp == '3' ? 'checked' : '' }"  tabindex="480"
						class="custom-control-input" path="onsetOfSymp" disabled="true" /> <label
						class="custom-control-label" for="customRadio165"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SBP &gt;
					185 or DBP &gt; 110mmHg</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio166" value="1"  checked="${CoreObject.sbp == '1' ? 'checked' : '' }"  tabindex="481"
						class="custom-control-input" path="sbp" disabled="true" /> <label
						class="custom-control-label" for="customRadio166"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio167" value="2"   checked="${CoreObject.sbp == '2' ? 'checked' : '' }"  tabindex="482"
						class="custom-control-input" path="sbp" disabled="true" /> <label
						class="custom-control-label" for="customRadio167"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio168" value="3"   checked="${CoreObject.sbp == '3' ? 'checked' : '' }"  tabindex="483"
						class="custom-control-input" path="sbp" disabled="true" /> <label
						class="custom-control-label" for="customRadio168"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Glucose
					&lt; 50 or &gt; 400 mg/dl</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio169" value="1"   checked="${CoreObject.glucose == '1' ? 'checked' : '' }"  tabindex="484"
						class="custom-control-input" path="glucose" disabled="true" /> <label
						class="custom-control-label" for="customRadio169"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio170" value="2"   checked="${CoreObject.glucose == '2' ? 'checked' : '' }"  tabindex="485"
						class="custom-control-input" path="glucose" disabled="true" /> <label
						class="custom-control-label" for="customRadio170"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio171" value="3"   checked="${CoreObject.glucose == '3' ? 'checked' : '' }"   tabindex="486"
						class="custom-control-input" path="glucose" disabled="true" /> <label
						class="custom-control-label" for="customRadio171"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Stroke
					severity-NIHSS &ge; 22</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio172" value="1"   checked="${CoreObject.strokeSeverity == '1' ? 'checked' : '' }"  tabindex="487"
						class="custom-control-input" path="strokeSeverity" disabled="true" /> <label
						class="custom-control-label" for="customRadio172"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio173" value="2"   checked="${CoreObject.strokeSeverity == '2' ? 'checked' : '' }"  tabindex="488"
						class="custom-control-input" path="strokeSeverity" disabled="true" /> <label
						class="custom-control-label" for="customRadio173"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio174" value="3"   checked="${CoreObject.strokeSeverity == '3' ? 'checked' : '' }"  tabindex="489"
						class="custom-control-input" path="strokeSeverity" disabled="true" /> <label 
						class="custom-control-label" for="customRadio174"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Suspicion
					of subarachnoid haemorrhage</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio175" value="1" checked="${CoreObject.suspichaemorrhage == '1' ? 'checked' : '' }"  tabindex="490"
						class="custom-control-input" path="suspichaemorrhage" disabled="true" /> <label
						class="custom-control-label" for="customRadio175"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio176" value="2" checked="${CoreObject.suspichaemorrhage == '2' ? 'checked' : '' }"  tabindex="491"
						class="custom-control-input" path="suspichaemorrhage" disabled="true" /> <label
						class="custom-control-label" for="customRadio176"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio177" value="3" checked="${CoreObject.suspichaemorrhage == '3' ? 'checked' : '' }"  tabindex="492"
						class="custom-control-input" path="suspichaemorrhage" disabled="true" /> <label
						class="custom-control-label" for="customRadio177"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CT
					findings of major infarct signs&minus;&gt; 50% involvement of
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MCA territory</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio178" value="1" checked="${CoreObject.mcaTerritory == '1' ? 'checked' : '' }"  tabindex="493"
						class="custom-control-input" path="mcaTerritory" disabled="true" /> <label
						class="custom-control-label" for="customRadio178"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio179" value="2"  checked="${CoreObject.mcaTerritory == '2' ? 'checked' : '' }"  tabindex="494"
						class="custom-control-input" path="mcaTerritory" disabled="true" /> <label
						class="custom-control-label" for="customRadio179"> </label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio180" value="3"  checked="${CoreObject.mcaTerritory == '3' ? 'checked' : '' }"  tabindex="495"
						class="custom-control-input" path="mcaTerritory" disabled="true" /> <label
						class="custom-control-label" for="customRadio180"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seizure at
					onset</label>
			</div>

			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio181" value="1" checked="${CoreObject.seizure == '1' ? 'checked' : '' }"  tabindex="496"
						class="custom-control-input" path="seizure" disabled="true" /> <label
						class="custom-control-label" for="customRadio181"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio182" value="2" checked="${CoreObject.seizure == '2' ? 'checked' : '' }"  tabindex="497"
						class="custom-control-input" path="seizure" disabled="true" /> <label
						class="custom-control-label" for="customRadio182"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio183" value="3" checked="${CoreObject.seizure == '3' ? 'checked' : '' }"   tabindex="498"
						class="custom-control-input" path="seizure" disabled="true" /> <label
						class="custom-control-label" for="customRadio183"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Recent
					surgery/trauma <span class="italic"><font size="2">(&lt;
							14 days)</font></span>
				</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio184" value="1"  checked="${CoreObject.surgery_trauma == '1' ? 'checked' : '' }"  tabindex="499"
						class="custom-control-input" path="surgery_trauma" disabled="true" /> <label
						class="custom-control-label" for="customRadio184"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio185" value="2"  checked="${CoreObject.surgery_trauma == '2' ? 'checked' : '' }"  tabindex="500"
						class="custom-control-input" path="surgery_trauma" disabled="true" /> <label
						class="custom-control-label" for="customRadio185"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio186" value="3"  checked="${CoreObject.surgery_trauma == '3' ? 'checked' : '' }"  tabindex="501"
						class="custom-control-input" path="surgery_trauma" disabled="true" /> <label
						class="custom-control-label" for="customRadio186"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Recent
					intracranial or spinal surgery,head trauma <span class="italic"><font
						size="2">(&lt; 3
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;months)</font></span>
				</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio187" value="1" checked="${CoreObject.intracranial == '1' ? 'checked' : '' }"  tabindex="502"
						class="custom-control-input" path="intracranial" disabled="true" /> <label
						class="custom-control-label" for="customRadio187"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio188" value="2" checked="${CoreObject.intracranial == '2' ? 'checked' : '' }"  tabindex="503"
						class="custom-control-input" path="intracranial" disabled="true" /> <label 
						class="custom-control-label" for="customRadio188"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio189" value="3"  checked="${CoreObject.intracranial == '3' ? 'checked' : '' }"  tabindex="504"
						class="custom-control-input" path="intracranial" disabled="true" /> <label
						class="custom-control-label" for="customRadio189"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;History of
					intracranial hemorrhage/brain
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aneurysm/vascular
					malformation/brain tumor</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio190" value="1" checked="${CoreObject.historyOfintracranial == '1' ? 'checked' : '' }"  tabindex="505"
						class="custom-control-input" path="historyOfintracranial" disabled="true" /> <label
						class="custom-control-label" for="customRadio190"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio191" value="2" checked="${CoreObject.historyOfintracranial == '2' ? 'checked' : '' }"  tabindex="506"
						class="custom-control-input" path="historyOfintracranial" disabled="true" /> <label
						class="custom-control-label" for="customRadio191"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio192" value="3" checked="${CoreObject.historyOfintracranial == '3' ? 'checked' : '' }"  tabindex="507"
						class="custom-control-input" path="historyOfintracranial" disabled="true" /> <label
						class="custom-control-label" for="customRadio192"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Active
					internal bleeding <span class="italic"><font size="2">(within
							last 3 weeks)</font></span>
				</label>
			</div>

			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio193" value="1"  checked="${CoreObject.internalBleeding == '1' ? 'checked' : '' }"  tabindex="508"
						class="custom-control-input" path="internalBleeding" disabled="true" /> <label
						class="custom-control-label" for="customRadio193"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio194" value="2"  checked="${CoreObject.internalBleeding == '2' ? 'checked' : '' }"  tabindex="509"
						class="custom-control-input" path="internalBleeding" disabled="true" /> <label
						class="custom-control-label" for="customRadio194"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio195" value="3"  checked="${CoreObject.internalBleeding == '3' ? 'checked' : '' }"  tabindex="510"
						class="custom-control-input" path="internalBleeding" disabled="true" /> <label
						class="custom-control-label" for="customRadio195"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Platelets
					&lt; 100,000&#8725;PTT &gt; 40 sec after heparin use&#8725;PT &gt;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15 or INR1.7&#8725;known
					bleeding diathesis</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio196" value="1"  checked="${CoreObject.platelets == '1' ? 'checked' : '' }"  tabindex="511"
						class="custom-control-input" path="platelets" disabled="true" /> <label
						class="custom-control-label" for="customRadio196"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio197" value="2"  checked="${CoreObject.platelets == '2' ? 'checked' : '' }"  tabindex="512"
						class="custom-control-input" path="platelets" disabled="true" /> <label
						class="custom-control-label" for="customRadio197"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio198" value="3" checked="${CoreObject.platelets == '3' ? 'checked' : '' }"  tabindex="513"
						class="custom-control-input" path="platelets" disabled="true" /> <label
						class="custom-control-label" for="customRadio198"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Left heart
					thrombus</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio199" value="1" checked="${CoreObject.leftHeartthrombus == '1' ? 'checked' : '' }"  tabindex="514"
						class="custom-control-input" path="leftHeartthrombus" disabled="true" /> <label
						class="custom-control-label" for="customRadio199"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio200" value="2" checked="${CoreObject.leftHeartthrombus == '2' ? 'checked' : '' }"  tabindex="515"
						class="custom-control-input" path="leftHeartthrombus" disabled="true" /> <label
						class="custom-control-label" for="customRadio200"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio201" value="3"  checked="${CoreObject.leftHeartthrombus == '3' ? 'checked' : '' }"  tabindex="516"
						class="custom-control-input" path="leftHeartthrombus" disabled="true" /> <label
						class="custom-control-label" for="customRadio201"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Increased
					risk of bleeding</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio202" value="1" checked="${CoreObject.increasedBleeding == '1' ? 'checked' : '' }"  tabindex="517"
						class="custom-control-input" path="increasedBleeding" disabled="true" /> <label
						class="custom-control-label" for="customRadio202"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio203" value="2" checked="${CoreObject.increasedBleeding == '2' ? 'checked' : '' }"  tabindex="518"
						class="custom-control-input" path="increasedBleeding" disabled="true" /> <label
						class="custom-control-label" for="customRadio203"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio204" value="3" checked="${CoreObject.increasedBleeding == '3' ? 'checked' : '' }"  tabindex="519"
						class="custom-control-input" path="increasedBleeding" disabled="true" /> <label
						class="custom-control-label" for="customRadio204"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Severe
					comorbid disease or condition</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio205" value="1"  checked="${CoreObject.severeComorbid == '1' ? 'checked' : '' }"  tabindex="520"
						class="custom-control-input" path="severeComorbid" disabled="true" /> <label
						class="custom-control-label" for="customRadio205"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio206" value="2"  checked="${CoreObject.severeComorbid == '2' ? 'checked' : '' }"  tabindex="521"
						class="custom-control-input" path="severeComorbid" disabled="true" /> <label
						class="custom-control-label" for="customRadio206"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio207" value="3"  checked="${CoreObject.severeComorbid == '3' ? 'checked' : '' }"  tabindex="522"
						class="custom-control-input" path="severeComorbid" disabled="true" /> <label
						class="custom-control-label" for="customRadio207"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Stroke
					rapidly improving</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio208" value="1" checked="${CoreObject.strokeRapidly == '1' ? 'checked' : '' }"  tabindex="523"
						class="custom-control-input" path="strokeRapidly" disabled="true" /> <label
						class="custom-control-label" for="customRadio208"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio209" value="2" checked="${CoreObject.strokeRapidly == '2' ? 'checked' : '' }"  tabindex="524"
						class="custom-control-input" path="strokeRapidly" disabled="true" /> <label
						class="custom-control-label" for="customRadio209"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio210" value="3" checked="${CoreObject.strokeRapidly == '3' ? 'checked' : '' }"  tabindex="525"
						class="custom-control-input" path="strokeRapidly" disabled="true" /> <label
						class="custom-control-label" for="customRadio210"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Medicine
					Not Available</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio211" value="1" checked="${CoreObject.mediNotAvai == '1' ? 'checked' : '' }"  tabindex="526"
						class="custom-control-input" path="mediNotAvai" disabled="true" /> <label
						class="custom-control-label" for="customRadio211"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio212" value="2" checked="${CoreObject.mediNotAvai == '2' ? 'checked' : '' }"  tabindex="527"
						class="custom-control-input" path="mediNotAvai" disabled="true" /> <label
						class="custom-control-label" for="customRadio212"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio213" value="3" checked="${CoreObject.mediNotAvai == '3' ? 'checked' : '' }"  tabindex="528"
						class="custom-control-input" path="mediNotAvai" disabled="true" /> <label
						class="custom-control-label" for="customRadio213"> </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient
					Couldnot afford medicine</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio214" value="1" checked="${CoreObject.couldNotAfford == '1' ? 'checked' : '' }"  tabindex="529"
						class="custom-control-input" path="couldNotAfford" disabled="true" /> <label
						class="custom-control-label" for="customRadio214"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio215" value="2" checked="${CoreObject.couldNotAfford == '2' ? 'checked' : '' }"  tabindex="530"
						class="custom-control-input" path="couldNotAfford" disabled="true" /> <label 
						class="custom-control-label" for="customRadio215"> </label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio216" value="3" checked="${CoreObject.couldNotAfford == '3' ? 'checked' : '' }"  tabindex="531"
						class="custom-control-input" path="couldNotAfford" disabled="true" /> <label
						class="custom-control-label" for="customRadio216"> </label>

				</div>
			</div>

		</div>
	</div>
</body>
</html>