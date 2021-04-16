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
		$("#TimeAmPm5").click(
				function() {
					$("#firstCTbrainTime").val(
							$("#Timehr5").val() + ":" + $("#TimeMn5").val()
									+ " " + $("#TimeAmPm5").val())
				});
		if ($("#firstCTbrainTime").val() != "") {
			var str = $("#firstCTbrainTime").val();
			$("#Timehr5").val(str.substring(0, 2));
			$("#TimeMn5").val(str.substring(3, 5));
			$("#TimeAmPm5 option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	
	
	$(function() {
		$("#MriTimeAmPm").click(
				function() {
					$("#mriBrainTime").val(
							$("#MriTimehr").val() + ":" + $("#MriTimeMn").val()
									+ " " + $("#MriTimeAmPm").val())
				});
		if ($("#mriBrainTime").val() != "") {
			var str = $("#mriBrainTime").val();
			$("#MriTimehr").val(str.substring(0, 2));
			$("#MriTimeMn").val(str.substring(3, 5));
			$("#MriTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	
	$(function() {
		$("#AngTimeAmPm").click(
				function() {
					$("#angioCTTime").val(
							$("#AngTimehr").val() + ":" + $("#AngTimeMn").val()
									+ " " + $("#AngTimeAmPm").val())
				});
		if ($("#angioCTTime").val() != "") {
			var str = $("#AngBrainTime").val();
			$("#AngTimehr").val(str.substring(0, 2));
			$("#AngTimeMn").val(str.substring(3, 5));
			$("#AngTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	
	$(function() {
		$("#CtTimeAmPm").click(
				function() {
					$("#perfusionTime").val(
							$("#CtTimehr").val() + ":" + $("#CtTimeMn").val()
									+ " " + $("#CtTimeAmPm").val())
				});
		if ($("#perfusionTime").val() != "") {
			var str = $("#CtBrainTime").val();
			$("#CtTimehr").val(str.substring(0, 2));
			$("#CtTimeMn").val(str.substring(3, 5));
			$("#CtTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	$(function() {
		$("#MraTimeAmPm").click(
				function() {
					$("#angioMRITime").val(
							$("#MraTimehr").val() + ":" + $("#MraTimeMn").val()
									+ " " + $("#MraTimeAmPm").val())
				});
		if ($("#angioMRITime").val() != "") {
			var str = $("#MriBrainTime").val();
			$("#MraTimehr").val(str.substring(0, 2));
			$("#MraTimeMn").val(str.substring(3, 5));
			$("#MraTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	
	
	
	
	$(function() {
		$("#CarTimeAmPm").click(
				function() {
					$("#carotidTime").val(
							$("#CarTimehr").val() + ":" + $("#CarTimeMn").val()
									+ " " + $("#CarTimeAmPm").val())
				});
		if ($("#carotidTime").val() != "") {
			var str = $("#CarBrainTime").val();
			$("#CarTimehr").val(str.substring(0, 2));
			$("#CarTimeMn").val(str.substring(3, 5));
			$("#CarTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	$(function() {
		$("#EcgTimeAmPm").click(
				function() {
					$("#ecgTime").val(
							$("#EcgTimehr").val() + ":" + $("#EcgTimeMn").val()
									+ " " + $("#EcgTimeAmPm").val())
				});
		if ($("#ecgTime").val() != "") {
			var str = $("#EcgBrainTime").val();
			$("#EcgTimehr").val(str.substring(0, 2));
			$("#EcgTimeMn").val(str.substring(3, 5));
			$("#EcgTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	

	$(function() {
		$("#TteTimeAmPm").click(
				function() {
					$("#tteTime").val(
							$("#TteTimehr").val() + ":" + $("#TteTimeMn").val()
									+ " " + $("#TteTimeAmPm").val())
				});
		if ($("#tteTime").val() != "") {
			var str = $("#TteBrainTime").val();
			$("#TteTimehr").val(str.substring(0, 2));
			$("#TteTimeMn").val(str.substring(3, 5));
			$("#TteTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	
	
	$(function() {
		$("#TraTimeAmPm").click(
				function() {
					$("#transesopaghealTime").val(
							$("#TraTimehr").val() + ":" + $("#TraTimeMn").val()
									+ " " + $("#TraTimeAmPm").val())
				});
		if ($("#transesopaghealTime").val() != "") {
			var str = $("#TraBrainTime").val();
			$("#TraTimehr").val(str.substring(0, 2));
			$("#TraTimeMn").val(str.substring(3, 5));
			$("#TraTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
</script>
</head>
<body>
	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">14.2</code>Other Clinical
			features</label>

	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetDizziness"
						tabindex="182" value="a" id="customCheck1-137"
						checked="${CoreObject.clinFetDizziness == 'a' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-137">
						Dizziness,vertigo</label>
				</div>
			</div>

			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetLocalized"
						tabindex="183" value="b" id="customCheck1-138"
						checked="${CoreObject.clinFetLocalized == 'b' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-138">
						Localized headache</label>
				</div>
			</div>

			<div class="col-md-3"></div>


		</div>
	</div>






	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetBlurred"
						tabindex="184" value="c" id="customCheck1-139"
						checked="${CoreObject.clinFetBlurred == 'c' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-139">
						blurred vision of both eyes</label>
				</div>
			</div>

			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetDiplopia"
						tabindex="185" value="d" id="customCheck1-140"
						checked="${CoreObject.clinFetDiplopia == 'd' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-140">
						Diplopia</label>
				</div>
			</div>

			<div class="col-md-3"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetDysart"
						tabindex="186" value="e" id="customCheck1-141"
						checked="${CoreObject.clinFetDysart == 'e' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-141">
						Dysarthria<span style:size="2" ; class="italic">(slurred
							speech)</span>
					</label>
				</div>
			</div>

			<div class="col-md-6">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetImpaired"
						tabindex="187" value="f" id="customCheck1-142"
						checked="${CoreObject.clinFetImpaired == 'f' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-142">
						Impaired congnitive function<span style:size="2" ; class="italic">(inclued
							confusion)</span>
					</label>
				</div>
			</div>

			<div class="col-md-1"></div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetImpaConsc"
						tabindex="188" value="g" id="customCheck1-143"
						checked="${CoreObject.clinFetImpaConsc == 'g' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-143">
						Impaired consciousness</label>
				</div>
			</div>

			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetSeizures"
						tabindex="189" value="h" id="customCheck1-144"
						checked="${CoreObject.clinFetSeizures == 'h' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-144">
						Seizures</label>
				</div>
			</div>

			<div class="col-md-3"></div>


		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetDyspagia"
						tabindex="190" value="i" id="customCheck1-145"
						checked="${CoreObject.clinFetDyspagia == 'i' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-145">
						Dysphagia</label>
				</div>
			</div>



			<div class="col-md-7"></div>


		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">15.1</code>Stroke severity
			score at Reporting Institution<span style:size="2" ; class="italic">(Record
				score for individual scale)</span></label>

	</div>


	<div class="form-group">
		<div class=" row">
			<div class="col-md-1"></div>
			<div class="col-md-6 ">
				<label class="col-form-label">Level of consciousness<span
					style:size="2" ; class="italic">(0-3)</span>
				</label>
			</div>

			<div class="col-md-1 ">
				<form:input class="form-control" type="text" id="consLevel"
					tabindex="191" path="consciousnessLevel"
					value="${CoreObject.consciousnessLevel}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label">LOC Questions<span
					style:size="2" ; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="192" path="quesOfLOC" value="${CoreObject.quesOfLOC}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> LOC Commands<span
					style:size="2" ; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="193" path="commLOC" value="${CoreObject.commLOC}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Best gaze<span style:size="2"
					; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="194" path="bestGaze" value="${CoreObject.bestGaze}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Visual feilds<span
					style:size="2" ; class="italic">(0-3)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="195" path="visualFeilds"
					value="${CoreObject.visualFeilds}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Facial palsy<span
					style:size="2" ; class="italic">(0-3)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="196" path="palsy" value="${CoreObject.palsy}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Motor arm<span style:size="2"
					; class="italic">(0-4)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="197" path="motorArm" value="${CoreObject.motorArm}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Motor leg<span style:size="2"
					; class="italic">(0-4)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="198" path="motorLeg" value="${CoreObject.motorLeg}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Limb ataxia<span
					style:size="2" ; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="199" path="limbAtaxia" value="${CoreObject.limbAtaxia}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Sensory<span style:size="2"
					; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="200" path="sensory" value="${CoreObject.sensory}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Best language<span
					style:size="2" ; class="italic">(0-3)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="201" path="bestLang" value="${CoreObject.bestLang}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Dysarthria<span
					style:size="2" ; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="202" path="dysarthria" value="${CoreObject.dysarthria}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Extinction and inattention<span
					style:size="2" ; class="italic">(0-2)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="203" path="inattention" value="${CoreObject.inattention}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> NIHSS Score<span
					style:size="2" ; class="italic">(0-42)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="finding1"
					tabindex="204" path="scoreOfNIHSS"
					value="${CoreObject.scoreOfNIHSS}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">15.2</code>Status of the
			person prior to occurence of stroke<span style:size="2"
			; class="italic">(pre morbid modified Rankin scale)</span></label>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label weight-600"> Symptoms</label> <label
			class="col-md-3 col-form-label weight-600"> Score</label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label"> Patient doesn't have
			any symptoms<span style:size="2" ; class="italic">(0)</span>
		</label>
		<div class="col-md-3">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio390" value="0" tabindex="205"
					class="custom-control-input" path="preMorbidRankin"
					checked="${CoreObject.preMorbidRankin == '0' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio390"> <font>
				</font>
				</label>


			</div>
		</div>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label"> Patient is able to
			carry out all usual duties and activites without any assistance<span
			style:size="2" ; class="italic">(1)</span>
		</label>
		<div class="col-md-3">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio391" value="1" tabindex="206"
					class="custom-control-input" path="preMorbidRankin"
					checked="${CoreObject.preMorbidRankin == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio391"> <font>
				</font>
				</label>


			</div>
		</div>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label"> Patient can look after
			own affairs without assistance<span style:size="2" ; class="italic">(2)</span>
		</label>
		<div class="col-md-3">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio392" value="2" tabindex="207"
					class="custom-control-input" path="preMorbidRankin"
					checked="${CoreObject.preMorbidRankin == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio392"> <font>
				</font>
				</label>


			</div>
		</div>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label"> Patient requires some
			assistance in doing activities and can walk by himself or herself
			without any support<span style:size="2" ; class="italic">(3)</span>
		</label>
		<div class="col-md-3">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio393" value="3" tabindex="208"
					class="custom-control-input" path="preMorbidRankin"
					checked="${CoreObject.preMorbidRankin == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio393"> <font>
				</font>
				</label>


			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label"> Patient needs
			assistance for walking and attending own needs<span style:size="2"
			; class="italic">(4)</span>
		</label>
		<div class="col-md-3">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio394" value="4" tabindex="209"
					class="custom-control-input" path="preMorbidRankin"
					checked="${CoreObject.preMorbidRankin == '4' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio394"> <font>
				</font>
				</label>


			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-8 col-form-label"> Patient is
			bedridden/incontinent and requires contant care<span style:size="2"
			; class="italic">(5)</span>
		</label>
		<div class="col-md-3">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio395" value="5" tabindex="210"
					class="custom-control-input" path="preMorbidRankin"
					checked="${CoreObject.preMorbidRankin == '5' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio395"> <font>
				</font>
				</label>


			</div>
		</div>

	</div>


	<div class="form-group row">

		<label class="col-md-3 col-form-label weight-600"><code
				style="padding-right: 10px; color: black">16</code>Diagnostic
			procedure</label> <label class="col-md-1 col-form-label weight-600"  style="font-size:14px;">
			Yes</label> <label class="col-md-1 col-form-label weight-600"  style="font-size:13px;"> No</label> <label
			class="col-md-1 col-form-label weight-600"  style="font-size:14px;"> Unknown</label> <label
			class="col-md-2 col-form-label weight-600"  style="font-size:14px;"> Imaging Date</label> <label
			class="col-md-2 col-form-label weight-600"  style="font-size:14px;"> Time</label>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> First CT brain </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio12" value="1" tabindex="211"
					class="custom-control-input" path="firstCTbrain"
					onClick="enable4()"
					checked="${CoreObject.firstCTbrain == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio12"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio13" value="2" tabindex="212"
					class="custom-control-input" path="firstCTbrain"
					onClick="enable4()"
					checked="${CoreObject.firstCTbrain == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio13"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio14" value="3" tabindex="213"
					class="custom-control-input" path="firstCTbrain"
					onClick="enable4()"
					checked="${CoreObject.firstCTbrain == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio14"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="214" path="firstCTbrainDate"
				value="${CoreObject.firstCTbrainDate}" maxlength="0" placeholder=""
				id="imagingdate" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="firstCTbrainTime" tabindex="215"
				maxlength="4" value="${CoreObject.firstCTbrainTime}"
				id="imagingtime" disabled="true" /> --%>
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="Timehr5"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TimeMn5"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TimeAmPm5" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="firstCTbrainTime" path="firstCTbrainTime"
			value="${CoreObject.firstCTbrainTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label" for="imagingFind1">Imaging
			Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control  " type="text" id="finding"
				tabindex="216" path="imagingFind1"
				value="${CoreObject.imagingFind1}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> MRI brain </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio15" value="1" tabindex="217"
					class="custom-control-input" path="mriBrain" onClick="enable5()"
					checked="${CoreObject.mriBrain == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio15"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio16" value="2" tabindex="218"
					class="custom-control-input" path="mriBrain" onClick="enable5()"
					checked="${CoreObject.mriBrain == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio16"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio17" value="3" tabindex="219"
					class="custom-control-input" path="mriBrain" onClick="enable5()"
					checked="${CoreObject.mriBrain == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio17"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				path="mriBrainDate" value="${CoreObject.mriBrainDate}" 
				tabindex="220" placeholder="" id="imagingdate1" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="mriBrainTime"
				tabindex="221" maxlength="4" value="${CoreObject.mriBrainTime}"
				id="imagingtime1" disabled="true" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="MriTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="MriTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="MriTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="mriBrainTime" path="mriBrainTime"
			value="${CoreObject.mriBrainTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding2"
				tabindex="222" path="imagingFind2"
				value="${CoreObject.imagingFind2}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> CT-Angio </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio18" value="1" tabindex="223"
					class="custom-control-input" path="angioCT" onClick="enable6()"
					checked="${CoreObject.angioCT == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio18"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio19" value="2" tabindex="224"
					class="custom-control-input" path="angioCT" onClick="enable6()"
					checked="${CoreObject.angioCT == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio19"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio20" value="3" tabindex="225"
					class="custom-control-input" path="angioCT" onClick="enable6()"
					checked="${CoreObject.angioCT == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio20"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="226" path="angioCTDate" value="${CoreObject.angioCTDate}"
				maxlength="0" placeholder="" id="imagingdate2" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="angioCTTime"
				tabindex="227" maxlength="4" value="${CoreObject.angioCTTime}"
				id="imagingtime2" disabled="true" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="AngTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="AngTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="AngTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="angioCTTime" path="angioCTTime"
			value="${CoreObject.angioCTTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding3"
				path="imagingFind3" value="${CoreObject.imagingFind3}"
				tabindex="228" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> CT-Perfusion </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio21" value="1" tabindex="229"
					class="custom-control-input" path="perfusion" onClick="enable7()"
					checked="${CoreObject.perfusion == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio21"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio22" value="2" tabindex="230"
					class="custom-control-input" path="perfusion" onClick="enable7()"
					checked="${CoreObject.perfusion == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio22"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio23" value="3" tabindex="231"
					class="custom-control-input" path="perfusion" onClick="enable7()"
					checked="${CoreObject.perfusion == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio23"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="232" path="perfusionDate"
				value="${CoreObject.perfusionDate}" maxlength="0" placeholder=""
				id="imagingdate3" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="perfusionTime"
				tabindex="233" maxlength="4" value="${CoreObject.perfusionTime}"
				id="imagingtime3" disabled="true" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="CtTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="CtTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="CtTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="perfusionTime" path="perfusionTime"
			value="${CoreObject.perfusionTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding4"
				tabindex="234" path="imagingFind4"
				value="${CoreObject.imagingFind4}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> MRI-Angio </label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio24" value="1" tabindex="235"
					class="custom-control-input" path="angioMRI" onClick="enable8()"
					checked="${CoreObject.angioMRI == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio24"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio25" value="2" tabindex="236"
					class="custom-control-input" path="angioMRI" onClick="enable8()"
					checked="${CoreObject.angioMRI == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio25"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1	">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio26" value="3" tabindex="237"
					class="custom-control-input" path="angioMRI" onClick="enable8()"
					checked="${CoreObject.angioMRI == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio26"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="238" path="angioMRIDate"
				value="${CoreObject.angioMRIDate}"  placeholder=""
				id="imagingdate4" disabled="true" />
		</div>
		<div class=" col-md-3">
		<%-- 	<form:input type="text" class="form-control " path="angioMRITime"
				tabindex="239" maxlength="4" value="${CoreObject.angioMRITime}"
				id="imagingtime4" disabled="true" /> --%>
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="MraTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="MraTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="MraTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="angioMRITime" path="angioMRITime"
			value="${CoreObject.angioMRITime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding5"
				tabindex="240" path="imagingFind5"
				value="${CoreObject.imagingFind5}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Carotid ultrasound </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio27" value="1" tabindex="241"
					class="custom-control-input" path="carotid" onClick="enable37()"
					checked="${CoreObject.carotid == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio27"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio28" value="2" tabindex="242"
					class="custom-control-input" path="carotid" onClick="enable37()"
					checked="${CoreObject.carotid == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio28"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio29" value="3" tabindex="243"
					class="custom-control-input" path="carotid" onClick="enable37()"
					checked="${CoreObject.carotid == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio29"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="244" path="carotidDate" value="${CoreObject.carotidDate}"
				 placeholder="" id="imagingdate5" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="carotidTime"
				tabindex="245" maxlength="4" value="${CoreObject.carotidTime}"
				id="imagingtime5" disabled="true" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="CarTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="CarTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="CarTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="carotidTime" path="carotidTime"
			value="${CoreObject.carotidTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> ECG </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio30" value="1" tabindex="246"
					class="custom-control-input" path="ecg" onClick="enable38()"
					checked="${CoreObject.ecg == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio30"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio31" value="2" tabindex="247"
					class="custom-control-input" path="ecg" onClick="enable38()"
					checked="${CoreObject.ecg == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio31"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio32" value="3" tabindex="248"
					class="custom-control-input" path="ecg" onClick="enable38()"
					checked="${CoreObject.ecg == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio32"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat" 
				tabindex="249" path="ecgDate" value="${CoreObject.ecgDate}"
				 id="imagingdate6" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="ecgTime"
				tabindex="250" maxlength="4" value="${CoreObject.ecgTime}"
				id="imagingtime6" disabled="true" /> --%>
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="EcgTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="EcgTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="EcgTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="ecgTime" path="ecgTime"
			value="${CoreObject.ecgTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Transthoracic
			Echoradiogram<span style:size="2" ; class="italic">(TTE)</span>
		</label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio33" value="1" tabindex="251"
					class="custom-control-input" path="tte" onClick="enable39()"
					checked="${CoreObject.tte == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio33"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio34" value="2" tabindex="252"
					class="custom-control-input" path="tte" onClick="enable39()"
					checked="${CoreObject.tte == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio34"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio35" value="3" tabindex="253"
					class="custom-control-input" path="tte" onClick="enable39()"
					checked="${CoreObject.tte == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio35"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="254" path="tteDate" value="${CoreObject.tteDate}"
				id="imagingdate7" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " path="tteTime"
				tabindex="255" maxlength="4" value="${CoreObject.tteTime}"
				id="imagingtime7" disabled="true" /> --%>
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="TteTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TteTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TteTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="tteTime" path="tteTime"
			value="${CoreObject.tteTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Transesopagheal Echo,
			&nbsp;Holter </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio36" value="1" tabindex="256"
					class="custom-control-input" path="transesopagheal"
					onClick="enable40()"
					checked="${CoreObject.transesopagheal == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio36"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio37" value="2" tabindex="257"
					class="custom-control-input" path="transesopagheal"
					onClick="enable40()"
					checked="${CoreObject.transesopagheal == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio37"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio38" value="3" tabindex="258"
					class="custom-control-input" path="transesopagheal"
					onClick="enable40()"
					checked="${CoreObject.transesopagheal == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio38"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="259" path="transesopaghealDate"
				value="${CoreObject.transesopaghealDate}" 
				 id="imagingdate8" disabled="true" />
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " tabindex="260"
				path="transesopaghealTime" maxlength="4"
				value="${CoreObject.transesopaghealTime}" id="imagingtime8"
				disabled="true" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="TraTimehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TraTimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TraTimeAmPm" name="deathTimeAmPm">

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		 <form:input type="hidden" id="transesopaghealTime" path="transesopaghealTime"
			value="${CoreObject.transesopaghealTime}" /> 
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Others<span
			style:size="2" ; class="italic">(specify)</span>
		</label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="name2"
				tabindex="261" path="othersforDiagnostic"
				value="${CoreObject.othersforDiagnostic}" maxlength="250" />
		</div>
		<div class="col-md-2"></div>
	</div>
	<!-- <script type="text/javascript">
	(function($) {
		  $.fn.inputFilter = function(inputFilter) {
		    return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function() {
		      if (inputFilter(this.value)) {
		        this.oldValue = this.value;
		        this.oldSelectionStart = this.selectionStart;
		        this.oldSelectionEnd = this.selectionEnd;
		      } else if (this.hasOwnProperty("oldValue")) {
		        this.value = this.oldValue;
		        this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
		      } else {
		        this.value = "";
		      }
		    });
		  };
		}(jQuery));
	
		$("#consLevel").inputFilter(
				function(value) {
					return /^\d*$/.test(value)
							&& (value === "" || parseInt(value) <= 3);
				});
	</script> -->
</body>
</html>



