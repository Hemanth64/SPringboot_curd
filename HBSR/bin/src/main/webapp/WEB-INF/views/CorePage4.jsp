<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script type="text/javascript">
$(function() {
	$("#CtTimeAmPm").click(
			function() {
				$("#reportInstTime").val(
						$("#CtTimehr").val() + ":" + $("#CtTimeMn").val()
								+ " " + $("#CtTimeAmPm").val())
			});
	if ($("#reportInstTime").val() != "") {
		var str = $("#reportInstTime").val();
		$("#CtTimehr").val(str.substring(0, 2));
		$("#CtTimeMn").val(str.substring(3, 5));
		$("#CtTimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
				'selected', true);
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

					<form:radiobutton id="customRadio39" value="1"  tabindex="262"
						class="custom-control-input" path="reportInstCTandMRI"
						onClick="enable78()" checked="${CoreObject.reportInstCTandMRI == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio39"> <font>Yes
					</font>
					</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio40" value="2"  tabindex="262"
						class="custom-control-input" path="reportInstCTandMRI"
						onClick="enable78()" checked="${CoreObject.reportInstCTandMRI == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio40"> <font>No
					</font>
					</label>

				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class=" col-md-2">
				<label class=" col-md-1 col-form-label">Date: </label>
			</div>

			<div class="col-md-2">

				<form:input type="text" class="form-control date-picker dat"  tabindex="263"
					path="reportInstDate" id="ctMridate" 
					disabled="true" value="${CoreObject.reportInstDate}"/>
			</div>
			<div class=" col-md-2">
				<label class=" col-md-4 col-form-label">Time: </label>
			</div>
			<div class="col-md-3">

				<%-- <form:input type="text" class="form-control " id="ctMritime"  tabindex="264"
					placeholder="" path="reportInstTime" maxlength="4"
					disabled="true" value="${CoreObject.reportInstTime}"/> --%>
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

		<form:input type="hidden" id="reportInstTime" path="reportInstTime"
			value="${CoreObject.reportInstTime}" />
	</div>

			
		</div>
	



	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">17.1</code>Imaging
					time at Reporting Institution<span style:size="2" ; class="italic">(time
						of registration to imaging time at reporting institution)</span> </label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio375" value="1"  tabindex="265"
						class="custom-control-input" path="reportInstImagTime"
						disabled="true" checked="${CoreObject.reportInstImagTime == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio375"><0-45
						min</label>

				</div>

			</div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio376" value="2"  tabindex="266"
						class="custom-control-input" path="reportInstImagTime"
						disabled="true" checked="${CoreObject.reportInstImagTime == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio376">&ge;45min
						to 3 hours </label>

				</div>

			</div>
			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio377" value="3"  tabindex="267"
						class="custom-control-input" path="reportInstImagTime"
						disabled="true" checked="${CoreObject.reportInstImagTime == '3' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio377">>3
						to 6&le; hours </label>

				</div>

			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio378" value="4"  tabindex="268"
						class="custom-control-input" path="reportInstImagTime"
						disabled="true" checked="${CoreObject.reportInstImagTime == '4' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio378">
						>6 hours to &le;24hours</label>

				</div>



			</div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio379" value="5"  tabindex="269"
						class="custom-control-input" path="reportInstImagTime"
						disabled="true" checked="${CoreObject.reportInstImagTime == '5' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio379">
						>24 hours</label>

				</div>
			</div>
			<div class="col-md-3"></div>
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
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="diagClinical"  tabindex="270"
						value="1" id="customCheck1-200" checked="${CoreObject.diagClinical == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customCheck1-200">
						Clinical</label>
				</div>
			</div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="diagCT" value="2"  tabindex="271"
						id="customCheck1-201" checked="${CoreObject.diagCT == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customCheck1-201">
						CT </label>
				</div>
			</div>
			<div class="col-md-3">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="diagMRI"  tabindex="272"
						value="3" id="customCheck1-202" checked="${CoreObject.diagMRI == '3' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customCheck1-202">
						MRI </label>
				</div>
			</div>

		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<input type="checkbox" class="custom-control-input"  tabindex="273"
						id="customCheck1-203" onClick="enable9()"> <label
						class="custom-control-label" for="customCheck1-203">
						Others<span style:size="2" ; class="italic">(Specify)</span>
					</label>
				</div>
			</div>
			<div class="col-md-6">
				<div class="custom-control custom-checkbox mb-5">
					<form:input class="form-control" type="text" id="diagnosis"  tabindex="274"
						path="basisOfDiagOthers" maxlength="250" disabled="true" value="${CoreObject.basisOfDiagOthers}"/>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">19</code>Type
					of Stroke </label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-3">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio380" value="1"  tabindex="275"
						class="custom-control-input" path="typeOfStroke"
						onClick="enable74()" checked="${CoreObject.typeOfStroke == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio380">
						Ischemic</label>

				</div>


			</div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio381" value="2"  tabindex="276"
						class="custom-control-input" path="typeOfStroke"
						onClick="enable75()" checked="${CoreObject.typeOfStroke == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio381">
						Intracerebral haemorrhage</label>

				</div>


			</div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio382" value="3"  tabindex="277"
						class="custom-control-input" path="typeOfStroke"
						onClick="enable76()" checked="${CoreObject.typeOfStroke == '3' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio382">
						Subarachnoid Haemorrhage</label>

				</div>

			</div>


		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>

			<div class="col-md-6">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio383" value="4"  tabindex="278"
						class="custom-control-input" path="typeOfStroke"
						onClick="enable76()" checked="${CoreObject.typeOfStroke == '4' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio383">
						Venous stroke</label>

				</div>



			</div>
			<div class="col-md-5"></div>

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
					<form:radiobutton id="customRadio396" value="1"  tabindex="279"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio396"> </label>

				</div>

			</div>



		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Cardioembolism</label>

			</div>
			<div class="col-md-5"></div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> i.Rheumatic</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio397" value="i"  tabindex="280"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'i' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio397"> </label>

				</div>

			</div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> ii.Non-Rheumatic Valvular</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio398" value="ii"  tabindex="281"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'ii' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio398"> </label>

				</div>

			</div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> iii.Non-Valvular</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio399" value="iii"  tabindex="282"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'iii' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio399"> </label>

				</div>

			</div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label> iv.CAD</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio400" value="iv"  tabindex="283"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'iv' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio400"> </label>

				</div>

			</div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Small-artery occlusion<span style:size="3"
					; class="italic">(lacunae)</span></label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio401" value="2"  tabindex="284"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio401"> </label>

				</div>

			</div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label> Stroke of other determined etiology</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio402" value="3"  tabindex="285"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == '3' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio402"> </label>

				</div>

			</div>



		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">



				<label>Stroke of undertermined etilogy</label>

			</div>
			<div class="col-md-5"></div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label>i.Patient extensively evaluated</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio403" value="i"  tabindex="286"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'i' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio403"> </label>

				</div>

			</div>



		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label>ii.Patient not evaluated</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio405" value="ii"  tabindex="287"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'ii' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio405"> </label>

				</div>

			</div>



		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">



				<label>iii.Patient with two compenting aetilogies</label>

			</div>
			<div class="col-md-5">
				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio406" value="iii"  tabindex="288"
						class="custom-control-input" path="toastCriteria" disabled="true" checked="${CoreObject.toastCriteria == 'iii' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio406"> </label>

				</div>

			</div>



		</div>
	</div>
	<div class="form-group">
		<div class="row">

			<div class="col-md-6">
				<label><code style="padding-right: 10px; color: black">21.1</code>
					Type of internal cerebral haemorrhage stroke</label>
			</div>

			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio407" value="1"
						class="custom-control-input" path="haemorrhagestroke"  tabindex="289"
						disabled="true" checked="${CoreObject.haemorrhagestroke == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio407">
						Primary </label>

				</div>
			</div>
			<div class="col-md-3">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio408" value="2"
						class="custom-control-input" path="haemorrhagestroke"  tabindex="290"
						disabled="true" checked="${CoreObject.haemorrhagestroke == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio408">
						Secondary </label>

				</div>
			</div>

		</div>
	</div>

	<div class="form-group">
		<div class="row">

			<div class="col-md-4">
				<label><code style="padding-right: 10px; color: black">21.2</code>
					Type of circulation stroke</label>
			</div>

			<div class="col-md-4">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio41" value="1"  tabindex="291"
						class="custom-control-input" path="typeOfcircStroke" checked="${CoreObject.typeOfcircStroke == '1' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio41"> <font>Anterior
							Circulation Stroke </font>
					</label>

				</div>


			</div>
			<div class="col-md-4">



				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio42" value="2"  tabindex="292"
						class="custom-control-input" path="typeOfcircStroke" checked="${CoreObject.typeOfcircStroke == '2' ? 'checked' : '' } "/>
					<label class="custom-control-label" for="customRadio42"> <font>Posterior
							Circulation Stroke </font>
					</label>

				</div>


			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">22</code>Final
					Diagnosis<span style:size="2" ; class="italic">(in words)</span> </label>
			</div>
		</div>
	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First
			Ever/Recurrent </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="name2"  tabindex="293"
				path="firstEver" maxlength="100" value="${CoreObject.firstEver}"/>
		</div>

	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type
			of Stroke </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="name2"  tabindex="294"
				path="typeOfStroke1" maxlength="100" value="${CoreObject.typeOfStroke1}"/>
		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Territory
			Affected </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="name2"  tabindex="295"
				path="territoryAffected" maxlength="100" value="${CoreObject.territoryAffected}"/>
		</div>

	</div>

	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Etiology
		</label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="name2"  tabindex="296"
				path="etiology" maxlength="100" value="${CoreObject.etiology}"/>
		</div>

	</div>
	<div class="form-group row">

		<label class="col-md-5 col-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Risk
			Factor and Co morbidties Ever/Recurrent </label>
		<div class="col-md-7">
			<form:input class="form-control valKeyC" type="text" id="name2"  tabindex="297"
				path="riskFactorandMorbidities" maxlength="100" value="${CoreObject.riskFactorandMorbidities}"/>
		</div>

	</div>

	<div class="form-group row">

		<label class="col-md-3 col-form-label"><font color="black"><code
					style="padding-right: 10px; color: black">23</code> ICD-10
				Description </font></label>
		<div class="col-md-4">
			<form:input class="form-control" type="text" id="name2"  tabindex="298"
				path="icdDesc" maxlength="100" value="${CoreObject.icdDesc}"/>
		</div>
		<label class="col-md-2 col-form-label"><font color="black">
				ICD-10 code:</font> </label>
		<div class="col-md-1 ">
			<form:input class="form-control" type="text" id="desi2"  tabindex="299"
				path="icdCode" maxlength="3" value="${CoreObject.icdCode}"/>
		</div>

	</div>

</body>
</html>