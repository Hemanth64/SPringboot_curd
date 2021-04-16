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
		<label
			class="col-md-12 col-form-label  weight-600 text-center alert-info "><code
				style="padding-right: 10px; color: black">VI</code>FOLLOW UP</label>

	</div>
	<div class="form-group row">
		<div class="col-md-3"></div>

		<div class="col-md-4">

			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox id="customRadio413" value="1"
					checked="${CoreObject.followUp == '1' ? 'checked' : '' }"
					tabindex="776" class="custom-control-input" path="followUp"
					onClick="enable33()" />
				<label class="custom-control-label weight-600" for="customRadio413">At
					day 28 after onset of stroke </label>

			</div>
		</div>

		<div class="col-md-1"></div>

		<div class="col-md-4">

			<div class="custom-control custom-checkbox mb-5 pull-right">
				<form:checkbox id="customRadio414" value="2"
					checked="${CoreObject.followUp == '2' ? 'checked' : '' }"
					tabindex="777" class="custom-control-input" path="followUpII"
					onClick="enable34()" />
				<label class="custom-control-label weight-600" for="customRadio414">At
					3 months after onset of stroke</label>

			</div>

		</div>

	</div>
	<div class="form-group row">
		<label class=" col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">38.1</code>Due date of
			follow-up </label>
		<div class=" col-md-3">
			<form:input class="form-control" type="text" id="due"
				tabindex="778" path="dueDateOfFollDate1" readonly="true"
				value="${CoreObject.dueDateOfFollDate1}" />
		</div>
		<div class=" col-md-2"></div>
		<div class=" col-md-3">
			<form:input class="form-control" type="text"
				id="due1" tabindex="779" path="dueDateOfFollDate2" readonly="true"
				value="${CoreObject.dueDateOfFollDate2}" />
		</div>
	</div>
	<div class="form-group row">
		<label class=" col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">38.2</code>Actual date of
			follow-up </label>
		<div class=" col-md-3">
			<form:input class="form-control date-picker dat" type="text"
				id="actual" tabindex="780" path="actDateOfFollDate1" disabled="true"
				value="${CoreObject.actDateOfFollDate1}" />
		</div>
		<div class=" col-md-2"></div>
		<div class=" col-md-3">
			<form:input class="form-control date-picker dat" type="text"
				id="actual1" tabindex="781" path="actDateOfFollDate2"
				disabled="true" value="${CoreObject.actDateOfFollDate2}" />
		</div>
	</div>
	<div class="form-group row">
		<label class=" col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">38.3</code>Method of
			follow-up </label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Hospital visit</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input day28Af" path="hospVist1"
					checked="${CoreObject.hospVist1 == '1' ? 'checked' : '' }"
					tabindex="782" value="1" id="customCheck1-378" disabled="true" />
				<label class="custom-control-label" for="customCheck1-378">
				</label>
			</div>
		</div>
		<div class="col-md-2"></div>
		<label class="col-md-2 col-form-label">Hospital visit</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input at3mAf" path="hospVisit2"
					checked="${CoreObject.hospVisit2 == '1' ? 'checked' : '' }"
					tabindex="783" value="1" id="customCheck1-379" disabled="true" />
				<label class="custom-control-label" for="customCheck1-379">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">By post</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input day28Af" path="byPost1"
					value="2" checked="${CoreObject.byPost1 == '2' ? 'checked' : '' }"
					tabindex="784" id="customCheck1-380" disabled="true" />
				<label class="custom-control-label" for="customCheck1-380">
				</label>
			</div>
		</div>
		<div class="col-md-2"></div>
		<label class="col-md-2 col-form-label">By post</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input at3mAf" path="byPost2" value="2"
					checked="${CoreObject.byPost2 == '2' ? 'checked' : '' }"
					tabindex="785" id="customCheck1-381" disabled="true" />
				<label class="custom-control-label" for="customCheck1-381">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">By telephone</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input day28Af" path="byTel1"
					value="3" checked="${CoreObject.byTel1 == '3' ? 'checked' : '' }"
					tabindex="786" id="customCheck1-382" disabled="true" />
				<label class="custom-control-label" for="customCheck1-382">
				</label>
			</div>
		</div>
		<div class="col-md-2"></div>
		<label class="col-md-2 col-form-label">By telephone</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input at3mAf" path="byTel2" value="3"
					checked="${CoreObject.byTel2 == '3' ? 'checked' : '' }"
					tabindex="787" id="customCheck1-383" disabled="true" />
				<label class="custom-control-label" for="customCheck1-383">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">By house visit</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input day28Af" value="4"
					checked="${CoreObject.byHousVis1 == '4' ? 'checked' : '' }"
					tabindex="788" path="byHousVis1" id="customCheck1-384"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-384">
				</label>
			</div>
		</div>
		<div class="col-md-2"></div>
		<label class="col-md-2 col-form-label">By house visit</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input at3mAf" value="4"
					checked="${CoreObject.byHousVis2 == '4' ? 'checked' : '' }"
					tabindex="789" path="byHousVis2" id="customCheck1-385"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-385">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-2 col-form-label"> Others <span
			class="italic"><font size="2">(specify)</font></span>
		</label>
		<div class="col-md-2">
			<form:input class="form-control" type="text" id="followup"
				tabindex="790" path="methodFollwOth1" maxlength="250"
				disabled="true" value="${CoreObject.methodFollwOth1}" />
		</div>
		<div class="col-md-3"></div>
		<label class="col-md-2 col-form-label"> Others <span
			class="italic"><font size="2">(specify)</font></span>
		</label>
		<div class="col-md-2">
			<form:input class="form-control" type="text" id="followup1"
				tabindex="791" path="methodFollwOth2" maxlength="250"
				disabled="true" value="${CoreObject.methodFollwOth2}" />
		</div>
	</div>


	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Unknown</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input day28Af" value="9"
					checked="${CoreObject.methodFollwUnk1 == '9' ? 'checked' : '' }"
					tabindex="792" path="methodFollwUnk1" id="customCheck1-386"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-386">
				</label>
			</div>
		</div>
		<div class="col-md-2"></div>
		<label class="col-md-2 col-form-label">Unknown</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input at3mAf" value="9"
					checked="${CoreObject.methodFollwUnk2 == '9' ? 'checked' : '' }"
					tabindex="793" path="methodFollwUnk2" id="customCheck1-387"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-387">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-4">
			<label id=day28Af_Err class="errorMsg">Please Select one
				option*</label>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<label id=at3mAf_Err class="errorMsg">Please Select one
					option*</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-2">
				<label><code style="padding-right: 10px; color: black">39</code>
					Vital status</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio371" value="1"
						class="custom-control-input" path="vitalStat1"
						checked="${CoreObject.vitalStat1 == '1' ? 'checked' : '' }"
						tabindex="794" onClick="enable35()" disabled="true"  />
					<label class="custom-control-label" for="customRadio371">Alive</label>

				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio372" value="2"
						checked="${CoreObject.vitalStat1 == '2' ? 'checked' : '' }"
						tabindex="795" class="custom-control-input" path="vitalStat1"
						onClick=" enable35()" disabled="true" />
					<label class="custom-control-label" for="customRadio372">Dead</label>

				</div>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio373" value="1"
						checked="${CoreObject.vitalStat2 == '1' ? 'checked' : '' }"
						tabindex="796" class="custom-control-input" path="vitalStat2"
						onClick="enable36()" disabled="true" />
					<label class="custom-control-label" for="customRadio373">Alive</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio374" value="2"
						checked="${CoreObject.vitalStat2 == '2' ? 'checked' : '' }"
						tabindex="797" class="custom-control-input" path="vitalStat2"
						onClick=" enable36()" disabled="true" />
					<label class="custom-control-label" for="customRadio374">Dead</label>

				</div>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">40</code>Functional status
			<span class="italic"><font size="2">(Modified ranking
					scale)</font></span> </label>

	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label  weight-600">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Symptoms</label> <label
			class="col-md-1 col-form-label  weight-600"> Score</label> <label
			class="col-md-4 col-form-label  weight-600">&nbsp;&nbsp;&nbsp;Symptoms</label>
		<label class="col-md-1 col-form-label  weight-600"> Score</label>


	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient doesn't have any symptoms <span class="italic"><font
				size="2">(0)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="0"
					checked="${CoreObject.patDoesSymp1 == '0' ? 'checked' : '' }"
					tabindex="798" path="patDoesSymp1" id="customCheck1-388"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-388">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient doesn't have any symptoms <span class="italic"><font
				size="2">(0)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="0"
					checked="${CoreObject.patDoesSymp2 == '0' ? 'checked' : '' }"
					tabindex="799" path="patDoesSymp2" id="customCheck1-389"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-389">
				</label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient is able to carry out all usual duties and
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;activites without any assistance
			<span class="italic"><font size="2">(1)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="1"
					checked="${CoreObject.patAbletoCarr1 == '1' ? 'checked' : '' }"
					tabindex="800" path="patAbletoCarr1" id="customCheck1-390"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-390">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient is able to carry out all usual duties and
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;activites without any assistance
			<span class="italic"><font size="2">(1)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="1"
					checked="${CoreObject.patAbletoCarr2 == '1' ? 'checked' : '' }"
					tabindex="801" path="patAbletoCarr2" id="customCheck1-391"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-391">
				</label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient can look after own affairs without
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assistance <span class="italic"><font
				size="2">(2)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="2"
					checked="${CoreObject.patWithoutAss1 == '2' ? 'checked' : '' }"
					tabindex="802" path="patWithoutAss1" id="customCheck1-392"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-392">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient can look after own affairs without
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assistance <span class="italic"><font
				size="2">(2)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="2"
					checked="${CoreObject.patWithoutAss2 == '2' ? 'checked' : '' }"
					tabindex="803" path="patWithoutAss2" id="customCheck1-393"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-393">
				</label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient requires some assistance in doing
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;activities and can walk himself
			or herself &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;without any assistance
			<span class="italic"><font size="2">(3)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="3"
					checked="${CoreObject.patWithtAss1 == '3' ? 'checked' : '' }"
					tabindex="804" path="patWithtAss1" id="customCheck1-394"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-394">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient requires some assistance in doing
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;activities and can walk himself
			or herself &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;without any assistance
			<span class="italic"><font size="2">(3)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="3"
					checked="${CoreObject.patWithtAss2 == '3' ? 'checked' : '' }"
					tabindex="805" path="patWithtAss2" id="customCheck1-395"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-395">
				</label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient needs assistance for walking and
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;attending own needs <span
			class="italic"><font size="2">(4)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="4"
					checked="${CoreObject.patNeedAss1 == '4' ? 'checked' : '' }"
					tabindex="806" path="patNeedAss1" id="customCheck1-396"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-396">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient needs assistance for walking and
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;attending own needs <span
			class="italic"><font size="2">(4)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="4"
					checked="${CoreObject.patNeedAss2 == '4' ? 'checked' : '' }"
					tabindex="807" path="patNeedAss2" id="customCheck1-397"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-397">
				</label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient is bedridden/incontient and requires
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;constant care <span
			class="italic"><font size="2">(5)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="5"
					checked="${CoreObject.patBedridden1 == '5' ? 'checked' : '' }"
					tabindex="808" path="patBedridden1" id="customCheck1-398"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-398">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient is bedridden/incontient and requires
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;constant care <span
			class="italic"><font size="2">(5)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="5"
					checked="${CoreObject.patBedridden2 == '5' ? 'checked' : '' }"
					tabindex="809" path="patBedridden2" id="customCheck1-399"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-399">
				</label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient is dead <span class="italic"><font size="2">(6)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_I" value="6"
					checked="${CoreObject.patIsDead1 == '6' ? 'checked' : '' }"
					tabindex="810" path="patIsDead1" id="customCheck1-400"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-400">
				</label>
			</div>
		</div>

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Patient is dead <span class="italic"><font size="2">(6)</font></span>
		</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input symptom_II" value="6"
					checked="${CoreObject.patIsDead2 == '6' ? 'checked' : '' }"
					tabindex="811" path="patIsDead2" id="customCheck1-401"
					disabled="true" />
				<label class="custom-control-label" for="customCheck1-401">
				</label>
			</div>
		</div>
	</div>

	<div class="form-group row">
		<label
			class="col-md-12 col-form-label  weight-600 text-center alert-info "><code
				style="padding-right: 10px; color: black">VII</code>DETAILS OF DEATH</label>

	</div>
	<div class="form-group row">
		<label class=" col-md-3 col-form-label"><code
				style="padding-right: 10px; color: black">41</code>If dead, Date of
			death </label>
		<div class=" col-md-3">
			<form:input class="form-control date-picker dat" type="text"
				id="dead1" tabindex="812" path="dateOfDeath1" disabled="true"
				value="${CoreObject.dateOfDeath1}" />
		</div>
		<div class=" col-md-2"></div>
		<div class=" col-md-3">
			<form:input class="form-control date-picker dat" type="text"
				id="dead2" maxlength="0" tabindex="813" path="dateOfDeath2"
				placeholder="" disabled="true" value="${CoreObject.dateOfDeath2}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">42</code>Cause of death
			information available</label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Death certificate <span
			class="italic"><font size="2">(MCCD)</font></span></label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-402"
					checked="${CoreObject.deathCertf1 == '1' ? 'checked' : '' }"
					tabindex="814" path="deathCertf1" value="1" disabled="true" />
				<label class="custom-control-label" for="customCheck1-402">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Death certificate <span
			class="italic"><font size="2">(MCCD)</font></span></label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-403"
					checked="${CoreObject.deathCertf2 == '1' ? 'checked' : '' }"
					tabindex="815" value="1" path="deathCertf2" disabled="true" />
				<label class="custom-control-label" for="customCheck1-403">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Medical Records</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-404"
					checked="${CoreObject.medicaRec1 == '2' ? 'checked' : '' }"
					tabindex="816" path="medicaRec1" value="2" disabled="true" />
				<label class="custom-control-label" for="customCheck1-404">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Medical Records</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-405"
					checked="${CoreObject.medicaRec2 == '2' ? 'checked' : '' }"
					tabindex="817" path="medicaRec2" value="2" disabled="true" />
				<label class="custom-control-label" for="customCheck1-405">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Verbal autopsy</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-406"
					checked="${CoreObject.verbalAutopsy1 == '3' ? 'checked' : '' }"
					tabindex="818" path="verbalAutopsy1" value="3" disabled="true" />
				<label class="custom-control-label" for="customCheck1-406">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Verbal autopsy</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-407"
					checked="${CoreObject.verbalAutopsy2 == '3' ? 'checked' : '' }"
					tabindex="819" path="verbalAutopsy2" value="3" disabled="true" />
				<label class="custom-control-label" for="customCheck1-407">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Not available</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-408"
					checked="${CoreObject.notAvail1 == '4' ? 'checked' : '' }"
					tabindex="820" path="notAvail1" value="4" disabled="true" />
				<label class="custom-control-label" for="customCheck1-408">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Not available</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-409"
					checked="${CoreObject.notAvail2 == '4' ? 'checked' : '' }"
					tabindex="821" path="notAvail2" value="4" disabled="true" />
				<label class="custom-control-label" for="customCheck1-409">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Unknown</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-410"
					checked="${CoreObject.unknown1 == '9' ? 'checked' : '' }"
					tabindex="822" path="unknown1" value="9" disabled="true" />
				<label class="custom-control-label" for="customCheck1-410">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Unknown</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-411"
					checked="${CoreObject.unkown2 == '9' ? 'checked' : '' }"
					tabindex="823" path="unkown2" value="9" disabled="true" />
				<label class="custom-control-label" for="customCheck1-411">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<label class=" col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">43</code>Cause of death</label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Related to stroke</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-412"
					checked="${CoreObject.relatedStroke1 == '1' ? 'checked' : '' }"
					tabindex="824" path="relatedStroke1" value="1" disabled="true" />
				<label class="custom-control-label" for="customCheck1-412">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Related to stroke</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-413"
					checked="${CoreObject.relatedStroke2 == '1' ? 'checked' : '' }"
					tabindex="825" path="relatedStroke2" value="1" disabled="true" />
				<label class="custom-control-label" for="customCheck1-413">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Not Related to stroke</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-414"
					checked="${CoreObject.notRelatedStroke1 == '2' ? 'checked' : '' }"
					tabindex="826" path="notRelatedStroke1" value="2" disabled="true" />
				<label class="custom-control-label" for="customCheck1-414">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Not Related to stroke</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-415"
					checked="${CoreObject.notRelatedStroke2 == '2' ? 'checked' : '' }"
					tabindex="827" path="notRelatedStroke2" value="2" disabled="true" />
				<label class="custom-control-label" for="customCheck1-415">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-1 col-form-label"> Others </label>
		<div class="col-md-4">
			<form:input class="form-control" type="text" id="cause1"
				tabindex="828" path="casueOfDeathothers1" maxlength="250"
				disabled="true" value="${CoreObject.casueOfDeathothers1}" />
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-1 col-form-label"> Others</label>
		<div class="col-md-4">
			<form:input class="form-control" type="text" id="cause2"
				tabindex="829" path="casueOfDeathothers2" maxlength="250"
				disabled="true" value="${CoreObject.casueOfDeathothers2}" />
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-4 col-form-label">Unknowm</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-416"
					checked="${CoreObject.casueOfDeathUnk1 == '9' ? 'checked' : '' }"
					tabindex="830" path="casueOfDeathUnk1" value="9" disabled="true" />
				<label class="custom-control-label" for="customCheck1-416">
				</label>
			</div>
		</div>
		<div class="col-md-1"></div>
		<label class="col-md-3 col-form-label">Unknown</label>
		<div class="col-md-1">
			<div class="custom-control custom-checkbox mb-5">
				<form:checkbox class="custom-control-input" id="customCheck1-417"
					checked="${CoreObject.casueOfDeathUnk1 == '9' ? 'checked' : '' }"
					tabindex="831" value="9" path="casueOfDeathUnk2" disabled="true" />
				<label class="custom-control-label" for="customCheck1-417">
				</label>
			</div>
		</div>

	</div>
	<div class="form-group row">
		<label class=" col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">43.1</code>Cause of death
			from MCCD</label>

	</div>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-5 col-form-label"> Immediate:</label>

		<div class="col-md-1"></div>
		<label class="col-md-5 col-form-label"> Immediate:</label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<form:input class="form-control valKeyCN" type="text" id="immediate1"
				tabindex="832" path="immediate1" maxlength="100" disabled="true"
				value="${CoreObject.immediate1}" />
		</div>

		<div class="col-md-1"></div>
		<div class="col-md-5">
			<form:input class="form-control valKeyCN" type="text" id="immediate2"
				tabindex="833" path="immediate2" maxlength="100" disabled="true"
				value="${CoreObject.immediate2}" />
		</div>

	</div>




	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-5 col-form-label"> Underlying/Antecedent
			cause:</label>

		<div class="col-md-1"></div>
		<label class="col-md-5 col-form-label"> Underlying/Antecedent
			cause:</label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<form:input class="form-control valKeyCN" type="text"
				id="underlying1" tabindex="834" path="antecedentCause1"
				maxlength="100" disabled="true"
				value="${CoreObject.antecedentCause1}" />
		</div>

		<div class="col-md-1"></div>
		<div class="col-md-5">
			<form:input class="form-control valKeyCN" type="text"
				id="underlying2" tabindex="835" path="antecedentCause2"
				maxlength="100" disabled="true"
				value="${CoreObject.antecedentCause2}" />
		</div>

	</div>



	<div class="form-group row">
		<div class="col-md-1"></div>
		<label class="col-md-5 col-form-label"> Other contributing
			condtions:</label>

		<div class="col-md-1"></div>
		<label class="col-md-5 col-form-label"> Other contributing
			condtions:</label>

	</div>
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<form:input class="form-control valKeyCN" type="text"
				id="contributing1" tabindex="836" path="otherContributing1"
				maxlength="100" disabled="true"
				value="${CoreObject.otherContributing1}" />
		</div>

		<div class="col-md-1"></div>
		<div class="col-md-5">
			<form:input class="form-control valKeyCN" type="text"
				id="contributing2" tabindex="837" path="otherContributing2"
				maxlength="100" disabled="true"
				value="${CoreObject.otherContributing2}" />
		</div>

	</div>


</body>
</html>