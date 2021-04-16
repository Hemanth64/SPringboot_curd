<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/styles/jquery.steps.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Export</title>
</head>
<body>
	<div class="container">
		<header> <jsp:include page="include/title.jsp" /> <jsp:include
			page="include/sidenav.jsp" /> </header>

		<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
			<h2 class="text-center">Export Data</h2>
			<hr>

			<form id="exportfrm" action="excel" method="get" autocomplete="off">
				<div class="form-group row">

					<div class="col-md-2"></div>
					<div class="col-md-2">

						<label>Center Details</label>
						<!-- <div class="custom-control custom-radio mb-3">
							<input type="radio" id="customRadio1" name="exportfrm"
								class="custom-control-input" value="1" checked> <label
								class="custom-control-label" for="customRadio1"> <font>
									Center Details</font>
							</label>	



						</div> -->
					</div>
					<div class="col-md-6">
						<select name='id9' id='id9' class="form-control selectpicke"
							tabindex="1">
							<option value="100">National Centre for Disease
								Informatics and Research</option>
							<option value="saab">ICMR</option>

						</select>
					</div>
				</div>
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio2" name="exportfrm"
									class="custom-control-input" value="P"> <label
									class="custom-control-label" for="customRadio2"> <font>
										Partial Data </font>
								</label> <input type="text" name='id10' id='id10' value="P"
									class="form-control hide" tabindex="1" maxlength='10'>
							</div>
						</div>


						<div class="col-md-1"></div>
						<div class="col-md-2">
							<div class="custom-control custom-radio mb-3">
								<input type="radio" id="customRadio3" name="exportfrm"
									class="custom-control-input" value="F"> <label
									class="custom-control-label" for="customRadio3"> <font>
										Final Data </font>
								</label> <input type="text" name='id11' id='id11' value="F"
									class="form-control hide" tabindex="1" maxlength='6'>

							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="form-group row">
					
						<div class="col-md-2"></div>
						<div class="col-md-2">
							<!-- <div class="custom-control custom-radio mb-3">
							<input type="radio" id="customRadio5" name="exportfrm"
								class="custom-control-input" value="2"> <label
								class="custom-control-label" for="customRadio5"> <font>
									Date of Entry </font>
							</label>
						</div> -->
							<label> Date of Entry </label>
						</div>
						<div class="col-md-7">

							
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> From </span>
								</div>
								<input type="text" class="form-control dat" name='id12'
									id='id12' tabindex="1" maxlength='10'>
								<div class="input-group-append  id12icn">
									&nbsp;<i class="fa fa-calendar fa-2x transparent"
										aria-hidden="true"></i>
								</div>
								<div class="input-group-prepend">
									<span class="input-group-text"> To </span>
								</div>
								<input type="text" class="form-control dat" name='id13'
									id='id13' tabindex="1" maxlength='10'>
								<div class="input-group-append  id13icn">
									&nbsp;<i class="fa fa-calendar fa-2x transparent"
										aria-hidden="true"></i>
								</div>
							</div>


						</div>
					</div>
				</div>
				<hr>
				<br>
				<!-- <div class="form-group">
					<div class="row ">
						<div class="col-md-4"></div>
						<div class="col-md-3 " id="name">








							<input type="text" name='id2' id='id2' class="form-control hide"
								tabindex="1" maxlength='7'> 
								
								<input type="text"
								name='id3' id='id3' class="form-control hide" tabindex="1"
								maxlength='20'> 

							
						</div>
					</div>
					<div class="row hide id5">
						<div class="col-md-3"></div>
						<div class="input-group" id="name">
							<div class="input-group-prepend">
								<span class="input-group-text"> Between </span>
							</div>
							<input type="text" class="form-control dat" name='id12' id='id12'
								tabindex="1" maxlength='10'>
							<div class="input-group-append  id5icn">
								&nbsp;<i class="fa fa-calendar fa-2x transparent"
									aria-hidden="true"></i>
							</div>
							<div class="input-group-prepend">
								<span class="input-group-text"> And </span>
							</div>
							<input type="text" class="form-control dat" name='id13' id='id13'
								tabindex="1" maxlength='10'>
							<div class="input-group-append  id6icn">
								&nbsp;<i class="fa fa-calendar fa-2x transparent"
									aria-hidden="true"></i>
							</div>
						</div>

					</div>

				</div> -->
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-4">
							<input class="btn btn-success " type='submit' value='Export'
								id="bt2" onClick="window.location.reload();" />
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
<style type="text/css">
.hide {
	display: none;
}

.transparent {
	background-color: transparent !important;
	box-shadow: inset 0px 1px 0 rgba(0, 0, 0, .075);
}

.page-header {
	background-color: lightblue;
	padding: 10px;
}
</style>

<script type="text/javascript">
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
<script type="text/javascript">
	$(function() {
		var date = new Date();
		var currentMonth = date.getMonth();
		var currentDate = date.getDate();
		var currentYear = date.getFullYear();

		$("#id12").datepicker(
				{
					dateFormat : 'dd-mm-yy',
					yearRange : '1930:2099',
					maxDate : new Date(currentYear, currentMonth, currentDate),
					showButtonPanel : false,
					changeMonth : true,
					changeYear : true,
					loseText : 'Clear',
					gotoCurrent : true,
					onSelect : function() {
						$('#id8').datepicker('option', 'minDate',
								$("#id7").datepicker("getDate"));
					},
					onClose : function() {
						$("#id7").datepicker("destroy");
						this.focus()
					}
				});

		$(".id12icn").click(
				function() {
					$("#id7").datepicker(
							{
								dateFormat : 'dd-mm-yy',
								yearRange : '1930:2099',
								maxDate : new Date(currentYear, currentMonth,
										currentDate),
								showButtonPanel : false,
								changeMonth : true,
								changeYear : true,
								loseText : 'Clear',
								gotoCurrent : true,
								onSelect : function() {
									$('#id8').datepicker('option', 'minDate',
											$("#id7").datepicker("getDate"));
								},
								onClose : function() {
									$("#id7").datepicker("destroy");
									this.focus();

								}
							}).focus();
				});

		//---------------------------

		$("#id13").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {
				$("#id8").datepicker("destroy");
				this.focus();
			}
		});

		$(".id13icn").click(function() {
			$("#id8").focus();
			$("#id8").datepicker({
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$("#id8").datepicker("destroy");
					this.focus();
				}
			});
		});
	});
</script>
</html>