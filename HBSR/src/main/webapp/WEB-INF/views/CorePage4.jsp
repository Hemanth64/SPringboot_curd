<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script type="text/javascript">
	$(function() {
		$("#CtmTimeAmPm").click(
				function() {
					$("#reportInstTime").val(
							$("#CtmTimehr").val() + " : " + $("#CtmTimeMn").val()
									+ " " + $("#CtmTimeAmPm").val());
					
				});
		
		if ($("#reportInstTime").val() != "") {
			var str = $("#reportInstTime").val();
			$("#CtmTimehr").val(str.substring(0, 2));
			$("#CtmTimeMn").val($.trim(str.substring(5,8)));
			$("#CtmTimeAmPm option[value='" + str.substring(9, 12) + "']").prop(
					'selected', true);
		}
		
		if ($("#icd10Code_input").val() != "") {
			var str = $("#icd10Code_input").val();
			$("#icd10Code").val(str.substring(1, 3));
			$("#icd10Code0").val($.trim(str.substring(4,6)));
			
		}
		
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label><code style="padding-right: 10px; color: black">17</code>
					CT/MRI imaging done at Reporting Institution</label>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-radio mb-3">

					<form:radiobutton id="customRadio39" value="1" tabindex="304"
						class="custom-control-input btn_ctMri" path="reportInstCTandMRI"
						onClick="enable78()"
						checked="${CoreObject.reportInstCTandMRI == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio39"> <font>Yes
					</font>
					</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio40" value="2" tabindex="305"
						class="custom-control-input btn_ctMri" path="reportInstCTandMRI"
						onClick="enable78()"
						checked="${CoreObject.reportInstCTandMRI == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio40"> <font>No
					</font>
					</label>

				</div>
			</div>
			<div class="col-md-2">
			<input class="ctMri hide" type="text" id="ctMri" name="ctMri"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class=" col-md-1">
				<label class=" col-md-1 col-form-label">Date </label>
			</div>

			<div class="col-md-2">

				<form:input type="text" class="form-control date-picker dat"
					tabindex="306" path="reportInstDate" id="ctMridate" disabled="true"
					value="${CoreObject.reportInstDate}" />
			</div>
			<div class=" col-md-1">
				<label class=" col-md-2 col-form-label">Time </label>
			</div>
			<div class="col-md-3">

				<div class="row">
					<div class="col-md-2 text-center"
						style="padding: 0.10px; margin: 0px; width: 30px;">
						<input class="form-control valKeyN time tim_hr" type="text" tabindex="307"
							id="CtmTimehr" name="deathTime" value="" maxlength="2" disabled/>
					</div>
					<div class="col-md-1 text-center"
						style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
						<strong>:</strong>
					</div>
					<div class="col-md-2 text-center"
						style="padding: 0.10px; margin: 0px; width: 30px;">
						<input class="form-control valKeyN tim_mn" type="text" id="CtmTimeMn" tabindex="308"
							name="deathTimeMn" value="" maxlength="2" disabled/>
					</div>
					<div class="col-xd-1" style="width: 10px;"></div>
					<div class="col-md-4 text-center"
						style="padding: 1px; margin: 0px; width: 80px;">
						<select class="form-control" id="CtmTimeAmPm" name="deathTimeAmPm" tabindex="309" disabled>
							<option value="a.m.">a.m.</option>
							<option value="p.m.">p.m.</option>
						</select>
					</div>

				</div>

			</div>

			<form:input type="hidden" id="reportInstTime" path="reportInstTime" tabindex="310"
				value="${CoreObject.reportInstTime}" />
		</div>


	</div>




	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">17.1</code>Imaging
					time at Reporting Institution<span style:size="2" ; class="italic">(time
						of registration to imaging time at Reporting Institution)</span> </label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio375" value="1" tabindex="311"
						class="custom-control-input btn_imagTime"
						path="reportInstImagTime" disabled="true"
						checked="${CoreObject.reportInstImagTime == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio375"><0-45
						min</label>

				</div>

			</div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio376" value="2" tabindex="312"
						class="custom-control-input btn_imagTime"
						path="reportInstImagTime" disabled="true"
						checked="${CoreObject.reportInstImagTime == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio376">&ge;45min
						to 3 hours </label>

				</div>

			</div>
			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio377" value="3" tabindex="313"
						class="custom-control-input btn_imagTime"
						path="reportInstImagTime" disabled="true"
						checked="${CoreObject.reportInstImagTime == '3' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio377">>3
						to &le;6 hours </label>

				</div>

			</div>

		</div>
	
	
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio378" value="4" tabindex="314"
						class="custom-control-input btn_imagTime"
						path="reportInstImagTime" disabled="true"
						checked="${CoreObject.reportInstImagTime == '4' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio378">
						>6 hours to &le;24hours</label>

				</div>



			</div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio379" value="5" tabindex="315"
						class="custom-control-input btn_imagTime"
						path="reportInstImagTime" disabled="true"
						checked="${CoreObject.reportInstImagTime == '5' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio379">
						>24 hours</label>

				</div>
			</div>
			<div class="col-md-3">

					<input class="reportInst hide" type="text" id="reportInst" name="reportInst"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">18</code>Basis
					of Diagnosis<span style:size="2" ; class="italic">(select
						all applicable)</span> </label>
			</div>
		</div>


		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input basisOfDiag"
						path="diagClinical" tabindex="316" value="1" id="customCheck1-200"
						checked="${CoreObject.diagClinical == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-200">
						Clinical</label>
				</div>
			</div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input basisOfDiag"
						path="diagCT" value="2" tabindex="317" id="customCheck1-201"
						checked="${CoreObject.diagCT == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-201">
						CT </label>
				</div>
			</div>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input basisOfDiag"
						path="diagMRI" tabindex="318" value="3" id="customCheck1-202"
						checked="${CoreObject.diagMRI == '3' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-202">
						MRI </label>
				</div>
			</div>

		</div>


		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<input type="checkbox" class="custom-control-input basisOfDiag"
						tabindex="319" id="customCheck1-203" onClick="enable9()">
					<label class="custom-control-label" for="customCheck1-203">
						Others<span style:size="2" ; class="italic">(Specify)</span>
					</label>
				</div>
			</div>
			<div class="col-md-6">
				<div class="custom-control custom-checkbox mb-5">
					<form:input class="form-control" type="text" id="diagnosis"
						tabindex="320" path="basisOfDiagOthers" maxlength="250"
						disabled="true" value="${CoreObject.basisOfDiagOthers}" />
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<label id="basisofD_Err" class="errorMsg">Please choose at
				least one *</label>
		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">19</code>Type
					of Stroke </label>
			</div>
		</div>


		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-3">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio380" value="1" tabindex="321"
						class="custom-control-input btn_typOfStr" path="typeOfStroke"
						onClick="enable74()"
						checked="${CoreObject.typeOfStroke == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio380">
						Ischemic</label>

				</div>


			</div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio381" value="2" tabindex="322"
						class="custom-control-input btn_typOfStr" path="typeOfStroke"
						onClick="enable75()"
						checked="${CoreObject.typeOfStroke == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio381">
						Intracerebral haemorrhage</label>

				</div>


			</div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio382" value="3" tabindex="323"
						class="custom-control-input btn_typOfStr" path="typeOfStroke"
						onClick="enable76()"
						checked="${CoreObject.typeOfStroke == '3' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio382">
						Subarachnoid Haemorrhage</label>

				</div>

			</div>


		</div>


		<div class="row">
			<div class="col-md-1"></div>

			<div class="col-md-6">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio383" value="4" tabindex="324"
						class="custom-control-input btn_typOfStr" path="typeOfStroke"
						onClick="enable74()"
						checked="${CoreObject.typeOfStroke == '4' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio383">
						Venous stroke</label>

				</div>



			</div>
			<div class="col-md-5">
				<input class="typOfSt hide" type="text" id="typOfSt" name="typOfSt"/>

			</div>

		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">20</code>TOAST
					CRITERIA<span style:size="2" ; class="italic">(for acute
						ischemic stroke)</span></label>
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Large-artery atheroscIerosis</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio396" value="1" tabindex="325"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio396"> </label>

				</div>

			</div>



		</div>
	


	
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Cardioembolism</label>

			</div>
			<div class="col-md-5"></div>



		</div>


	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> i.Rheumatic Valvular</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio397" value="i" tabindex="326"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'i' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio397"> </label>

				</div>

			</div>



		</div>
	

	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> ii.Non-Rheumatic Valvular</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio398" value="ii" tabindex="327"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'ii' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio398"> </label>

				</div>

			</div>



		
	</div>


		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> iii.Non-Valvular</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio399" value="iii" tabindex="328"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'iii' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio399"> </label>

				</div>

			</div>



		</div>
	

	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> iv.CAD</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio400" value="iv" tabindex="329"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'iv' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio400"> </label>

				</div>

			</div>



		
	</div>


		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Small-artery occlusion<span style:size="3"
					; class="italic">(lacune)</span></label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio401" value="2" tabindex="330"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio401"> </label>

				</div>

			</div>



		</div>
	

	
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Stroke of other determined etiology</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio402" value="3" tabindex="331"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == '3' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio402"> </label>

				</div>

			</div>



		
	</div>


	
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label>Stroke of undetermined etiology</label>

			</div>
			<div class="col-md-5"></div>



		</div>
	

	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label>i.Patient extensively evaluated</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio403" value="i" tabindex="332"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'i' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio403"> </label>

				</div>

			</div>



	</div>



	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label>ii.Patient not evaluated</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio405" value="ii" tabindex="333"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'ii' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio405"> </label>

				</div>

			</div>



		
	</div>


	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label>iii.Patient with two competing aetiologies</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio406" value="iii" tabindex="334"
						class="custom-control-input btn_toastCr" path="toastCriteria"
						disabled="true"
						checked="${CoreObject.toastCriteria == 'iii' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio406"> </label>

				</div>

			</div>



		</div>
	</div>
<!-- 	<div class="form-group">
		<div class="row">
			<div class="col-md-5">
				<label id="toastCr_Err" class="errorMsg">Please choose at
					least one *</label>


			</div>
		</div>
	</div> -->
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label><code style="padding-right: 10px; color: black">21.1</code>
					Type of Intracerebral haemorrhage stroke</label>
			</div>

			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio407" value="1"
						class="custom-control-input btn_typOfint" path="haemorrhagestroke"
						tabindex="335" disabled="true"
						checked="${CoreObject.haemorrhagestroke == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio407">
						Primary </label>

				</div>
			</div>
			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio408" value="2"
						class="custom-control-input btn_typOfint" path="haemorrhagestroke"
						tabindex="336" disabled="true"
						checked="${CoreObject.haemorrhagestroke == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio408">
						Secondary </label>

				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-3">
				<label id="typeOfint_Err" class="errorMsg">Please choose at
					least one *</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label><code style="padding-right: 10px; color: black">21.2</code>
					Type of Circulation of Stroke</label>
			</div>

			<div class="col-md-4">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio41" value="1" tabindex="337"
						class="custom-control-input btn_typOfcir" path="typeOfcircStroke"
						checked="${CoreObject.typeOfcircStroke == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio41"> <font>Anterior
							Circulation Stroke </font>
					</label>

				</div>


			</div>
			<div class="col-md-4">



				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio42" value="2" tabindex="338"
						class="custom-control-input btn_typOfcir" path="typeOfcircStroke"
						checked="${CoreObject.typeOfcircStroke == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customRadio42"> <font>Posterior
							Circulation Stroke </font>
					</label>

				</div>


			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-3">
				<input class="typOfcis hide" type="text" id="typOfcis" name="typOfcis"/>
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">22</code>Final
					diagnosis<span style:size="2" ; class="italic">(in words)</span> </label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First
			Ever/Recurrent </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="firstEver"
				tabindex="339" path="firstEver" maxlength="100"
				value="${CoreObject.firstEver}" />
		</div>

	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type
			of Stroke </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="typeOfStroke1"
				tabindex="340" path="typeOfStroke1" maxlength="100"
				value="${CoreObject.typeOfStroke1}" />
		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Territory
			Affected </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="territoryAffected"
				tabindex="341" path="territoryAffected" maxlength="100"
				value="${CoreObject.territoryAffected}" />
		</div>

	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Etiology
		</label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="etiology"
				tabindex="342" path="etiology" maxlength="100"
				value="${CoreObject.etiology}" />
		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Risk
			Factor and Co-morbidties </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="riskFactMorbdt"
				tabindex="343" path="riskFactorandMorbidities" maxlength="100"
				value="${CoreObject.riskFactorandMorbidities}" />
		</div>

	</div>

	<div class="form-group row">

		<label class="col-md-3 col-form-label"><font color="black"><code
					style="padding-right: 10px; color: black">23</code> ICD-10
				description </font></label>
		<div class="col-md-4">
			<form:input class="form-control" type="text" id="icd10Desc"
				tabindex="344" path="icdDesc" maxlength="100"
				value="${CoreObject.icdDesc}" />
		</div>
		<label class="col-md-2 col-form-label text-center"><font color="black">
				ICD-10 code:</font> </label>
		<div class="col-md-3">
			<div class="row">
				<div class="col-md-1 text-center"
						style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 1px; font-size:20px;">
						<strong>I</strong>
				</div>			
				<div class="col-md-4 text-center" >
					<input class="form-control" type="text" id="icd10Code"
						tabindex="345" maxlength="2"
						value="" readonly />
				</div>
				<div class="col-md-1 text-center"
						style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 2px;">
						<strong>.</strong>
				</div>
				<div class="col-md-4 text-center">
					<input class="form-control" type="text" id="icd10Code0"
						tabindex="345"  maxlength="1"
						value="" readonly />
				</div>
			</div>
			<form:input type="hidden" id="icd10Code_input" path="icdCode" value="${CoreObject.icdCode}" />
			
		</div>		
				
	

	</div>

</body>
</html>