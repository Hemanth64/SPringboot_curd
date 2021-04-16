<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">
	$(function() {
		$("#TimeAmPm").click(
				function() {
					$("#patlastseentime").val(
							$("#Timehr").val() + ":" + $("#TimeMn").val() + " "
									+ $("#TimeAmPm").val())
				});
		if ($("#patlastseentime").val() != "") {
			var str = $("#patlastseentime").val();
			$("#Timehr").val(str.substring(0, 2));
			$("#TimeMn").val(str.substring(3, 5));
			$("#TimeAmPm option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	$(function() {
		$("#TimeAmPm1").click(
				function() {
					$("#onsetstroketime").val(
							$("#Timehr1").val() + ":" + $("#TimeMn1").val()
									+ " " + $("#TimeAmPm1").val())
				});
		if ($("#onsetstroketime").val() != "") {
			var str = $("#onsetstroketime").val();
			$("#Timehr1").val(str.substring(0, 2));
			$("#TimeMn1").val(str.substring(3, 5));
			$("#TimeAmPm1 option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});

	$(function() {
		$("#TimeAmPm2").click(
				function() {
					$("#firstStrsymptime").val(
							$("#Timehr2").val() + ":" + $("#TimeMn2").val()
									+ " " + $("#TimeAmPm2").val())
				});
		if ($("#firstStrsymptime").val() != "") {
			var str = $("#firstStrsymptime").val();
			$("#Timehr2").val(str.substring(0, 2));
			$("#TimeMn2").val(str.substring(3, 5));
			$("#TimeAmPm2 option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	$(function() {
		$("#TimeAmPm3").click(
				function() {
					$("#aarivaltime").val(
							$("#Timehr3").val() + ":" + $("#TimeMn3").val()
									+ " " + $("#TimeAmPm3").val())
				});
		if ($("#aarivaltime").val() != "") {
			var str = $("#aarivaltime").val();
			$("#Timehr3").val(str.substring(0, 2));
			$("#TimeMn3").val(str.substring(3, 5));
			$("#TimeAmPm3 option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
	
	$(function() {
		$("#TimeAmPm4").click(
				function() {
					$("#historyTIAtime").val(
							$("#Timehr4").val() + ":" + $("#TimeMn4").val()
									+ " " + $("#TimeAmPm4").val())
				});
		if ($("#historyTIAtime").val() != "") {
			var str = $("#historyTIAtime").val();
			$("#Timehr4").val(str.substring(0, 2));
			$("#TimeMn4").val(str.substring(3, 5));
			$("#TimeAmPm4 option[value='" + str.substring(6, 10) + "']").prop(
					'selected', true);
		}
	});
</script>
</head>
<body>
	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">10</code>Cultural
					group <span class="italic"><font size="2">(only for
							North East HBSRs)</font></span></label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						onclick="selectOnlyThis(this)" tabindex="66" value="1"
						id="customCheck1-32"
						checked="${CoreObject.cultural == '1' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-32">
						Ahom </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						onclick="selectOnlyThis(this)" tabindex="67" value="2"
						id="customCheck1-34"
						checked="${CoreObject.cultural == '2' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-34">
						Aimol </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						onclick="selectOnlyThis(this)" tabindex="68" value="3"
						id="customCheck1-35"
						checked="${CoreObject.cultural == '3' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-35">
						Anal </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						onclick="selectOnlyThis(this)" tabindex="69" value="4"
						id="customCheck1-36"
						checked="${CoreObject.cultural == '4' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-36">
						Boro </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						onclick="selectOnlyThis(this)" tabindex="70" value="5"
						id="customCheck1-37"
						checked="${CoreObject.cultural == '5' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-37">
						Bhutias </label>
				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						onclick="selectOnlyThis(this)" tabindex="71" value="6"
						id="customCheck1-38"
						checked="${CoreObject.cultural == '6' ? 'checked' : '' } " />
					<label class="custom-control-label" for="customCheck1-38">
						Chakma </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '7' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="72" value="7"
						id="customCheck1-39" />
					<label class="custom-control-label" for="customCheck1-39">
						Chamars </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '8' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="73" value="8"
						id="customCheck1-40" />
					<label class="custom-control-label" for="customCheck1-40">
						Chiru </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '9' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="74" value="9"
						id="customCheck1-41" />
					<label class="custom-control-label" for="customCheck1-41">
						Chothe </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '10' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="75" value="10"
						id="customCheck1-42" />
					<label class="custom-control-label" for="customCheck1-42">
						Deuri </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '11' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="76" value="11"
						id="customCheck1-43" />
					<label class="custom-control-label" for="customCheck1-43">
						Gangte </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '12' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="77" value="12"
						id="customCheck1-44" />
					<label class="custom-control-label" for="customCheck1-44">
						Hmar </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '13' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="78" value="13"
						id="customCheck1-45" />
					<label class="custom-control-label" for="customCheck1-45">
						Kachari </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '14' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="79" value="14"
						id="customCheck1-46" />
					<label class="custom-control-label" for="customCheck1-46">
						Koet </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '15' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="80" value="15"
						id="customCheck1-47" />
					<label class="custom-control-label" for="customCheck1-47">
						Khongsai </label>
				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '16' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="81" value="16"
						id="customCheck1-48" />
					<label class="custom-control-label" for="customCheck1-48">
						Koch </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '17' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="82" value="17"
						id="customCheck1-49" />
					<label class="custom-control-label" for="customCheck1-49">
						Kompurum </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.repInst == '18' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="83" value="18"
						id="customCheck1-50" />
					<label class="custom-control-label" for="customCheck1-50">
						kuki </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '19' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="84" value="19"
						id="customCheck1-51" />
					<label class="custom-control-label" for="customCheck1-51">
						Lam kang </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '20' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="85" value="20"
						id="customCheck1-52" />
					<label class="custom-control-label" for="customCheck1-52">
						Lengmei </label>
				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '21' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="86" value="21"
						id="customCheck1-53" />
					<label class="custom-control-label" for="customCheck1-53">
						Lepchas </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '22' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="87" value="22"
						id="customCheck1-54" />
					<label class="custom-control-label" for="customCheck1-54">
						Mao </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '23' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="88" value="23"
						id="customCheck1-55" />
					<label class="custom-control-label" for="customCheck1-55">
						Mara </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '24' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="89" value="24"
						id="customCheck1-56" />
					<label class="custom-control-label" for="customCheck1-56">
						Maram </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '25' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="90" value="25"
						id="customCheck1-57" />
					<label class="custom-control-label" for="customCheck1-57">
						Maria </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '26' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="91" value="26"
						id="customCheck1-58" />
					<label class="custom-control-label" for="customCheck1-58">
						Maring </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '27' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="92" value="27"
						id="customCheck1-59" />
					<label class="custom-control-label" for="customCheck1-59">
						Meitei </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '28' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="93" value="28"
						id="customCheck1-60" />
					<label class="custom-control-label" for="customCheck1-60">
						Miri </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '29' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="94" value="29"
						id="customCheck1-61" />
					<label class="custom-control-label" for="customCheck1-61">
						Mishimi </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '30' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="95" value="30"
						id="customCheck1-62" />
					<label class="custom-control-label" for="customCheck1-62">
						Mishing </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '31' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="96" value="31"
						id="customCheck1-63" />
					<label class="custom-control-label" for="customCheck1-63">
						Mizo </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '32' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="97" value="32"
						id="customCheck1-64" />
					<label class="custom-control-label" for="customCheck1-64">
						Monsang </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '33' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="98" value="33"
						id="customCheck1-65" />
					<label class="custom-control-label" for="customCheck1-65">
						Moran </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '34' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="99" value="34"
						id="customCheck1-66" />
					<label class="custom-control-label" for="customCheck1-66">
						Moyon </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '35' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="100" value="35"
						id="customCheck1-67" />
					<label class="custom-control-label" for="customCheck1-67">
						Nepalese </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '36' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="101" value="36"
						id="customCheck1-68" />
					<label class="custom-control-label" for="customCheck1-68">
						paite </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '37' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="102" value="37"
						id="customCheck1-69" />
					<label class="custom-control-label" for="customCheck1-69">
						Paomei </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '38' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="103" value="38"
						id="customCheck1-70" />
					<label class="custom-control-label" for="customCheck1-70">
						Pawih </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '39' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="104" value="39"
						id="customCheck1-71" />
					<label class="custom-control-label" for="customCheck1-71">
						Rabha </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '40' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="105" value="40"
						id="customCheck1-72" />
					<label class="custom-control-label" for="customCheck1-72">
						Raj Bangshi </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '41' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="106" value="41"
						id="customCheck1-73" />
					<label class="custom-control-label" for="customCheck1-73">
						Rongmei </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '42' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="107" value="42"
						id="customCheck1-74" />
					<label class="custom-control-label" for="customCheck1-74">
						Simte </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '43' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="108" value="43"
						id="customCheck1-75" />
					<label class="custom-control-label" for="customCheck1-75">
						Tangkhul </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '44' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="109" value="44"
						id="customCheck1-76" />
					<label class="custom-control-label" for="customCheck1-76">
						Tarao </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '45' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="110" value="45"
						id="customCheck1-77" />
					<label class="custom-control-label" for="customCheck1-77">
						Teli </label>
				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '46' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="111" value="46"
						id="customCheck1-78" />
					<label class="custom-control-label" for="customCheck1-78">
						Thangal </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '47' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="112" value="47"
						id="customCheck1-79" />
					<label class="custom-control-label" for="customCheck1-79">
						Waiphei </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '48' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="113" value="48"
						id="customCheck1-80" />
					<label class="custom-control-label" for="customCheck1-80">
						Zemei </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '49' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="114" value="49"
						id="customCheck1-81" />
					<label class="custom-control-label" for="customCheck1-81">
						Zou </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '50' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="115" value="50"
						id="customCheck1-82" />
					<label class="custom-control-label" for="customCheck1-82">
						Dimcha </label>
				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '51' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="116" value="51"
						id="customCheck1-83" />
					<label class="custom-control-label" for="customCheck1-83">
						BishnuPriya </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '52' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="117" value="52"
						id="customCheck1-84" />
					<label class="custom-control-label" for="customCheck1-84">
						Naga </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '53' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="118" value="53"
						id="customCheck1-85" />
					<label class="custom-control-label" for="customCheck1-85">
						Adi </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '54' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="119" value="54"
						id="customCheck1-86" />
					<label class="custom-control-label" for="customCheck1-86">
						Bramhin </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '55' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="120" value="55"
						id="customCheck1-87" />
					<label class="custom-control-label" for="customCheck1-87">
						Jogi </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '56' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="121" value="56"
						id="customCheck1-88" />
					<label class="custom-control-label" for="customCheck1-88">
						Kalita </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '57' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="122" value="57"
						id="customCheck1-89" />
					<label class="custom-control-label" for="customCheck1-89">
						Kayastha </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '58' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="123" value="58"
						id="customCheck1-90" />
					<label class="custom-control-label" for="customCheck1-90">
						Koibarta </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '59' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="124" value="59"
						id="customCheck1-91" />
					<label class="custom-control-label" for="customCheck1-91">
						Marwari </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '60' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="125" value="60"
						id="customCheck1-92" />
					<label class="custom-control-label" for="customCheck1-92">
						Muttock </label>
				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '61' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="126" value="61"
						id="customCheck1-93" />
					<label class="custom-control-label" for="customCheck1-93">
						Nocte </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '62' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="127" value="62"
						id="customCheck1-94" />
					<label class="custom-control-label" for="customCheck1-94">
						Tea-tribe </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '63' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="128" value="63"
						id="customCheck1-95" />
					<label class="custom-control-label" for="customCheck1-95">
						Tiwa/Lalung </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '64' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="129" value="64"
						id="customCheck1-96" />
					<label class="custom-control-label" for="customCheck1-96">
						Monpa </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						value="65"
						checked="${CoreObject.cultural == '65' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="130" id="customCheck1-97" />
					<label class="custom-control-label" for="customCheck1-97">
						Sherdukpen </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '66' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="131" value="66"
						id="customCheck1-98" />
					<label class="custom-control-label" for="customCheck1-98">
						Aka </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '67' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="132" value="67"
						id="customCheck1-99" />
					<label class="custom-control-label" for="customCheck1-99">
						miji </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '68' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="133" value="68"
						id="customCheck1-100" />
					<label class="custom-control-label" for="customCheck1-100">
						Nyishi </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '69' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="134" value="69"
						id="customCheck1-101" />
					<label class="custom-control-label" for="customCheck1-101">
						Galo </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '70' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="135" value="70"
						id="customCheck1-102" />
					<label class="custom-control-label" for="customCheck1-102">
						Tagin </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '71' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="136" value="71"
						id="customCheck1-103" />
					<label class="custom-control-label" for="customCheck1-103">
						Hill Miri </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '72' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="137" value="72"
						id="customCheck1-104" />
					<label class="custom-control-label" for="customCheck1-104">
						Apatani </label>
				</div>
			</div>
			<div class="col-md-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '73' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="138" value="73"
						id="customCheck1-105" />
					<label class="custom-control-label" for="customCheck1-105">
						Khampti </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '74' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="139" value="74"
						id="customCheck1-106" />
					<label class="custom-control-label" for="customCheck1-106">
						Tangsa </label>
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '75' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="140" value="75"
						id="customCheck1-107" />
					<label class="custom-control-label" for="customCheck1-107">
						Wangcho </label>
				</div>
			</div>

		</div>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '76' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="141" value="76"
						id="customCheck1-108" />
					<label class="custom-control-label" for="customCheck1-108">
						Singpho </label>
				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="culturalOthers"
						value="77)" id="customCheck1-109"
						checked="${CoreObject.cultural == '77' ? 'checked' : '' } "
						tabindex="142" onClick="enable1()" />
					<label class="custom-control-label" for="customCheck1-109">
						Others<span class="italic size="2">(Specify)</span>
					</label>
				</div>
			</div>
			<div class="col-md-4">
				<div class="custom-control custom-checkbox mb-5">
					<form:input class="form-control valKeyC" type="text" id="cult"
						maxlength="250" tabindex="143" path="culturalOthers"
						disabled="true" value="${CoreObject.culturalOthers}" />
				</div>
			</div>
			<div class="col-md-2 col-sm-2">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" path="cultural"
						checked="${CoreObject.cultural == '78' ? 'checked' : '' } "
						onclick="selectOnlyThis(this)" tabindex="144" value="78"
						id="customCheck1-110" />
					<label class="custom-control-label" for="customCheck1-110">
						Unknown </label>
				</div>
			</div>


		</div>
	</div>


	<div class="form-group row">

		<label class="col-md-12 col-form-label weight-600"><code
				style="padding-right: 10px; color: black">II</code>DIAGNOSIS OF
			STROKE </label>

	</div>


	<div class="form-group row">

		<label class="col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">11.1</code>Patient last
			known or seen wel </label>
		<div class="form-group">

			<label class=" col-md-4 col-form-label">Date </label>
		</div>

		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat" id="lsdate"
				tabindex="145" placeholder="Select Date" path="patlastseendate"
				value="${CoreObject.patlastseendate}" />
		</div>
		<div class=" col-md-1">
			<label class="col-sm-12 col-md-4 col-form-label">Time </label>
		</div>
		<div class="col-md-3">
			<%-- 	<form:input type="text" class="form-control" tabindex="146"
				 path="patlastseentime" maxlength="4" value="${CoreObject.patlastseentime}"/> --%>

			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="Timehr"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TimeMn"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TimeAmPm" name="deathTimeAmPm">
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="patlastseentime" path="patlastseentime"
			value="${CoreObject.patlastseentime}" />
	</div>




	<div class="form-group row">

		<label class="col-sm-12 col-md-4 col-form-label"><code
				style="padding-right: 10px; color: black">11.2</code>Date of onset
			of stroke </label>
		<div class="form-group">

			<label class="col-sm-12 col-md-4 col-form-label">Date </label>
		</div>
		<div class="col-sm-12 col-md-2">
			<form:input type="text" class="form-control date-picker dat" id="ondate"
				tabindex="147" path="onsetstrokedate" placeholder="Select Date"
				value="${CoreObject.onsetstrokedate}" />
		</div>
		<div class="col-sm-12 col-md-1">
			<label class=" col-md-3 col-form-label">Time </label>
		</div>
		<div class=" col-md-3">

			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="Timehr1"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TimeMn1"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TimeAmPm1" name="deathTimeAmPm">
						
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="onsetstroketime" path="onsetstroketime"
			value="${CoreObject.onsetstroketime}" />
	</div>

	<%-- <form:input   class="form-control" path="onsetstroketime" tabindex="148"
				maxlength="4" value="${CoreObject.onsetstroketime}"/> --%>


	<div class="form-group">
		<div class="row">

			<div class="col-md-8">
				<label><code style="padding-right: 10px; color: black">11.3</code>Is
					it a wake-up stroke <span class="italic"><font size="2">(recognition
							of first symptoms of stroke)</font></span></label>
			</div>

			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio8" value="1" tabindex="149"
						class="custom-control-input" path="wakeupStroke"
						checked="${CoreObject.wakeupStroke == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio8"> <font>
							Yes </font>
					</label>

				</div>
			</div>
			<div class="col-md-2">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio9" value="2" tabindex="150"
						class="custom-control-input" path="wakeupStroke"
						checked="${CoreObject.wakeupStroke == '2' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio9"> <font>
							No </font>
					</label>

				</div>
			</div>

		</div>
	</div>



	<div class="form-group">
		<div class="row">

			<div class="col-md-12">
				<label><code style="padding-right: 10px; color: black">11.4</code>Symptoms
					noticed at onset<span class="italic"><font size="2">(multiple
							selection is possible )</font></span></label>
			</div>
			<div class="col-md-12" >
				<label  id="sympt_onsetErr" class="errorMsg">Please choose at least one checkbox *</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-3">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input sympt_onset" value="1"
						tabindex="151" path="sympWeek" id="customCheck1-113"
						checked="${CoreObject.sympWeek == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-113">Weakness/paresis
					</label>
				</div>
			</div>
			<div class="col-md-4">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input sympt_onset" value="2"
						tabindex="152" path="sympDysp" id="customCheck1-114"
						checked="${CoreObject.sympDysp == '2' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-114">
						Dysphasia/aphasia </label>
				</div>
			</div>
			<div class="col-md-4">
				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input sympt_onset" value="3"
						tabindex="153" path="sympAltered" id="customCheck1-115"
						checked="${CoreObject.sympAltered == '3' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-115">
						Altered level of consciousness </label>
				</div>
			</div>
		</div>
			<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input sympt_onset" path="sympAltered" value=""
						tabindex="154" id="customCheck1-116" onClick="enable2()" />
					<label class="custom-control-label" for="customCheck1-116">Others<span
						class="italic size="2">(specify)</span>
					</label>
				</div>
			</div>
			<div class="col-md-4">

				<div class="custom-control">
					<form:input class="form-control valKeyCN" type="text" id="sympt"
						tabindex="155" path="sympOnsetOthers" maxlength="250"
						disabled="true" value="${CoreObject.sympOnsetOthers}" />
				</div>
			</div>
			<div class="col-md-5"></div>

		</div>
	</div>

	<div class="form-group">
	
	</div>













	<div class="form-group row">

		<label class=" col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">11.5</code>Date of
			recognition of first stroke symptoms/ signs by medical professional </label>


	</div>








	<div class="form-group row">
		<div class=" col-md-1 col-form-label"></div>
		<label class=" col-md-1 col-form-label" for="firstStrsympdate">
			Date </label>
		<div class=" col-md-2">
			<form:input class="form-control date-picker dat" type="text" id="symdate"
				tabindex="156" path="firstStrsympdate"
				value="${CoreObject.firstStrsympdate}" />
		</div>

		<label class=" col-md-1 col-form-label" for="firstStrsymptime">Time
		</label>
		<div class=" col-md-3">
			<%-- <form:input class="form-control " type="text" id="desi2" maxlength="4" tabindex="157"
				path="firstStrsymptime" placeholder="Select Date" value="${CoreObject.firstStrsymptime}" /> --%>
			<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="Timehr2"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TimeMn2"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TimeAmPm2" name="deathTimeAmPm">
						
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="firstStrsymptime" path="firstStrsymptime"
			value="${CoreObject.firstStrsymptime}" />
	</div>






	<div class="form-group row">
		<label class=" col-md-12 col-form-label"> <code
				style="padding-right: 10px; color: black">11.6</code>From where did
			the patient come to reach the reporting hospital for treatment of
			their stroke<span class="italic"><font size="2">(single
					selection)</font></span>
		</label>
	</div>


	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio384" value="1" tabindex="158"
						class="custom-control-input" path="treatmentStroke"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '1' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio384"> <font>
							Home </font>
					</label>

				</div>

			</div>
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio385" value="4" tabindex="159"
						class="custom-control-input" path="treatmentStroke"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '4' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio385"> <font>
							Other departments within reporting hospital </font>
					</label>

				</div>

			</div>
		</div>

	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio386" value="3" tabindex="160"
						class="custom-control-input" path="treatmentStroke"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '3' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio386"> <font>
							Other Place of Stroke onset </font>
					</label>


				</div>

			</div>
			<div class="col-md-1"></div>
			<div class="col-md-3">




				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio387" value="8" tabindex="161"
						class="custom-control-input" path="treatmentStroke"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '8' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio387"> <font>
							Others<span class="italic size="2">(specify)</span>
					</font>
					</label>


				</div>


			</div>
			<div class="col-md-3">
				<form:input class="form-control valKeyCN" type="text" id="treatment"
					tabindex="162" path="treatmentStrokeothers" maxlength="250"
					disabled="true" value="${CoreObject.treatmentStrokeothers}" />

			</div>



		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio388" value="2" tabindex="163"
						class="custom-control-input" path="treatmentStroke"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '2' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio388"> <font>
							Outpatient helthcare setting </font>
					</label>

				</div>


			</div>
			<div class="col-md-1"></div>
			<div class="col-md-4">

				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio389" value="9" tabindex="164"
						class="custom-control-input" path="treatmentStroke"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '9' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio389"> <font>
							Unknown </font>
					</label>

				</div>



			</div>

			<div class="col-md-2"></div>


		</div>
	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-11">


				<div class="custom-control custom-radio mb-3">
					<form:radiobutton id="customRadio340" value="3"
						class="custom-control-input" path="treatmentStroke" tabindex="165"
						onClick="enable3()"
						checked="${CoreObject.treatmentStroke == '3' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customRadio340"> <font>
							Inpatient helthcare setting </font>
					</label>

				</div>


			</div>

		</div>
	</div>





	<div class="form-group row">

		<label class=" col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">11.7</code> Date and time
			of arrival at reporting institution </label>


	</div>








	<div class="form-group row">
		<div class=" col-md-1 col-form-label"></div>
		<label class=" col-md-1 col-form-label"> Date </label>
		<div class=" col-md-2">
			<form:input class="form-control date-picker dat" type="text" id="arivdate"
				tabindex="166" path="aarivaldate" value="${CoreObject.aarivaldate}" />
		</div>

		<label class=" col-md-1 col-form-label">Time </label>
		<div class=" col-md-3">
			<%-- <div class='input-group date' id='datetimepicker3'>
				<form:input type='text' class="form-control" tabindex="167"
					path="aarivaltime" value="${CoreObject.aarivaltime}" />
				<span class="input-group-addon"> <span
					class="glyphicon glyphicon-time"></span>
				</span>
			</div> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time " type="text" id="Timehr3"
						name="deathTime" value="" maxlength="2" />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN " type="text" id="TimeMn3"
						name="deathTimeMn" value="" maxlength="2" />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control" id="TimeAmPm3" name="deathTimeAmPm">
						
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="aarivaltime" path="aarivaltime"
			value="${CoreObject.aarivaltime}" />
	</div>







	<div class="form-group row">

		<label class="col-md-6 col-form-label"><code
				style="padding-right: 10px; color: black">12</code>Date of diagnosis
			of stroke at the reporting institution </label>
		<div class="form-group">

			<label class=" col-md-2 col-form-label">Date </label>
		</div>

		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat" id="digdate"
				tabindex="168" path="diagOfStroke" placeholder="Select Date"
				value="${CoreObject.diagOfStroke}" />
		</div>

	</div>


	<div class="form-group row">

		<label class=" col-md-5 col-form-label"><code
				style="padding-right: 10px; color: black">13</code>Diagnosis or
			History of recent TIA?</label>

		<div class="col-md-2">

			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio10" value="1" tabindex="169"
					class="custom-control-input" path="historyTIA"
					onClick="showHideInfo3()"
					checked="${CoreObject.historyTIA == '1' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio10"> <font>
						Yes </font>
				</label>

			</div>
		</div>
		<div class="col-md-2">
			<div class="custom-control custom-radio mb-3">
				<form:radiobutton id="customRadio11" value="2" tabindex="170"
					class="custom-control-input" path="historyTIA"
					onClick="showHideInfo3()"
					checked="${CoreObject.historyTIA == '2' ? 'checked' : '' }" />
				<label class="custom-control-label" for="customRadio11"> <font>
						No </font>
				</label>

			</div>
		</div>
		<div class="col-md-3"></div>

	</div>


	<div class="form-group row">
		<div class=" col-md-1"></div>



		<div class="form-group">

			<label class=" col-md-1 col-form-label">Date </label>
		</div>

		<div class=" col-md-2">
			<form:input type="text" class="form-control date-picker dat tiadate"
				tabindex="171" 	 path="historyTIAdate"
				id="tiadate" disabled="true" value="${CoreObject.historyTIAdate}" />
		</div>
		<div class=" col-md-1">
			<label class="col-md-1 col-form-label">Time </label>
		</div>
		<div class=" col-md-3">
			<%-- <form:input type="text" class="form-control " maxlength="4"
				id="tiatime" tabindex="172" path="historyTIAtime" disabled="true"
				value="${CoreObject.historyTIAtime}" /> --%>
		<div class="row">
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN time tiatime " type="text" id="Timehr4"
						name="deathTime" value="" maxlength="2" disabled />
				</div>
				<div class="col-md-1 text-center"
					style="padding-top: 5px; padding-left: 0px; padding-right: 0px; width: 5px;">
					<strong>:</strong>
				</div>
				<div class="col-md-2 text-center"
					style="padding: 0.10px; margin: 0px; width: 30px;">
					<input class="form-control valKeyN tiatime" type="text" id="TimeMn4"
						name="deathTimeMn" value="" maxlength="2" disabled />
				</div>
				<div class="col-xd-1" style="width: 10px;"></div>
				<div class="col-md-4 text-center"
					style="padding: 1px; margin: 0px; width: 80px;">
					<select class="form-control tiatime" id="TimeAmPm4" name="deathTimeAmPm" disabled>
					
						<option value="a.m.">a.m.</option>
						<option value="p.m.">p.m.</option>
					</select>
				</div>

			</div>

		</div>

		<form:input type="hidden" id="historyTIAtime" path="historyTIAtime"
			value="${CoreObject.historyTIAtime}" />
	</div>


	<div class="form-group row">

		<label class="col-md-12 col-form-label weight-600"><code
				style="padding-right: 10px; color: black">14</code>Clinical
			Information</label>

	</div>

	<div class="form-group row">

		<label class="col-md-12 col-form-label"><code
				style="padding-right: 10px; color: black">14.1</code>Clinical
			Findings at RI</label>

	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="173"
						path="clinRIUnilateral" value="a" id="customCheck1-127"
						checked="${CoreObject.clinRIUnilateral == 'a' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-127">
						Unilateral or bilateral motor impairment<span style:size="2"
						; class="italic">(including lack of coordination)</span>
					</label>
				</div>
			</div>

			<div class="col-md-5">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="174"
						path="clinRISensory" value="b" id="customCheck1-128"
						checked="${CoreObject.clinRISensory == 'b' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-128">
						Unilateral or bilateral sensory impairment</label>
				</div>
			</div>
		</div>
				<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="175"
						path="clinRIAphasia" value="c" id="customCheck1-129"
						checked="${CoreObject.clinRIAphasia == 'c' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-129">
						Aphasia/dysphasia<span class="italic size="2">(non-fluent
							speech)</span>
					</label>
				</div>
			</div>

			<div class="col-md-5">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="176"
						path="clinRIHeminophia" value="d" id="customCheck1-130"
						checked="${CoreObject.clinRIHeminophia == 'd' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-130">
						Hemianophia<span class="italic size="2">(half-sided
							impariement of visual feilds)</span>
					</label>
				</div>
			</div>




		</div>
		
	</div>


	<div class="form-group">

	</div>



	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="177"
						path="clinRIGaze" value="e" id="customCheck1-131"
						checked="${CoreObject.clinRIGaze == 'e' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-131">
						Forced gaze<span class="italic size="2">(conjugate
							deviation)</span>
					</label>
				</div>
			</div>

			<div class="col-md-5">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="178"
						path="clinRIApraxia" value="f" id="customCheck1-132"
						checked="${CoreObject.clinRIApraxia == 'f' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-132">
						Apraxia</label>
				</div>
			</div>




		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="179"
						path="clinRIAtaxia" value="g" id="customCheck1-134"
						checked="${CoreObject.clinRIAtaxia == 'g' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-134">
						Ataxia</label>
				</div>
			</div>

			<div class="col-md-5">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="180"
						path="clinRINeglect" value="h" id="customCheck1-135"
						checked="${CoreObject.clinRINeglect == 'g' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-135">
						Neglect</label>
				</div>
			</div>




		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-11">

				<div class="custom-control custom-checkbox mb-5">
					<form:checkbox class="custom-control-input" tabindex="181"
						path="clinRINone" value="i" id="customCheck1-136"
						checked="${CoreObject.clinRINone == 'i' ? 'checked' : '' }" />
					<label class="custom-control-label" for="customCheck1-136">
						None</label>
				</div>
			</div>





		</div>
	</div>

</body>
</html>