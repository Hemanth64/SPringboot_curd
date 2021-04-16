<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>HBSR Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>
.hide {
	display: none;
}

.page-header {
	background-color: lightblue;
	padding: 10px;
}
div {
  text-align: justify;
  text-justify: inter-word;
}
</style>
</head>



<body>
	<div class="container">

		<header>
			<jsp:include page="include/title.jsp" />
			<jsp:include page="include/sidenav.jsp" />
		</header>

		<div class="customscroll customscroll-10-p height-100-p ">
			<%-- <div class="page-header ">	
			<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				
			</div>
			<div class="col-md-2">
			</div>
			</div>	
			
				<div class="row">
					<div class="col-md-3">						
							<h5 class="text-primary"> HBSR - Home</h5>			
					</div>
					
					<div class="col-md-6 text-center" style="font-size:20px; color:red;">						
							<span  id="date_time" ></span>			
					</div>
					
					
					<div class="col-md-3 text-right"><h5><span class="text-primary">Welcome to Logged in User :</span> <span class="text-success"> ${loggedinuser}</span></h5></div>
					
			 </div>
							
			</div> --%>

			<div
				class="bg-white pd-30 box-shadow border-radius-5 mb-30 xs-pd-20-10">
				<div class="row clearfix justify-content-start d-flex">
					<div class="col-lg-12 col-md-12 col-sm-12 ">
						<div class="browser-visits " >





							<h6>
								<b>Introduction and Background</b>
							</h6>
							<p>Hospital based stroke registries can support in developing
								a network of hospitals treating stroke patients in different
								regions of India to generate evidence on access to stroke care
								in different treatment settings.</p>

							<h6>
								<b>Objectives of HBSR:</b> To generate reliable data on
							</h6>


							<p style="padding-left: 30px;">
								a. Pattern of Stroke<br> b. Pattern of Care and Treatment

							</p>

							<h6>
								<b>Methodology:</b>
							</h6>
							<p>
							All the cases presenting within 4 weeks of onset of stroke, from
							all departments (Neurology, Medicine, Neurosurgery, Radiology,Rehabilitation
							 and Ayurvedic departments) and wards of the
							hospital will be included in the study. Each HBSR will be led by
							Principal Investigator (Neurologist/ Radiologist/ Medicine/
							Intensivist) and Co-PIs from the HBSR centre. The HBSR
							Institution will find cases by the following methods:</p>

							<p style="padding-left: 30px;">
								1. In ahospital (active case detection)<br> 2. Daily review
								of computer generated hospital and emergency department
								admission registers.<br> 3. Daily review of acute medical /
								neurology wards and case note review.<br> 4. Daily review
								of all case notes of patients dying in hospital<br> 5.
								Review of Computed Tomography (CT) and Magnetic Resonance
								Imaging (MRI) imaging reports<br> 6. Referrals of possible
								acute cerebrovascular events by clinics, nursing homes,
								hospitals<br> 7. Monthly review of hospital discharge data.<br>
								8. TIA patients in hospitals should be followed up till 24 hours
								after onset.<br> 9. Review of all referrals and case
								records for brain, carotid, or cerebral vascular imaging.<br>
								10. High risk group patients with acute coronary syndrome or an
								acute peripheral vascular event or an elective investigation
								like coronary angiography admitted in the hospital can be
								followed up. <br>11. Verify all medically certified death
								certificates for "stroke" as a cause of death.
							</p>

							<h6>
								<b>Selection of cases:</b>
							</h6>
							<p style="padding-left: 30px;">
								1. First ever and recurrent stroke will be included<br> 2.
								TIA and non-vascular stroke will be excluded
							</p>
							<h6>
								<b>Registration of Stroke cases:</b>
							</h6>
							<p>Confirmed stroke cases are to be registered and are
								assigned Hospital Registration Number.<u> <b> <a
										href="resources/pdf/flowchart.pdf" target="_blank"
										rel="noopener" style="color: purple"> Framework of registering
								a stroke case in HBSR can be followed to register cases for the
								HBSR.</a></b></u></p>
							<h6>
								<b>Data abstraction and core-form:</b>
							</h6>
							<p>HBSR team extracts the following data in the Core Form</p>

							<table
								class="table table-hover table-bordered table-condensed table-striped" align="center" cellpadding="2" cellspacing="2" border="0">

								<tbody>
									<tr>
										<td>1. Identifying information</td>
										<td>6. Treatment details - thrombolysis/
											&nbsp;&nbsp;&nbsp;surgery/medical/rehabilitation/Complications</td>

									</tr>
									<tr>
										<td>2. Diagnosis of Stroke - Basis of diagnosis, Final
											Diagnosis, Type &nbsp;&nbsp;&nbsp;of Stroke, ICD -10</td>
										<td>7. Status at discharge - Alive or Dead, Functional
											status</td>

									</tr>
									<tr>
										<td>3. Clinical Information - symptoms, signs & Severity
											of stroke</td>
										<td>8. Follow - up status at 28 days & 3 months after
											onset of &nbsp;&nbsp;&nbsp;stroke</td>

									</tr>
									<tr>
										<td>4. Imaging studies - CT and /or MRI</td>
										<td>9. Vital status on follow up</td>

									</tr>
									<tr>
										<td>5. Risk Factors and Co-Morbid Conditions - Such as
											behavioral &nbsp;&nbsp;&nbsp;and metabolic risk factors</td>
										<td>10. Death - Cause of death</td>

									</tr>

								</tbody>
							</table>
							<p>
								The HBSR core form in the software has in-built quality checks
								during data entry to avoid errors. Other quality checks like
								consistency, duplicity and range checks will be developed as
								reports by NCDIR.<u> <b> <a
										href="resources/pdf/HBSR Core Form_Final.pdf" target="_blank"
										rel="noopener" style="color: purple">Click here</a></b></u> to
								download HBSR Core Form.
							</p>
							<h6>
								<b>Follow up:</b>
							</h6>
							<p>All registered cases are to be followed up at 28 days & 3
								months after onset of stroke during hospital visits or by
								telephone or letters. The functional status (modified Rankin
								scale) is to be collected during admission, discharge, 28th day
								and 3 months. Vital status will be assessed at discharge, 28th
								day and 3 months after onset of stroke.</p>
							<h6>
								<b>Data collation, transmission and security:</b>
							</h6>
							<p>
								Data is recorded in the Core Form and transmitted to ICMR- NCDIR
								through this secure, web-based software system coordinated by
								the ICMR-National Centre for Disease Informatics and Research
								(NCDIR). Transmission of data has to be done regularly through<u>
									<b><a href="http://hbsr.ncdirindia.org" target="_blank"
										rel="noopener" style="color: purple">http://hbsr.ncdirindia.org</a></b>
								</u> The login ID and password for each participating centre is
								provided separately.
							</p>

							<p>ICMR-NCDIR is a custodian of data and HBSR institutions
								shall abide by the ICMR-NCDIR policy on data processing and
								disclosure to ensure a stable, reliable, ethical and legally
								compliant framework for data collection, use and dissemination.
								NCDIR do not share any patient data between the institutions and
								with any other third party.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">

				<div
					class="footer-wrap bg-white pd-20 mb-20 border-radius-5 box-shadow">
					National Centre for Disease Informatics and Research, Bengaluru.</div>


			</div>
		</div>
	</div>



</body>
<script>
	$(function() {
		date_time('date_time');
	});

	var d = new Date();
	var fullDate = new Date()
	$("#curDate").html(fullDate.formate('yyyy-MM-dd H:i:s'));

	function date_time(id) {
		date = new Date;
		year = date.getFullYear();
		month = date.getMonth();
		months = new Array('January', 'February', 'March', 'April', 'May',
				'June', 'Jully', 'August', 'September', 'October', 'November',
				'December');
		d = date.getDate();
		day = date.getDay();
		days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday',
				'Thursday', 'Friday', 'Saturday');
		h = date.getHours();
		if (h < 10) {
			h = "0" + h;
		}
		m = date.getMinutes();
		if (m < 10) {
			m = "0" + m;
		}
		s = date.getSeconds();
		if (s < 10) {
			s = "0" + s;
		}
		result = ' ' + months[month] + ' ' + d + ' ' + year + ' ' + h + ':' + m
				+ ':' + s;
		document.getElementById(id).innerHTML = result;
		setTimeout('date_time("' + id + '");', '1000');
		return true;
	}
</script>
</html>