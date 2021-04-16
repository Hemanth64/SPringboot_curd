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
							$("#Timehr5").val() + " : " + $("#TimeMn5").val()
									+ " " + $("#TimeAmPm5").val())
				});
		if ($("#firstCTbrainTime").val() != "") {
			var str = $("#firstCTbrainTime").val();
			$("#Timehr5").val(str.substring(0, 2));
			$("#TimeMn5").val($.trim(str.substring(5,8)));
			$("#TimeAmPm5 option[value='" + str.substring(9, 12) + "']").prop(
					'selected', true);
		}
	});

	$(function() {
		$("#MriTimeAmPm").click(
				function() {
					$("#mriBrainTime").val(
							$("#MriTimehr").val() + " : " + $("#MriTimeMn").val()
									+ " " + $("#MriTimeAmPm").val())
				});
		if ($("#mriBrainTime").val() != "") {
			var str = $("#mriBrainTime").val();
			$("#MriTimehr").val(str.substring(0, 2));
			$("#MriTimeMn").val($.trim(str.substring(5,8)));
			$("#MriTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
		}
	});

	$(function() {
		$("#AngTimeAmPm").click(
				function() {
					$("#angioCTTime").val(
							$("#AngTimehr").val() + " : " + $("#AngTimeMn").val()
									+ " " + $("#AngTimeAmPm").val())
				});
		if ($("#angioCTTime").val() != "") {			
			var str = $("#angioCTTime").val();	
			$("#AngTimehr").val(str.substring(0, 2));
			$("#AngTimeMn").val($.trim(str.substring(5,8)));
			$("#AngTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
		}
	});

	$(function() {
		$("#CtTimeAmPm").click(
				function() {
					$("#perfusionTime").val(
							$("#CtTimehr").val() + " : " + $("#CtTimeMn").val()
									+ " " + $("#CtTimeAmPm").val())
				});
		if ($("#perfusionTime").val() != "") {
			var str = $("#perfusionTime").val();
			$("#CtTimehr").val(str.substring(0, 2));
			$("#CtTimeMn").val($.trim(str.substring(5,8)));
			$("#CtTimeAmPm option[value='" + str.substring(9, 12) + "']").prop(
					'selected', true);
		}
	});

	$(function() {
		$("#MraTimeAmPm").click(
				function() {
					$("#angioMRITime").val(
							$("#MraTimehr").val() + " : " + $("#MraTimeMn").val()
									+ " " + $("#MraTimeAmPm").val())
				});
		if ($("#angioMRITime").val() != "") {
			var str = $("#angioMRITime").val();
			$("#MraTimehr").val(str.substring(0, 2));
			$("#MraTimeMn").val($.trim(str.substring(5,8)));
			$("#MraTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
		}
	});

	$(function() {
		$("#CarTimeAmPm").click(
				function() {
					$("#carotidTime").val(
							$("#CarTimehr").val() + " : " + $("#CarTimeMn").val()
									+ " " + $("#CarTimeAmPm").val())
				});
		if ($("#carotidTime").val() != "") {
			var str = $("#carotidTime").val();
			$("#CarTimehr").val(str.substring(0, 2));
			$("#CarTimeMn").val($.trim(str.substring(5,8)));
			$("#CarTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
		}
	});

	$(function() {
		$("#EcgTimeAmPm").click(
				function() {
					$("#ecgTime").val(
							$("#EcgTimehr").val() + " : " + $("#EcgTimeMn").val()
									+ " " + $("#EcgTimeAmPm").val())
				});
		if ($("#ecgTime").val() != "") {
			var str = $("#ecgTime").val();
			$("#EcgTimehr").val(str.substring(0, 2));
			$("#EcgTimeMn").val($.trim(str.substring(5,8)));
			$("#EcgTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
		}
	});

	$(function() {
		$("#TteTimeAmPm").click(
				function() {
					$("#tteTime").val(
							$("#TteTimehr").val() + " : " + $("#TteTimeMn").val()
									+ " " + $("#TteTimeAmPm").val())
				});
		if ($("#tteTime").val() != "") {
			var str = $("#tteTime").val();
			$("#TteTimehr").val(str.substring(0, 2));
			$("#TteTimeMn").val($.trim(str.substring(5,8)));
			$("#TteTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
		}
	});

	$(function() {
		$("#TraTimeAmPm").click(
				function() {
					$("#transesopaghealTime").val(
							$("#TraTimehr").val() + " : " + $("#TraTimeMn").val()
									+ " " + $("#TraTimeAmPm").val())
				});
		if ($("#transesopaghealTime").val() != "") {
			var str = $("#transesopaghealTime").val();
			$("#TraTimehr").val(str.substring(0, 2));
			$("#TraTimeMn").val($.trim(str.substring(5,8)));
			$("#TraTimeAmPm option[value='" + str.substring(9, 12) + "']")
					.prop('selected', true);
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
						tabindex="197" value="a" id="customCheck1-137"
						checked="${CoreObject.clinFetDizziness == 'a' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-137">
						Dizziness,vertigo</label>
				</div>
			</div>

			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetLocalized"
						tabindex="198" value="b" id="customCheck1-138"
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
						tabindex="199" value="c" id="customCheck1-139"
						checked="${CoreObject.clinFetBlurred == 'c' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-139">
						Blurred vision of both eyes</label>
				</div>
			</div>

			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetDiplopia"
						tabindex="200" value="d" id="customCheck1-140"
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
						tabindex="201" value="e" id="customCheck1-141"
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
						tabindex="202" value="f" id="customCheck1-142"
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
						tabindex="203" value="g" id="customCheck1-143"
						checked="${CoreObject.clinFetImpaConsc == 'g' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-143">
						Impaired consciousness</label>
				</div>
			</div>

			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="clinFetSeizures"
						tabindex="204" value="h" id="customCheck1-144"
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
						tabindex="205" value="i" id="customCheck1-145"
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
			score at admission at Reporting Institution<span style:size="2" ; class="italic">(Record
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
				<form:input class="form-control sev_score" type="text" id="consLevel"
					tabindex="206" path="consciousnessLevel"
					value="${CoreObject.consciousnessLevel}"
					onkeypress="return isNumberKey(event)" maxlength="1" />
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
				<form:input class="form-control sev_score" type="text" id="sev_score2"
					tabindex="207" path="quesOfLOC" value="${CoreObject.quesOfLOC}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score3"
					tabindex="208" path="commLOC" value="${CoreObject.commLOC}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score4"
					tabindex="209" path="bestGaze" value="${CoreObject.bestGaze}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> Visual fields<span
					style:size="2" ; class="italic">(0-3)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control sev_score" type="text" id="sev_score5"
					tabindex="210" path="visualFeilds"
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
				<form:input class="form-control sev_score" type="text" id="sev_score6"
					tabindex="211" path="palsy" value="${CoreObject.palsy}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score7"
					tabindex="212" path="motorArm" value="${CoreObject.motorArm}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score8"
					tabindex="213" path="motorLeg" value="${CoreObject.motorLeg}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score9"
					tabindex="214" path="limbAtaxia" value="${CoreObject.limbAtaxia}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score10"
					tabindex="215" path="sensory" value="${CoreObject.sensory}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score11"
					tabindex="216" path="bestLang" value="${CoreObject.bestLang}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score12"
					tabindex="217" path="dysarthria" value="${CoreObject.dysarthria}"
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
				<form:input class="form-control sev_score" type="text" id="sev_score13"
					tabindex="218" path="inattention" value="${CoreObject.inattention}"
					onkeypress="return isNumberKey(event)" maxlength="2" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>
	<hr>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<label class="col-form-label"> NIHSS Score<span
					style:size="2" ; class="italic">(0-42)</span>
				</label>
			</div>

			<div class="col-md-1">
				<form:input class="form-control" type="text" id="scoreOfNIHSS"
					tabindex="219" path="scoreOfNIHSS"
					value="${CoreObject.scoreOfNIHSS}"
					onkeypress="return isNumberKey(event)" maxlength="2" readonly="true" />
			</div>
			<div class="col-md-4"></div>


		</div>
	</div>



<div class="form-group" >

	<div class="row">
		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">15.2</code>Status of the
			person prior to occurence of stroke<span style:size="2"
			; class="italic">(pre morbid modified Rankin scale)</span></label>
	</div>
	
		<div class="row">
		<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label weight-600"> Symptoms</label> <label
				class="col-md-3 col-form-label weight-600"> Score</label>
		</div>
		
		<div class="row ">
			<div class="col-md-1"></div>

			<label class="col-md-8 col-form-label"> Patient doesn't have
				any symptoms<span style:size="2" ; class="italic">(0)</span>
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio390" name="rankSc" value="0" tabindex="220"
						class="custom-control-input btn_rankSc" path="preMorbidRankin"
						checked="${CoreObject.preMorbidRankin == '0' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio390"> <font>
					</font>
					</label>
				</div>
			</div>
		</div>
		
		<div class="row ">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Patient is able to
				carry out all usual duties and activites without any assistance<span
				style:size="2" ; class="italic">(1)</span>
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio391" name="rankSc" value="1" tabindex="221"
						class="custom-control-input btn_rankSc" path="preMorbidRankin"
						checked="${CoreObject.preMorbidRankin == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio391"> <font>
					</font>
					</label>
				</div>
			</div>

		</div>
		
		<div class="row ">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Patient can look
				after own affairs without assistance<span style:size="2"
				; class="italic">(2)</span>
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio392" name="rankSc" value="2" tabindex="222"
						class="custom-control-input btn_rankSc" path="preMorbidRankin"
						checked="${CoreObject.preMorbidRankin == '2' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio392"> <font>
					</font>
					</label>
				</div>
			</div>
		</div>
		
		<div class="row ">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Patient requires some
				assistance in doing activities and can walk by himself or herself
				without any support<span style:size="2" ; class="italic">(3)</span>
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio393" name="rankSc" value="3" tabindex="223"
						class="custom-control-input btn_rankSc" path="preMorbidRankin"
						checked="${CoreObject.preMorbidRankin == '3' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio393"> <font>
					</font>
					</label>
				</div>
			</div>
		</div>
		
		<div class="row ">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Patient needs
				assistance for walking and attending own needs<span style:size="2"
				; class="italic">(4)</span>
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio394" name="rankSc" value="4" tabindex="224"
						class="custom-control-input btn_rankSc" path="preMorbidRankin"
						checked="${CoreObject.preMorbidRankin == '4' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio394"> <font>
					</font>
					</label>
				</div>
			</div>
		</div>
		
		<div class="row ">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Patient is
				bedridden/incontinent and requires constant care<span style:size="2"
				; class="italic">(5)</span>
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio395" name="rankSc" value="5" tabindex="225"
						class="custom-control-input btn_rankSc" path="preMorbidRankin"
						checked="${CoreObject.preMorbidRankin == '5' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio395"> <font>
					</font>
					</label>
				</div>
			</div>
		</div>
		
	
		
		<div class="row">
		<div class="col-md-9"></div>
			<div class="col-md-3">
				<input class="rankScId hide" type="text" id="rankScId" name="rankScId"/>
			</div>
		</div>
		

</div>

	<div class="form-group row">

		<label class="col-md-3 col-form-label weight-600"><code
				style="padding-right: 10px; color: black">16</code>Diagnostic
			procedure</label> <label class="col-md-1 col-form-label weight-600"
			style="font-size: 14px;"> Yes</label> <label
			class="col-md-1 col-form-label weight-600" style="font-size: 13px;">
			No</label> <label class="col-md-1 col-form-label weight-600"
			style="font-size: 14px;"> Unknown</label> <label
			class="col-md-2 col-form-label weight-600" style="font-size: 14px;">
			Imaging Date</label> <label class="col-md-2 col-form-label weight-600"
			style="font-size: 14px;"> Time</label>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> First CT brain </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio12" value="1" tabindex="226"
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
				<form:radiobutton id="customRadio13" value="2" tabindex="227"
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
				<form:radiobutton id="customRadio14" value="3" tabindex="228"
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
				tabindex="229" path="firstCTbrainDate"
				value="${CoreObject.firstCTbrainDate}" maxlength="0" placeholder=""
				id="imagingdate" disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr fcb_time" type="text" id="Timehr5" tabindex="230"
						name="deathTime" value="" maxlength="2" disabled />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn fcb_time" type="text" id="TimeMn5" tabindex="231"
						name="deathTimeMn" value="" maxlength="2" disabled />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control fcb_time" id="TimeAmPm5" name="deathTimeAmPm" tabindex="232" disabled>

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="firstCTbrainTime"
			path="firstCTbrainTime" value="${CoreObject.firstCTbrainTime}" tabindex="233"/>
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label" for="imagingFind1">Imaging
			Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control  " type="text" id="finding"
				tabindex="234" path="imagingFind1"
				value="${CoreObject.imagingFind1}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> MRI-brain </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio15" value="1" tabindex="235"
					class="custom-control-input" path="mriBrain" onClick="enable5()"
					checked="${CoreObject.mriBrain == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio15"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio16" value="2" tabindex="236"
					class="custom-control-input" path="mriBrain" onClick="enable5()"
					checked="${CoreObject.mriBrain == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio16"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio17" value="3" tabindex="237"
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
				tabindex="238" placeholder="" id="imagingdate1" disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="239"
						id="MriTimehr" name="deathTime" value="" maxlength="2" disabled />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="MriTimeMn"  tabindex="240"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="MriTimeAmPm" name="deathTimeAmPm" tabindex="241" disabled>

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="mriBrainTime" path="mriBrainTime" tabindex="242"
			value="${CoreObject.mriBrainTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding2"
				tabindex="243" path="imagingFind2"
				value="${CoreObject.imagingFind2}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> CT-Angio </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio18" value="1" tabindex="244"
					class="custom-control-input" path="angioCT" onClick="enable6()"
					checked="${CoreObject.angioCT == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio18"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio19" value="2" tabindex="245"
					class="custom-control-input" path="angioCT" onClick="enable6()"
					checked="${CoreObject.angioCT == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio19"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio20" value="3" tabindex="246"
					class="custom-control-input" path="angioCT" onClick="enable6()"
					checked="${CoreObject.angioCT == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio20"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="247" path="angioCTDate" value="${CoreObject.angioCTDate}"
				maxlength="0" placeholder="" id="imagingdate2" disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="248"
						id="AngTimehr" name="deathTime" value="" maxlength="2" disabled/>
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="AngTimeMn" tabindex="249"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="AngTimeAmPm" name="deathTimeAmPm" tabindex="250" disabled>

						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="angioCTTime" path="angioCTTime" tabindex="251"
			value="${CoreObject.angioCTTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding3"
				path="imagingFind3" value="${CoreObject.imagingFind3}"
				tabindex="252" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> CT-Perfusion </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio21" value="1" tabindex="253"
					class="custom-control-input" path="perfusion" onClick="enable7()"
					checked="${CoreObject.perfusion == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio21"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio22" value="2" tabindex="254"
					class="custom-control-input" path="perfusion" onClick="enable7()"
					checked="${CoreObject.perfusion == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio22"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio23" value="3" tabindex="255"
					class="custom-control-input" path="perfusion" onClick="enable7()"
					checked="${CoreObject.perfusion == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio23"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="256" path="perfusionDate"
				value="${CoreObject.perfusionDate}" maxlength="0" placeholder=""
				id="imagingdate3" disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" id="CtTimehr"
						name="deathTime" value="" maxlength="2" tabindex="257" disabled/>
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="CtTimeMn" tabindex="258"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="CtTimeAmPm" name="deathTimeAmPm" tabindex="259" disabled>
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="perfusionTime" path="perfusionTime" tabindex="260"
			value="${CoreObject.perfusionTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding4"
				tabindex="261" path="imagingFind4"
				value="${CoreObject.imagingFind4}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> MRI-Angio </label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio24" value="1" tabindex="262"
					class="custom-control-input" path="angioMRI" onClick="enable8()"
					checked="${CoreObject.angioMRI == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio24"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio25" value="2" tabindex="263"
					class="custom-control-input" path="angioMRI" onClick="enable8()"
					checked="${CoreObject.angioMRI == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio25"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1	">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio26" value="3" tabindex="264"
					class="custom-control-input" path="angioMRI" onClick="enable8()"
					checked="${CoreObject.angioMRI == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio26"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="265" path="angioMRIDate"
				value="${CoreObject.angioMRIDate}" placeholder="" id="imagingdate4"
				disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="266"
						id="MraTimehr" name="deathTime" value="" maxlength="2" disabled/>
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="MraTimeMn" tabindex="267"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="MraTimeAmPm" name="deathTimeAmPm" tabindex="268" disabled>
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="angioMRITime" path="angioMRITime" tabindex="269"
			value="${CoreObject.angioMRITime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Imaging Findings: </label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="finding5"
				tabindex="270" path="imagingFind5"
				value="${CoreObject.imagingFind5}" maxlength="100" disabled="true" />
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Carotid ultrasound </label>

		
	<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio27" value="1" tabindex="271" name="carotid"
					class="custom-control-input" path="carotid" onClick="enable37()"
					checked="${CoreObject.carotid == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio27"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio28" value="2" tabindex="272" name="carotid"
					class="custom-control-input" path="carotid" onClick="enable37()"
					checked="${CoreObject.carotid == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio28"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio29" value="3" tabindex="273" name="carotid"
					class="custom-control-input" path="carotid" onClick="enable37()"
					checked="${CoreObject.carotid == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio29"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="274" path="carotidDate" value="${CoreObject.carotidDate}"
				placeholder="" id="imagingdate5" disabled="true" />
		</div>
		<div class=" col-md-3">
		
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="275"
						id="CarTimehr" name="deathTime" value="" maxlength="2" disabled />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="CarTimeMn" tabindex="276"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="CarTimeAmPm" name="deathTimeAmPm" tabindex="277" disabled>
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="carotidTime" path="carotidTime" tabindex="278"
			value="${CoreObject.carotidTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> ECG </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio30" value="1" tabindex="279"
					class="custom-control-input" path="ecg" onClick="enable38()"
					checked="${CoreObject.ecg == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio30"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio31" value="2" tabindex="280"
					class="custom-control-input" path="ecg" onClick="enable38()"
					checked="${CoreObject.ecg == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio31"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio32" value="3" tabindex="281"
					class="custom-control-input" path="ecg" onClick="enable38()"
					checked="${CoreObject.ecg == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio32"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="282" path="ecgDate" value="${CoreObject.ecgDate}"
				id="imagingdate6" disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="283"
						id="EcgTimehr" name="deathTime" value="" maxlength="2" disabled />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="EcgTimeMn" tabindex="284"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="EcgTimeAmPm" name="deathTimeAmPm" tabindex="285" disabled>
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="ecgTime" path="ecgTime" tabindex="286"
			value="${CoreObject.ecgTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Transthoracic
			echocardiogram<span style:size="2" ; class="italic">(TTE)</span>
		</label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio33" value="1" tabindex="287"
					class="custom-control-input" path="tte" onClick="enable39()"
					checked="${CoreObject.tte == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio33"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio34" value="2" tabindex="288"
					class="custom-control-input" path="tte" onClick="enable39()"
					checked="${CoreObject.tte == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio34"> <font>
				</font>
				</label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio35" value="3" tabindex="289"
					class="custom-control-input" path="tte" onClick="enable39()"
					checked="${CoreObject.tte == '3' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio35"> <font>
				</font>
				</label>

			</div>
		</div>
		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat"
				tabindex="290" path="tteDate" value="${CoreObject.tteDate}"
				id="imagingdate7" disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="291"
						id="TteTimehr" name="deathTime" value="" maxlength="2" disabled/>
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="TteTimeMn" tabindex="292"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div> 
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TteTimeAmPm" name="deathTimeAmPm" tabindex="293" disabled>
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="tteTime" path="tteTime" tabindex="294"
			value="${CoreObject.tteTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Transesopagheal Echo,
			&nbsp;Holter </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio36" value="1" tabindex="295"
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
				<form:radiobutton id="customRadio37" value="2" tabindex="296"
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
				<form:radiobutton id="customRadio38" value="3" tabindex="297"
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
				tabindex="298" path="transesopaghealDate"
				value="${CoreObject.transesopaghealDate}" id="imagingdate8"
				disabled="true" />
		</div>
		<div class=" col-md-3">
			
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tim_hr" type="text" tabindex="299"
						id="TraTimehr" name="deathTime" value="" maxlength="2" disabled/>
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tim_mn" type="text" id="TraTimeMn" tabindex="300"
						name="deathTimeMn" value="" maxlength="2" disabled/>
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TraTimeAmPm" name="deathTimeAmPm" tabindex="301" disabled>
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="transesopaghealTime" tabindex="302"
			path="transesopaghealTime" value="${CoreObject.transesopaghealTime}" />
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class=" col-md-2 col-form-label">Others<span
			style:size="2" ; class="italic">(specify)</span>
		</label>
		<div class=" col-md-5">
			<form:input class="form-control" type="text" id="othersforDiagnostic" 
				tabindex="303" path="othersforDiagnostic"
				value="${CoreObject.othersforDiagnostic}" maxlength="250" />
		</div>
		<div class="col-md-2"></div>
	</div>
	<!-- <script type="text/javascrip
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



