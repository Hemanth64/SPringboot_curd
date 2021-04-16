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

			<div class="col-md-6">
				<label><code style="padding-right: 10px; color: black">27.4</code>
					CT done after 24 hours after Thrombolysis </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio217" value="1"
						checked="${CoreObject.ctDoneAfter24hr == '1' ? 'checked' : '' }"
						tabindex="583" class="custom-control-input btn_ctdone24hr"
						path="ctDoneAfter24hr" disabled="true" />
					<label class="custom-control-label" for="customRadio217">
						Yes</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio218" value="2"
						checked="${CoreObject.ctDoneAfter24hr == '2' ? 'checked' : '' }"
						tabindex="584" class="custom-control-input btn_ctdone24hr"
						path="ctDoneAfter24hr" disabled="true" />
					<label class="custom-control-label" for="customRadio218">
						No</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio219" value="3"
						checked="${CoreObject.ctDoneAfter24hr == '3' ? 'checked' : '' }"
						tabindex="585" class="custom-control-input btn_ctdone24hr"
						path="ctDoneAfter24hr" disabled="true" />
					<label class="custom-control-label" for="customRadio219">
						Unknown</label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-6"></div>
			<div class="col-md-3">
				<input class="ctDone hide" type="text" id="ctDone" name="ctDone" disabled/>
			</div>

		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">27.5</code>Patient
			developed complications due to Thrombolysis</label>

	</div>

	<div class="form-group compThrom_Err">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">
				<label id=compThrom_Err class="errorMsg">Please Select at
					least one option*</label>
			</div>
		</div>
		
		<div class=" row">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> None </label>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input compThrom" value="1"
						checked="${CoreObject.compThrNone == '1' ? 'checked' : '' }"
						tabindex="586" id="none" path="compThrNone" disabled="true" />
					<label class="custom-control-label" for="none"> </label>

				</div>
			</div>
		</div>
		<div class=" row">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Asymptomatic
				Intracerebral Haemorrhage <span class="italic"><font size="2">(ICH)</font></span>
				within 36 hours
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input compThrom cmpthrm" value="2"
						checked="${CoreObject.compThrAsymp == '2' ? 'checked' : '' }"
						tabindex="587" id="customCheck1-361" path="compThrAsymp"
						disabled="true" />
					<label class="custom-control-label" for="customCheck1-361">
					</label>

				</div>
			</div>

		</div>
		<div class=" row">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Symptomatic ICH
				within 36 hours <span class="italic"><font size="2">(<36hours)</font></span>
				of thrombolysis
			</label>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input compThrom cmpthrm" value="3"
						checked="${CoreObject.compThrSymptom == '3' ? 'checked' : '' }"
						tabindex="588" id="customCheck1-362" path="compThrSymptom"
						disabled="true" />
					<label class="custom-control-label" for="customCheck1-362">
					</label>

				</div>
			</div>

		</div>

		<div class=" row">
			<div class="col-md-1"></div>
			<label class="col-md-8 col-form-label"> Life
				threatening,serious systemic hemorrhage within 36 hours of
				thrombolysis </label>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input compThrom cmpthrm" value="4"
						checked="${CoreObject.compThrLifeThre == '4' ? 'checked' : '' }"
						tabindex="589" id="customCheck1-363" path="compThrLifeThre"
						disabled="true" />
					<label class="custom-control-label" for="customCheck1-363">
					</label>

				</div>
			</div>

		</div>

		<div class=" row">
			<div class="col-md-1"></div>
			<label class=" col-md-4 col-form-label"><font color="black">Other
					Serious complications</font> </label>
			<div class=" col-md-4">
				<form:input class="form-control" type="text" id="otherSerious"
					tabindex="590" path="seriouscompli" maxlength="250" disabled="true"
					value="${CoreObject.seriouscompli}" />
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>



	<div class="form-group row">
		<label class="col-md-12 col-form-label  weight-600"><code
				style="padding-right: 10px; color: black">28</code>Other
			pharmacologic treatment </label>

	</div>


	<div class="form-group row">
		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">28.1</code>Name the
			medications received and time of initiation after stroke onset while
			in the hospital:</label>

	</div>
	<div class="form-group row">
		<div class="col-md-7"></div>
		<label class="col-md-5 col-form-label  weight-600">If yes, When was
			it initiated after stroke onset?</label>

	</div>
	<div class="form-group row">
		<div class="col-md-3"></div>
		<div class="col-md-9">



			<label class="col-md-1 col-form-label  weight-600">Yes</label> <label
				class="col-md-1 col-form-label  weight-600">No</label> <label
				class="col-md-3 col-form-label  weight-600">Unknown</label> <label
				class="col-md-2 col-form-label  weight-600">Within 24hrs</label> <label
				class="col-md-2 col-form-label  weight-600">24-48 hrs</label> <label
				class="col-md-2 col-form-label  weight-600">After 48hrs</label>
			<div class="col-md-1"></div>
		</div>

	</div>
	<div class="form-group row">
		<div class="col-md-3">
			<label class=" col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Antiplatelets
			</label>
		</div>

		<div class="col-md-9">
			<div class="form-group">
				<div class="row">
					&nbsp;&nbsp;
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio220" value="1"
								checked="${CoreObject.antiplatelets1 == '1' ? 'checked' : '' }"
								tabindex="591" class="custom-control-input"
								path="antiplatelets1" onClick="enable24()" />
							<label class="custom-control-label" for="customRadio220"></label>

						</div>
					</div>
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio221" value="2"
								checked="${CoreObject.antiplatelets1 == '2' ? 'checked' : '' }"
								tabindex="592" class="custom-control-input"
								path="antiplatelets1" onClick="enable24()" />
							<label class="custom-control-label" for="customRadio221"></label>

						</div>
					</div>
					&nbsp;&nbsp;&nbsp;
					<div class="col-md-3 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio222" value="3"
								checked="${CoreObject.antiplatelets1 == '3' ? 'checked' : '' }"
								tabindex="593" class="custom-control-input"
								path="antiplatelets1" onClick="enable24()" />
							<label class="custom-control-label" for="customRadio222"></label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Antipltlts" value="1"
								checked="${CoreObject.antipW24hr == '1' ? 'checked' : '' }"
								tabindex="594" id="customCheck1-435" path="antipW24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-435">
							</label>

						</div>
				
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Antipltlts" value="2"
								checked="${CoreObject.antip24hr == '2' ? 'checked' : '' }"
								tabindex="594" id="customCheck1-436" path="antip24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-436">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">


						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Antipltlts" value="3"
								checked="${CoreObject.antipA48hr == '3' ? 'checked' : '' }"
								tabindex="595" id="customCheck1-437" path="antipA48hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-437">
							</label>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-3 col-form-label">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If yes,Specify name</label>
		<div class="col-md-3">
			<form:input class="form-control" type="text" id="providename"
				tabindex="596" path="antiplatelets1Name" maxlength="40"
				disabled="true" value="${CoreObject.antiplatelets1Name}" />
		</div>
		<div class="col-md-4"></div>
	</div>
	<div class="form-group row">
		<div class="col-md-3">
			<label class=" col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anti-coagulants
			</label>
		</div>

		<div class="col-md-9">
			<div class="form-group">
				<div class="row">
					&nbsp;&nbsp;
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio226" value="1"
								checked="${CoreObject.anti_coagulants == '1' ? 'checked' : '' }"
								tabindex="597" class="custom-control-input"
								path="anti_coagulants" onClick="enable25()" />
							<label class="custom-control-label" for="customRadio226"></label>

						</div>
					</div>
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio227" value="2"
								checked="${CoreObject.anti_coagulants == '2' ? 'checked' : '' }"
								tabindex="598" class="custom-control-input"
								path="anti_coagulants" onClick="enable25()" />
							<label class="custom-control-label" for="customRadio227"></label>

						</div>
					</div>
					&nbsp;&nbsp;&nbsp;
					<div class="col-md-3 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio228" value="3"
								checked="${CoreObject.anti_coagulants == '3' ? 'checked' : '' }"
								tabindex="599" class="custom-control-input"
								path="anti_coagulants" onClick="enable25()" />
							<label class="custom-control-label" for="customRadio228"></label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_coagulants" value="1"
								checked="${CoreObject.anticW24hr == '1' ? 'checked' : '' }"
								tabindex="600" id="customCheck1-438" path="anticW24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-438">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
				

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_coagulants" value="2"
								checked="${CoreObject.antic24hr == '2' ? 'checked' : '' }"
								tabindex="601" id="customCheck1-439" path="antic24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-439">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
				

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_coagulants" value="3"
								checked="${CoreObject.anticA48hr == '3' ? 'checked' : '' }"
								tabindex="602" id="customCheck1-440" path="anticA48hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-440">
							</label>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-3">
			<label class=" col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anti-hypertensive
				drugs </label>
		</div>

		<div class="col-md-9">
			<div class="form-group">
				<div class="row">
					&nbsp;&nbsp;
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio232" value="1"
								checked="${CoreObject.hypertdrugs == '1' ? 'checked' : '' }"
								tabindex="603" class="custom-control-input" path="hypertdrugs"
								onClick="enable26()" />
							<label class="custom-control-label" for="customRadio232"></label>

						</div>
					</div>
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio233" value="2"
								checked="${CoreObject.hypertdrugs == '2' ? 'checked' : '' }"
								tabindex="604" class="custom-control-input" path="hypertdrugs"
								onClick="enable26()" />
							<label class="custom-control-label" for="customRadio233"></label>

						</div>
					</div>
					&nbsp;&nbsp;&nbsp;
					<div class="col-md-3 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio234" value="3"
								checked="${CoreObject.hypertdrugs == '3' ? 'checked' : '' }"
								tabindex="605" class="custom-control-input" path="hypertdrugs"
								onClick="enable26()" />
							<label class="custom-control-label" for="customRadio234"></label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_hypertensive" value="1"
								checked="${CoreObject.hyperW24hr == '1' ? 'checked' : '' }"
								tabindex="606" id="customCheck1-441" path="hyperW24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-441">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_hypertensive" value="2"
								checked="${CoreObject.hyper24hr == '2' ? 'checked' : '' }"
								tabindex="607" id="customCheck1-442" path="hyper24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-442">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_hypertensive" value="3"
								checked="${CoreObject.hyperA48hr == '3' ? 'checked' : '' }"
								tabindex="608" id="customCheck1-443" path="hyperA48hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-443">
							</label>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-3">
			<label class=" col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lipid
				lowering drugs </label>
		</div>

		<div class="col-md-9">
			<div class="form-group">
				<div class="row">
					&nbsp;&nbsp;
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio238" value="1"
								checked="${CoreObject.loweringDrugs1 == '1' ? 'checked' : '' }"
								tabindex="609" class="custom-control-input"
								path="loweringDrugs1" onClick="enable27()" />
							<label class="custom-control-label" for="customRadio238"></label>

						</div>
					</div>
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio239" value="2"
								checked="${CoreObject.loweringDrugs1 == '2' ? 'checked' : '' }"
								tabindex="610" class="custom-control-input"
								path="loweringDrugs1" onClick="enable27()" />
							<label class="custom-control-label" for="customRadio239"></label>

						</div>
					</div>
					&nbsp;&nbsp;&nbsp;
					<div class="col-md-3 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio240" value="3"
								checked="${CoreObject.loweringDrugs1 == '3' ? 'checked' : '' }"
								tabindex="611" class="custom-control-input"
								path="loweringDrugs1" onClick="enable27()" />
							<label class="custom-control-label" for="customRadio240"></label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
						

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Lipid_lowering" value="1"
								checked="${CoreObject.lowW24hr == '1' ? 'checked' : '' }"
								tabindex="612" id="customCheck1-444" path="lowW24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-444">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
				


						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Lipid_lowering" value="2"
								checked="${CoreObject.low24hr == '2' ? 'checked' : '' }"
								tabindex="613" id="customCheck1-445" path="low24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-445">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Lipid_lowering" value="3"
								checked="${CoreObject.lowA48hr == '3' ? 'checked' : '' }"
								tabindex="614" id="customCheck1-446" path="lowA48hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-446">
							</label>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-3">
			<label class=" col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anti-Diabetic
				agents </label>
		</div>

		<div class="col-md-9">
			<div class="form-group">
				<div class="row">
					&nbsp;&nbsp;
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio244" value="1"
								checked="${CoreObject.diabagents == '1' ? 'checked' : '' }"
								tabindex="615" class="custom-control-input" path="diabagents"
								onClick="enable28()" />
							<label class="custom-control-label" for="customRadio244"></label>

						</div>
					</div>
					<div class="col-md-1 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio245" value="2"
								checked="${CoreObject.diabagents == '2' ? 'checked' : '' }"
								tabindex="616" class="custom-control-input" path="diabagents"
								onClick="enable28()" />
							<label class="custom-control-label" for="customRadio245"></label>

						</div>
					</div>
					&nbsp;&nbsp;&nbsp;
					<div class="col-md-3 ">
						<div class="custom-control custom-radio mb-3">
							<form:radiobutton id="customRadio246" value="3"
								checked="${CoreObject.diabagents == '3' ? 'checked' : '' }"
								tabindex="617" class="custom-control-input" path="diabagents"
								onClick="enable28()" />
							<label class="custom-control-label" for="customRadio246"></label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					

						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_Diabetic" value="1"
								checked="${CoreObject.diabW24hr == '1' ? 'checked' : '' }"
								tabindex="618" id="customCheck1-447" path="diabW24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-447">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">
					
						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_Diabetic" value="2"
								checked="${CoreObject.diab24hr == '2' ? 'checked' : '' }"
								tabindex="619" id="customCheck1-448" path="diab24hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-448">
							</label>

						</div>
					</div>
					&nbsp;&nbsp;
					<div class="col-md-2 ">


						<div class="custom-control custom-checkbox mb-5">
							<form:checkbox class="custom-control-input Anti_Diabetic" value="3"
								checked="${CoreObject.diabA48hr == '3' ? 'checked' : '' }"
								tabindex="620" id="customCheck1-449" path="diabA48hr"
								disabled="true" />
							<label class="custom-control-label" for="customCheck1-449">
							</label>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="form-group row">

		<label class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">29</code>Surgicial/interventional
			treatment </label> <label class="col-md-1 col-form-label  weight-600">
			Yes</label> <label class="col-md-1 col-form-label  weight-600"> No</label> <label
			class="col-md-6 col-form-label  weight-600"> Time of
			intervention after stroke onset <span class="italic  weight-600"><font
				size="2">(in hours)</font></span>
		</label>



	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hemicraniectomy </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio250" value="1"
						checked="${CoreObject.hemicraniectomy == '1' ? 'checked' : '' }"
						tabindex="621" class="custom-control-input btn_hemicr"
						path="hemicraniectomy" onClick="enable79()" />
					<label class="custom-control-label" for="customRadio250"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio251" value="2"
						checked="${CoreObject.hemicraniectomy == '2' ? 'checked' : '' }"
						tabindex="622" class="custom-control-input btn_hemicr"
						path="hemicraniectomy" onClick="enable79()" />
					<label class="custom-control-label" for="customRadio251"></label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN " type="text" id="hemicInt"
					tabindex="623" path="hemicIntTime" maxlength="4"
					value="${CoreObject.hemicIntTime}" disabled="true" />
			</div>
			<div class="col-md-3">
				<!-- <label id=hemicr_Err class="errorMsg">Please Select either
					Yes(or)No*</label> -->
					<input class="hemicr_Err hide " type="text" id="hemicr_Err" name="hemicr_Err"/>
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Suboccipital
					craniectomy</label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio252" value="1"
						checked="${CoreObject.suboccipital == '1' ? 'checked' : '' }"
						tabindex="624" class="custom-control-input btn_subocc"
						path="suboccipital" onClick="enable80()" />
					<label class="custom-control-label" for="customRadio252"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio253" value="2"
						checked="${CoreObject.suboccipital == '2' ? 'checked' : '' }"
						tabindex="625" class="custom-control-input btn_subocc"
						path="suboccipital" onClick="enable80()" />
					<label class="custom-control-label" for="customRadio253"></label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="craIn"
					tabindex="626" path="cranIntTime" maxlength="4" disabled="true"
					value="${CoreObject.cranIntTime}" />
			</div>
			<div class="col-md-3">
				<!-- <label id=subocc_Err class="errorMsg">Please Select either
					Yes(or)No*</label> -->
					<input class="subocc_Err hide " type="text" id="subocc_Err" name="subocc_Err"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hematoma evacuation </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio254" value="1"
						checked="${CoreObject.hematomaEve == '1' ? 'checked' : '' }"
						tabindex="627" class="custom-control-input btn_hemat"
						path="hematomaEve" onClick="enable81()" />
					<label class="custom-control-label" for="customRadio254"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio256" value="2"
						checked="${CoreObject.hematomaEve == '2' ? 'checked' : '' }"
						tabindex="628" class="custom-control-input btn_hemat"
						path="hematomaEve" onClick="enable81()" />
					<label class="custom-control-label" for="customRadio256"></label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="hemat"
					disabled="true" tabindex="629" path="hematIntTime" maxlength="4"
					value="${CoreObject.hematIntTime}" />
			</div>
			<div class="col-md-3">
				<input class="hematoma hide" type="text" id="hematoma" name="hematoma"/>

			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Carotid artery
					endarterectomy </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio257" value="1"
						checked="${CoreObject.endarterectomy == '1' ? 'checked' : '' }"
						tabindex="630" class="custom-control-input btn_enda"
						path="endarterectomy" onClick="enable82()" />
					<label class="custom-control-label" for="customRadio257"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio258" value="2"
						checked="${CoreObject.endarterectomy == '2' ? 'checked' : '' }"
						tabindex="631" class="custom-control-input btn_enda"
						path="endarterectomy" onClick="enable82()" />
					<label class="custom-control-label" for="customRadio258"></label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="carodi"
					disabled="true" tabindex="632" path="carotidIntTime" maxlength="4"
					value="${CoreObject.carotidIntTime}" />
			</div>
			<div class="col-md-3">
				<input class="carotid1 hide" type="text" id="carotid1" name="carotid1"/>

			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Carotid stenting </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio259" value="1"
						checked="${CoreObject.carotidStenting == '1' ? 'checked' : '' }"
						tabindex="633" class="custom-control-input btn_carotid"
						path="carotidStenting" onClick="enable83()" />
					<label class="custom-control-label" for="customRadio259"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio260" value="2"
						checked="${CoreObject.carotidStenting == '2' ? 'checked' : '' }"
						tabindex="634" class="custom-control-input btn_carotid"
						path="carotidStenting" onClick="enable83()" />
					<label class="custom-control-label" for="customRadio260"></label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="carotidSteInt"
					disabled="true" tabindex="635" path="carotidSteIntTime"
					maxlength="4" value="${CoreObject.carotidSteIntTime}" />
			</div>
			<div class="col-md-3">
					<input class="carotidSten hide" type="text" id="carotidSten" name="carotidSten"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Endovascular
					coiling/clipping </label>
			</div>

			<div class="col-md-1">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio261" value="1"
						checked="${CoreObject.endovascular == '1' ? 'checked' : '' }"
						tabindex="636" class="custom-control-input btn_endov"
						path="endovascular" onClick="enable84()" />
					<label class="custom-control-label" for="customRadio261"></label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio262" value="2"
						checked="${CoreObject.endovascular == '2' ? 'checked' : '' }"
						tabindex="637" class="custom-control-input btn_endov"
						path="endovascular" onClick="enable84()" />
					<label class="custom-control-label" for="customRadio262"></label>

				</div>
			</div>
			<div class="col-md-2">

				<form:input class="form-control valKeyN" type="text" id="endov"
					disabled="true" tabindex="638" path="endovIntTime" maxlength="4"
					value="${CoreObject.endovIntTime}" />
			</div>
			<div class="col-md-3">
				<input class="endovac hide" type="text" id="endovac" name="endovac"/>

			</div>
		</div>
	</div>
	<div class="form-group row">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="col-md-2 col-form-label">Any
			Others </label>
		<div class="col-md-6">
			<form:input class="form-control " type="text" id="path2"
				path="anyOthers" tabindex="639" maxlength="250"
				value="${CoreObject.anyOthers}" />
		</div>
		<div class="col-md-4"></div>
	</div>
	<div class="form-group row">
		<label class="col-md-12 col-form-label  weight-600"><code
				style="padding-right: 10px; color: black">30</code>Non-medical
			test/Management </label>

	</div>
	<div class="form-group row">
		<label class="col-md-12 col-form-label  weight-600"><code
				style="padding-right: 10px; color: black">30.1</code>Swallowing Test
		</label>

	</div>
	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px;"></code>&nbsp;&nbsp; Has the ability to
			swallow been tested within 24hours of admission to RI? </label>

	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio263" value="1"
						checked="${CoreObject.swallowBeenTested == '1' ? 'checked' : '' }"
						tabindex="640" class="custom-control-input btn_swall"
						path="swallowBeenTested" />
					<label class="custom-control-label" for="customRadio263">Yes</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio264" value="2"
						checked="${CoreObject.swallowBeenTested == '2' ? 'checked' : '' }"
						tabindex="641" class="custom-control-input btn_swall"
						path="swallowBeenTested" />
					<label class="custom-control-label" for="customRadio264">No</label>

				</div>
			</div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio265" value="3"
						checked="${CoreObject.swallowBeenTested == '3' ? 'checked' : '' }"
						tabindex="642" class="custom-control-input btn_swall"
						path="swallowBeenTested" />
					<label class="custom-control-label" for="customRadio265">Not
						examined due to patient's state</label>

				</div>

			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio266" value="9"
						checked="${CoreObject.swallowBeenTested == '9' ? 'checked' : '' }"
						tabindex="643" class="custom-control-input btn_swall"
						path="swallowBeenTested" />
					<label class="custom-control-label" for="customRadio266">Don't
						Know</label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-3">
				<input class="swallow hide" type="text" id="swallow" name="swallow"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label><code style="padding-right: 10px; color: black">30.2</code>
					Did patient have dysphagia ? </label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio267" value="1"
						checked="${CoreObject.dysphagia == '1' ? 'checked' : '' }"
						tabindex="644" class="custom-control-input btn_dysp"
						path="dysphagia" onClick="enable29()" />
					<label class="custom-control-label" for="customRadio267">Yes</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio268" value="2"
						checked="${CoreObject.dysphagia == '2' ? 'checked' : '' }"
						tabindex="645" class="custom-control-input btn_dysp"
						path="dysphagia" onClick="enable29()" />
					<label class="custom-control-label" for="customRadio268">No</label>

				</div>
			</div>
			<div class="col-md-4">
				<input class="patientDyp hide" type="text" id="patientDyp" name="patientDyp"/>
			
			</div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label><code style="padding-right: 10px; color: black">30.3</code>
					If patient had dysphagia, whether he/she was put on nasogastric
					tube feeds?</label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio269" value="1"
						checked="${CoreObject.nasogastricTube == '1' ? 'checked' : '' }"
						tabindex="646" class="custom-control-input" path="nasogastricTube"
						disabled="true" />
					<label class="custom-control-label" for="customRadio269">Yes</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio270" value="2"
						checked="${CoreObject.nasogastricTube == '2' ? 'checked' : '' }"
						tabindex="647" class="custom-control-input" path="nasogastricTube"
						disabled="true" />
					<label class="custom-control-label" for="customRadio270">No</label>

				</div>
			</div>


		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label "><code
				style="padding-right: 10px; color: black">30.4</code>Did the patient
			receive any of the following
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;therapies while in
			hospital?</label> <label class="col-md-1 col-form-label weight-600">
			Yes</label> <label class="col-md-1 col-form-label weight-600"> No</label> <label
			class="col-md-2 col-form-label weight-600"> Unknown</label> <label
			class="col-md-3 col-form-label weight-600">Explain</label>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Swallowing management </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio271" value="1"
					checked="${CoreObject.swallowManag == '1' ? 'checked' : '' }"
					tabindex="648" class="custom-control-input btn_swallow"
					path="swallowManag" onClick="enable11()" />
				<label class="custom-control-label" for="customRadio271"></label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio272" value="2"
					checked="${CoreObject.swallowManag == '2' ? 'checked' : '' }"
					tabindex="649" class="custom-control-input btn_swallow"
					path="swallowManag" onClick="enable11()" />
				<label class="custom-control-label" for="customRadio272"></label>

			</div>
		</div>

		<div class="col-md-2">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio273" value="9"
					checked="${CoreObject.swallowManag == '9' ? 'checked' : '' }"
					tabindex="650" class="custom-control-input btn_swallow"
					path="swallowManag" onClick="enable11()" />
				<label class="custom-control-label" for="customRadio273"></label>

			</div>
		</div>
		<div class=" col-md-3">
			<form:input type="text" class="form-control" maxlength="250"
				id="explain1" tabindex="651" path="swalloExp" disabled="true"
				value="${CoreObject.swalloExp}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-5"></div>
		<div class=" col-md-3">
				<input class="swalloMan hide" type="text" id="swalloMan" name="swalloMan"/>
		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Occupational therapy </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio274" value="1"
					checked="${CoreObject.occupatTherapy == '1' ? 'checked' : '' }"
					tabindex="652" class="custom-control-input btn_occup"
					path="occupatTherapy" onClick="enable12()" />
				<label class="custom-control-label" for="customRadio274"></label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio275" value="2"
					checked="${CoreObject.occupatTherapy == '2' ? 'checked' : '' }"
					tabindex="653" class="custom-control-input btn_occup"
					path="occupatTherapy" onClick="enable12()" />
				<label class="custom-control-label" for="customRadio275"></label>

			</div>
		</div>

		<div class="col-md-2">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio276" value="9"
					checked="${CoreObject.occupatTherapy == '9' ? 'checked' : '' }"
					tabindex="654" class="custom-control-input btn_occup"
					path="occupatTherapy" onClick="enable12()" />
				<label class="custom-control-label" for="customRadio276"></label>

			</div>
		</div>
		<div class=" col-md-3">
			<form:input type="text" class="form-control" maxlength="250"
				id="explain2" tabindex="655" path="occupExp" disabled="true"
				value="${CoreObject.occupExp}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-5"></div>
		<div class=" col-md-3">
			<input class="occupation hide" type="text" id="occupation" name="occupation"/>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Physiotherapy </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio277" value="1"
					checked="${CoreObject.physiotherap == '1' ? 'checked' : '' }"
					tabindex="656" class="custom-control-input btn_phys"
					path="physiotherap" onClick="enable13()" />
				<label class="custom-control-label" for="customRadio277"></label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio278" value="2"
					checked="${CoreObject.physiotherap == '2' ? 'checked' : '' }"
					tabindex="657 " class="custom-control-input btn_phys"
					path="physiotherap" onClick="enable13()" />
				<label class="custom-control-label" for="customRadio278"></label>

			</div>
		</div>

		<div class="col-md-2">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio279" value="9"
					checked="${CoreObject.physiotherap == '9' ? 'checked' : '' }"
					tabindex="658" class="custom-control-input btn_phys"
					path="physiotherap" onClick="enable13()" />
				<label class="custom-control-label" for="customRadio279"></label>

			</div>
		</div>
		<div class=" col-md-3">
			<form:input type="text" class="form-control" maxlength="250"
				id="explain3" tabindex="659" path="physioExp" disabled="true"
				value="${CoreObject.physioExp}" />
		</div>

	</div>
	<div class="form-group row">
		<div class=" col-md-5"></div>
		<div class=" col-md-3">
			<input class="physi hide" type="text" id="physi" name="physi"/>
		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Speech therapy </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio280" value="1"
					checked="${CoreObject.speechTherapy == '1' ? 'checked' : '' }"
					tabindex="660" class="custom-control-input btn_speech"
					path="speechTherapy" onClick="enable14()" />
				<label class="custom-control-label" for="customRadio280"></label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio281" value="2"
					checked="${CoreObject.speechTherapy == '2' ? 'checked' : '' }"
					tabindex="661" class="custom-control-input btn_speech"
					path="speechTherapy" onClick="enable14()" />
				<label class="custom-control-label" for="customRadio281"></label>

			</div>
		</div>

		<div class="col-md-2">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio282" value="9"
					checked="${CoreObject.speechTherapy == '9' ? 'checked' : '' }"
					tabindex="662" class="custom-control-input btn_speech"
					path="speechTherapy" onClick="enable14()" />
				<label class="custom-control-label" for="customRadio282"></label>

			</div>
		</div>
		<div class=" col-md-3">
			<form:input type="text" class="form-control" maxlength="250"
				id="explain4" tabindex="663" path="speecExp" disabled="true"
				value="${CoreObject.speecExp}" />
		</div>

	</div>
	<div class="form-group row">
	<div class=" col-md-5"></div>
		<div class=" col-md-3">
			<input class="speech hide" type="text" id="speech" name="speech"/></div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Bladder care </label>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio283" value="1"
					checked="${CoreObject.bladderCare == '1' ? 'checked' : '' }"
					tabindex="664" class="custom-control-input btn_bladder"
					path="bladderCare" onClick="enable15()" />
				<label class="custom-control-label" for="customRadio283"></label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio284" value="2"
					checked="${CoreObject.bladderCare == '2' ? 'checked' : '' }"
					tabindex="665" class="custom-control-input btn_bladder"
					path="bladderCare" onClick="enable15()" />
				<label class="custom-control-label" for="customRadio284"></label>

			</div>
		</div>

		<div class="col-md-2">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio285" value="9"
					checked="${CoreObject.bladderCare == '9' ? 'checked' : '' }"
					tabindex="666" class="custom-control-input btn_bladder"
					path="bladderCare" onClick="enable15()" />
				<label class="custom-control-label" for="customRadio285"></label>

			</div>
		</div>
		<div class=" col-md-3">
			<form:input type="text" class="form-control" maxlength="250"
				id="explain5" tabindex="667" path="bladerExp" disabled="true"
				value="${CoreObject.bladerExp}" />
		</div>
	</div>
	<div class="form-group row">
	<div class=" col-md-5"></div>
		<div class=" col-md-3">
		<input class="bladder hide" type="text" id="bladder" name="bladder"/></div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Deep vein thrombosis prophylaxis </label>

		<div class="col-md-1">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio286" value="1"
					checked="${CoreObject.prophylaxis == '1' ? 'checked' : '' }"
					tabindex="668" class="custom-control-input btn_prophy"
					path="prophylaxis" onClick="enable16()" />
				<label class="custom-control-label" for="customRadio286"></label>

			</div>
		</div>

		<div class="col-md-1">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio287" value="2"
					checked="${CoreObject.prophylaxis == '2' ? 'checked' : '' }"
					tabindex="669" class="custom-control-input btn_prophy"
					path="prophylaxis" onClick="enable16()" />
				<label class="custom-control-label" for="customRadio287"></label>

			</div>
		</div>

		<div class="col-md-2">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio288" value="9"
					checked="${CoreObject.prophylaxis == '9' ? 'checked' : '' }"
					tabindex="670" class="custom-control-input btn_prophy"
					path="prophylaxis" onClick="enable16()" />
				<label class="custom-control-label" for="customRadio288"></label>

			</div>
		</div>
		<div class=" col-md-3">
			<form:input type="text" class="form-control" maxlength="250"
				id="explain6" tabindex="671" path="deepVExp" disabled="true"
				value="${CoreObject.deepVExp}" />
		</div>

	</div>
	<div class="form-group row">
	<div class=" col-md-5"></div>
		<div class=" col-md-3">
			<input class="deepThrom hide" type="text" id="deepThrom" name="deepThrom"/></div>

	</div>
</body>
</html>