$(function() {

	$(".valKeyN")
			.on(
					'input',
					function() {
						var $this = $(this);
						if (this.value
								.match(/[`~!@#$%^&*()_|+\-=?;:'",.a-zA-Z<>\{\}\[\]\\\/]/g)) {
							this.value = this.value
									.replace(
											/[`~!@#$%^&*()_|+\-=?;:'",.a-zA-Z<>\{\}\[\]\\\/]/g,
											'');
							
							
                        	$(".current-menu-item a").mouseover();	
                        	numberPopupFn();
						}						
					});
	
	$(".valKeyN2")
	.on(
			'input',
			function() {
				var $this = $(this);
				if (this.value
						.match(/[`~!@#$%^&*()_|+\-=?;:'".a-zA-Z<>\{\}\[\]\\\/]/g)) {
					this.value = this.value
							.replace(
									/[`~!@#$%^&*()_|+\-=?;:'".a-zA-Z<>\{\}\[\]\\\/]/g,
									'');
					
					 
                	$(".current-menu-item a").mouseover();	
                	numberPopupFn();
				}				
			});
	

	$('.valKeyCN').on(
			'input',
			function() {
				var $this = $(this);
				if (this.value
						.match(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/g)) {
					this.value = this.value.replace(
							/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/g, '');
				}
			});


	
	
	$('.valKeyC').on('input', function() {		
	    var $this = $(this);	   
	    if(this.value.match(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/g)){
	        this.value=this.value.replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/g,'');
	      }
	});

	

	
	$('.valKeyC_Extra').on(
			'input',
			function() {
				var $this = $(this);
				if (this.value.match(/[`~!#$%^&*|+=?;:"<>\{\}\[\]\\\/]/g)) {
					this.value = this.value.replace(
							/[`~!#$%^&*|+=?;:"<>\{\}\[\]\\/]/g, '');
				}
			});
	
	$('.valKeyAdrs').on('input', function() {
	    var $this = $(this);	   
	    if(this.value.match(/^[`~!%^&@$*_|+=;'"<>]+$/)){
	        this.value=this.value.replace(/^[`~!%^&@$*_|+=;'"<>]+$/,'');
	      }
	});
});


//------------------------------------------------------------

$(function(){
	$('.valKeyC').keypress(function(e){
		var regex = new RegExp(/^[a-zA-Z.'\s]+$/);
		var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
		if(regex.test(str)){
			return true;
		}
		e.preventDefault();
		return false;
	});
});

//---------------------------------------------------------------

$(function(){
	$("#customCheck1-31").change(function(){
		if ($("#customCheck1-31").is(":checked")) {
			$(".lng_spk").prop("checked",false);
			$("#lang").val("");
			$("#lang").prop('disabled',true);
			
			//$("#customCheck1-136").prop("checked",true);
		}
	});
	
	$(".lng_spk").click(function(){
		if ($("#customCheck1-31").is(":checked")) {
			$("#customCheck1-31").prop("checked",false);
		}
	});
	
});

$(function(){
	$("#customCheck1-110").change(function(){
		if ($("#customCheck1-110").is(":checked")) {
			$(".cul_grp").prop("checked",false);
			$("#cult").val("");
			$("#cult").prop('disabled',true);
			
			//$("#customCheck1-136").prop("checked",true);
		}
	});
	
	$(".cul_grp").click(function(){
		if ($("#customCheck1-110").is(":checked")) {
			$("#customCheck1-110").prop("checked",false);
		}
	});
	
});


$(function(){
	$("#customCheck1-136").change(function(){
		if ($("#customCheck1-136").is(":checked")) {
			$(".cl_fin").prop("checked",false);
			//$("#customCheck1-136").prop("checked",true);
		}
	});
	
	$(".cl_fin").click(function(){
		if ($("#customCheck1-136").is(":checked")) {
			$("#customCheck1-136").prop("checked",false);
		}
	});
	
});


$(function(){
	$("#customRadio389").change(function(){
		if ($("#customRadio389").is(":checked")) {
			$(".treatStrk").prop("checked",false);
			$("#treatment").val("");
			$("#treatment").prop('disabled',true);
			
			//$("#customCheck1-136").prop("checked",true);
		}
	});
	
	$(".treatStrk").click(function(){
		if ($("#customRadio389").is(":checked")) {
			$("#customRadio389").prop("checked",false);
		}
	});	
});

$(function(){
	$("#none").change(function(){
		if ($("#none").is(":checked")) {
			$(".cmpthrm").prop("checked",false);								
		}
	});
	
	$(".cmpthrm").click(function(){
		if ($("#none").is(":checked")) {
			$("#none").prop("checked",false);
		}
	});	
});

$(function(){
	$(".funcStat").click(function(){
		
		var chkId = $(this).attr('id');
		$(".funcStat").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	
	//-------------
	$(".symptom_I").click(function(){		
		var chkId = $(this).attr('id');
		$(".symptom_I").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	//----------------
	$(".symptom_II").click(function(){		
		var chkId = $(this).attr('id');
		$(".symptom_II").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	//----------------
	$(".Antipltlts").click(function(){		
		var chkId = $(this).attr('id');
		$(".Antipltlts").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	//----------------
	$(".Anti_coagulants").click(function(){		
		var chkId = $(this).attr('id');
		$(".Anti_coagulants").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	
	//----------------
	$(".Anti_hypertensive").click(function(){		
		var chkId = $(this).attr('id');
		$(".Anti_hypertensive").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	
	//----------------
	$(".Lipid_lowering").click(function(){		
		var chkId = $(this).attr('id');
		$(".Lipid_lowering").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	
	//----------------
	$(".Anti_Diabetic").click(function(){		
		var chkId = $(this).attr('id');
		$(".Anti_Diabetic").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	
	//----------------
	$(".typOfst").click(function(){		
		var chkId = $(this).attr('id');
		$(".typOfst").prop('checked',false);
		$("#"+chkId).prop("checked",true);
	
	});
	

	
	
});









$(function(){
	$(".sev_score").keyup(function(){
		var score = $("#scoreOfNIHSS").val();
		
		var input1 = $("#consLevel").val();
		var input2 = $("#sev_score2").val();
		var input3 = $("#sev_score3").val();
		var input4 = $("#sev_score4").val();
		var input5 = $("#sev_score5").val();
		var input6 = $("#sev_score6").val();
		var input7 = $("#sev_score7").val();
		var input8 = $("#sev_score8").val();
		var input9 = $("#sev_score9").val();
		var input10 = $("#sev_score10").val();
		var input11 = $("#sev_score11").val();
		var input12 = $("#sev_score12").val();
		var input13 = $("#sev_score13").val();
		
		var c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
		
		var total=0;
		
		
		
		if(input1 == "")c1 = 0;	else c1 = parseInt(input1);
		if(input2 == "")c2 = 0;	else c2 = parseInt(input2);
		if(input3 == "")c3 = 0;	else c3 = parseInt(input3);
		if(input4 == "")c4 = 0;	else c4 = parseInt(input4);
		if(input5 == "")c5 = 0;	else c5 = parseInt(input5);
		if(input6 == "")c6 = 0;	else c6 = parseInt(input6);
		if(input7 == "")c7 = 0;	else c7 = parseInt(input7);
		if(input8 == "")c8 = 0;	else c8 = parseInt(input8);
		if(input9 == "")c9 = 0;	else c9 = parseInt(input9);
		if(input10 == "")c10 = 0;	else c10 = parseInt(input10);
		if(input11 == "")c11 = 0;	else c11 = parseInt(input11);
		if(input12 == "")c12 = 0;	else c12 = parseInt(input12);
		if(input13 == "")c13 = 0;	else c13 = parseInt(input13);
		
		
		setTimeout(function(){
				total = (c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13);			
			$("#scoreOfNIHSS").val(total);
			
			}, 200);
		
		
		
	});
});



$(function () {
    $('.clsphone').keypress(function(e)
    {
        var len1;
        var keycode1;
        keycode1 = e.keyCode;
        
        len1 = $(this).val();
        if ((len1.length == 10 || len1.length == 21 || len1.length == 32 ) && (keycode1 != 8))
        {
            len1 += ",";
            $(this).val(len1);
        }
    });
});


/*function psychiatricFn() {	
	var yes_check = document.getElementById("customRadio325").checked;
	if (yes_check == true) {		
		$("#psychiatric_illness_other").prop("disabled",false);

	} else {
		$("#psychiatric_illness_other").prop("disabled",true);
		$("#psychiatric_illness_other").val("");
	}
}*/


function numberPopupFn(){
	 
	$.alert({
		icon : 'fa fa-spinner fa-spin',
		title : 'Alert!',
		content : 'Please enter only numbers',
		type : 'red',
		typeAnimated : true,
		buttons : {
			Close : {
				btnClass : 'btn-red',
				keys : [ 'enter' ],
			},
		}
	});
}


function getenable() {
	var ob8 = document.getElementById("customRadio7").checked;
	if (ob8 == true) {
		document.getElementById("briefly").disabled = false;
	} else {
		document.getElementById("briefly").disabled = true;
		document.getElementById("briefly").value = ""
	}

}
function getenable1() {
	var ob9 = document.getElementById("customRadio9").checked;
	if (ob9 == true) {
		document.getElementById("numbeds1").disabled = false;

		document.getElementById("numbeds2").disabled = false;
	} else {
		document.getElementById("numbeds1").disabled = true;
		document.getElementById("numbeds1").value = "";
		document.getElementById("numbeds2").disabled = true;
		document.getElementById("numbeds2").value = "";
	}

}

document.getElementById('customCheck5').onchange = function() {
	document.getElementById('specify1').disabled = !this.checked
	document.getElementById("specify1").value = "";
	;
};

document.getElementById('customCheck7').onchange = function() {
	document.getElementById('specify2').disabled = !this.checked
	document.getElementById("specify2").value = "";
};

document.getElementById('checkbox13').onchange = function() {
	document.getElementById('specify3').disabled = !this.checked
	document.getElementById("specify3").value = "";
};

function showHideInfo3() {
	var ob = document.getElementById("customRadio10").checked;

	if (ob == true) {
		document.getElementById("tiadate").disabled = false;		

	} else {
		document.getElementById("tiadate").disabled = true;	
		document.getElementById("tiadate").value = "";		
	}

}

function validation() {
	var instName=document.getElementsByName('instName')[0].value;
	var Email=document.getElementsByName('emailid2')[0].value;
	if(instName==""){
		swal({
			  title: "Please fill Institute/Healthcare feild!",
			  icon: "warning",
			});
			return false;
			}else if(Email==""){
					swal({
					title: "Please Enter Email!",
					icon: "warning",
								});
					return false;
				}else if(!Email==""||!instName==""){
					swal({
						  title: "Form Submitted Successfully !",
						  text:"Username and password we will send to your email!",
						  icon: "success",
						});
				}
}


function showHideInfo(obj) {
	var lfckv = document.getElementById("customRadio4").checked;
	var lfckv1 = document.getElementById("customRadio6").checked;
	if (lfckv == true && lfckv1 == true || lfckv1 == true) {
		document.getElementById("ctht").disabled = true;
		document.getElementById("ctht").value = "";
		document.getElementById("cthst").disabled = true;
		document.getElementById("cthst").value = "";
		document.getElementById("mrbrh").disabled = true;
		document.getElementById("mrbrh").value = "";
		document.getElementById("mrbrst").disabled = true;
		document.getElementById("mrbrst").value = "";
		document.getElementById("tt").disabled = true;
		document.getElementById("tt").value = "";
		document.getElementById("tts").disabled = true;
		document.getElementById("tts").value = "";

	} else {
		document.getElementById("ctht").disabled = false;
		document.getElementById("cthst").disabled = false;
		document.getElementById("mrbrh").disabled = false;
		document.getElementById("mrbrst").disabled = false;
		document.getElementById("tt").disabled = false;
		document.getElementById("tts").disabled = false;

	}
}

function showHideInfo1() {
	var hem = document.getElementById("customRadio3").checked;
	if (hem == true) {
		document.getElementById("customRadio5").disabled = true;

		document.getElementById("customRadio6").disabled = true;

		document.getElementById("customRadio5").checked = false;

		document.getElementById("customRadio6").checked = false;

		document.getElementById("ctht").disabled = false;
		document.getElementById("cthst").disabled = false;
		document.getElementById("mrbrh").disabled = false;
		document.getElementById("mrbrst").disabled = false;
		document.getElementById("tt").disabled = false;
		document.getElementById("tts").disabled = false;
	} else {
		document.getElementById("customRadio5").disabled = false;

		document.getElementById("customRadio6").disabled = false;

	}

}

function showHideInfo2() {
	var hem = document.getElementById("customRadio4").checked;
	if (hem == true) {
		document.getElementById("customRadio5").disabled = false;
		document.getElementById("customRadio6").disabled = false;
		document.getElementById("ctht").disabled = true;
		document.getElementById("ctht").value = "";
		document.getElementById("cthst").disabled = true;
		document.getElementById("cthst").value = "";
		document.getElementById("mrbrh").disabled = true;
		document.getElementById("mrbrh").value = "";
		document.getElementById("mrbrst").disabled = true;
		document.getElementById("mrbrst").value = "";
		document.getElementById("tt").disabled = true;
		document.getElementById("tt").value = "";
		document.getElementById("tts").disabled = true;
		document.getElementById("tts").value = "";
	} else {
		document.getElementById("customRadio5").disabled = false;
		document.getElementById("customRadio6").disabled = false;
	}
}
// it allows only numbers
function isNumberKey(evt) {
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
		return false;

	return true;
}




//Core Form Script
function getEnableAddress() {
var urban = document.getElementById("customRadio3").checked;
if (urban == true) {
		document.getElementById("hsno").disabled = false;
		document.getElementById("ward").disabled = false;
		document.getElementById("area").disabled = false;
		document.getElementById("corp").disabled = false;
		document.getElementById("city").disabled = false;
		document.getElementById("Dist").disabled = false;
		document.getElementById("pin").disabled = false;
		
		
		document.getElementById("hsno1").disabled = true;
		
		document.getElementById("panchy").disabled = true;
		document.getElementById("subDist").disabled = true;
		document.getElementById("subCen").disabled = true;
		
		document.getElementById("hsno1").value = "";
		
		document.getElementById("panchy").value = "";
		document.getElementById("subDist").value = "";
		document.getElementById("subCen").value = "";
		document.getElementById("pin").value = "";
	}
}

function getEnableAddress1() {
	var rural = document.getElementById("customRadio4").checked;
	if (rural == true) {

	document.getElementById("hsno1").disabled = false;
	
	document.getElementById("panchy").disabled = false;
	document.getElementById("subDist").disabled = false;
	document.getElementById("subCen").disabled = false;
	document.getElementById("Dist").disabled = false;
	document.getElementById("pin").disabled = false;


	document.getElementById("hsno").disabled = true;
	document.getElementById("ward").disabled = true;
	document.getElementById("area").disabled = true;
	document.getElementById("corp").disabled = true;
	document.getElementById("city").disabled = true;
	

	document.getElementById("hsno").value = "";
	document.getElementById("ward").value = "";
	document.getElementById("area").value = "";
	document.getElementById("corp").value = "";
	document.getElementById("city").value = "";
	document.getElementById("Dist").value = "";	
	document.getElementById("pin").value = "";

	}

	}

function enable() {
	var other1 = document.getElementById("customCheck1-30").checked;

	if (other1 == true) {
		document.getElementById("lang").disabled = false;
	} else {
		document.getElementById("lang").disabled = true;
		document.getElementById("lang").value = "";
	}

}

function enable1() {
	var other1 = document.getElementById("customCheck1-109").checked;

	if (other1 == true) {

		document.getElementById("cult").disabled = false;

	} else {
		document.getElementById("cult").disabled = true;
		document.getElementById("cult").value = "";
	}

}
function enable2() {
	var others = document.getElementById("customCheck1-116").checked;

	if (others == true) {

		document.getElementById("sympt").disabled = false;

	} else {
		document.getElementById("sympt").disabled = true;
		document.getElementById("sympt").value = "";
	}

}

function enable3() {
	var others = document.getElementById("customRadio387").checked;

	if (others == true) {

		document.getElementById("treatment").disabled = false;

	} else {
		document.getElementById("treatment").disabled = true;
		document.getElementById("treatment").value = "";
	}

}





function enable4() {
	
	var others = document.getElementById("customRadio12").checked;
	if (others == true) {

		document.getElementById("finding").disabled = false;
		document.getElementById("imagingdate").disabled = false;
		document.getElementById("Timehr5").disabled = false;
		document.getElementById("TimeMn5").disabled = false;
		document.getElementById("TimeAmPm5").disabled = false;

	} else {
		document.getElementById("finding").disabled = true;
		document.getElementById("finding").value = "";
		document.getElementById("imagingdate").disabled = true;
		document.getElementById("TimeAmPm5").disabled = true;
		document.getElementById("TimeMn5").disabled = true;
		document.getElementById("Timehr5").disabled = true;

		document.getElementById("imagingdate").value = "";		
		document.getElementById("TimeMn5").value = "";
		document.getElementById("Timehr5").value = "";
	}

}

function enable5() {
	var others = document.getElementById("customRadio15").checked;

	if (others == true) {

		document.getElementById("finding2").disabled = false;
		document.getElementById("imagingdate1").disabled = false;
		document.getElementById("MriTimehr").disabled = false;
		document.getElementById("MriTimeMn").disabled = false;
		document.getElementById("MriTimeAmPm").disabled = false;

	} else {
		document.getElementById("finding2").disabled = true;
		document.getElementById("finding2").value = "";
		document.getElementById("imagingdate1").disabled = true;
		document.getElementById("MriTimehr").disabled = true;
		document.getElementById("MriTimeMn").disabled = true;
		document.getElementById("MriTimeAmPm").disabled = true;

		document.getElementById("imagingdate1").value = "";
		document.getElementById("MriTimehr").value = "";
		document.getElementById("MriTimeMn").value = "";		
	}

}

function enable6() {
	var others = document.getElementById("customRadio18").checked;

	if (others == true) {

		document.getElementById("finding3").disabled = false;
		document.getElementById("imagingdate2").disabled = false;

		document.getElementById("AngTimehr").disabled = false;
		document.getElementById("AngTimeMn").disabled = false;
		document.getElementById("AngTimeAmPm").disabled = false;

	} else {
		document.getElementById("finding3").disabled = true;
		document.getElementById("finding3").value = "";
		document.getElementById("imagingdate2").disabled = true;

		document.getElementById("AngTimehr").disabled = true;
		document.getElementById("AngTimeMn").disabled = true;
		document.getElementById("AngTimeAmPm").disabled = true;

		document.getElementById("imagingdate2").value = "";
		document.getElementById("AngTimehr").value = "";
		document.getElementById("AngTimeMn").value = "";		
	}

}

function enable7() {
	var others = document.getElementById("customRadio21").checked;

	if (others == true) {

		document.getElementById("finding4").disabled = false;
		document.getElementById("imagingdate3").disabled = false;

		document.getElementById("CtTimehr").disabled = false;
		document.getElementById("CtTimeMn").disabled = false;
		document.getElementById("CtTimeAmPm").disabled = false;
	} else {
		document.getElementById("finding4").disabled = true;
		document.getElementById("finding4").value = "";
		document.getElementById("imagingdate3").disabled = true;

		document.getElementById("CtTimehr").disabled = true;
		document.getElementById("CtTimeMn").disabled = true;
		document.getElementById("CtTimeAmPm").disabled = true;

		document.getElementById("imagingdate3").value = "";
		document.getElementById("CtTimehr").value = "";
		document.getElementById("CtTimeMn").value = "";		
	}

}

function enable8() {
	var others = document.getElementById("customRadio24").checked;

	if (others == true) {

		document.getElementById("finding5").disabled = false;
		document.getElementById("imagingdate4").disabled = false;

		document.getElementById("MraTimehr").disabled = false;
		document.getElementById("MraTimeMn").disabled = false;
		document.getElementById("MraTimeAmPm").disabled = false;

	} else {
		document.getElementById("finding5").disabled = true;
		document.getElementById("finding5").value = "";
		document.getElementById("imagingdate4").disabled = true;

		document.getElementById("MraTimehr").disabled = true;
		document.getElementById("MraTimeMn").disabled = true;
		document.getElementById("MraTimeAmPm").disabled = true;

		document.getElementById("imagingdate4").value = "";
		document.getElementById("MraTimehr").value = "";
		document.getElementById("MraTimeMn").value = "";		
	}

}

function enable9() {
	var others = document.getElementById("customCheck1-203").checked;

	if (others == true) {

		document.getElementById("diagnosis").disabled = false;

	} else {
		document.getElementById("diagnosis").disabled = true;
		document.getElementById("diagnosis").value = "";

	}

}

function enable10() {
	var others = document.getElementById("customRadio152").checked;
	var others2 = document.getElementById("customRadio153").checked;

	if (others == true) {
		
		document.getElementById("customCheck1-355").disabled = false;
		document.getElementById("customCheck1-356").disabled = false;
		document.getElementById("customCheck1-357").disabled = false;
		document.getElementById("customCheck1-358").disabled = false;
		document.getElementById("customCheck1-359").disabled = false;
		document.getElementById("thrombolytic").disabled = false;
		document.getElementById("Thrombolyticdate").disabled = false;

		document.getElementById("ThTimehr").disabled = false;
		document.getElementById("ThTimeMn").disabled = false;
		document.getElementById("ThTimeAmPm").disabled = false;

		document.getElementById("customRadio217").disabled = false;
		document.getElementById("customRadio218").disabled = false;
		document.getElementById("customRadio219").disabled = false;
		document.getElementById("none").disabled = false;
		document.getElementById("customCheck1-361").disabled = false;
		document.getElementById("customCheck1-362").disabled = false;
		document.getElementById("customCheck1-363").disabled = false;
		document.getElementById("otherSerious").disabled = false;

		document.getElementById("customRadio154").disabled = true;
		document.getElementById("customRadio155").disabled = true;
		document.getElementById("customRadio156").disabled = true;
		document.getElementById("customRadio157").disabled = true;
		document.getElementById("customRadio158").disabled = true;
		document.getElementById("customRadio159").disabled = true;
		document.getElementById("customRadio160").disabled = true;
		document.getElementById("customRadio161").disabled = true;
		document.getElementById("customRadio162").disabled = true;
		document.getElementById("customRadio163").disabled = true;
		document.getElementById("customRadio164").disabled = true;
		document.getElementById("customRadio165").disabled = true;
		document.getElementById("customRadio166").disabled = true;
		document.getElementById("customRadio167").disabled = true;
		document.getElementById("customRadio168").disabled = true;
		document.getElementById("customRadio169").disabled = true;
		document.getElementById("customRadio170").disabled = true;
		document.getElementById("customRadio171").disabled = true;
		document.getElementById("customRadio172").disabled = true;
		document.getElementById("customRadio173").disabled = true;
		document.getElementById("customRadio174").disabled = true;
		document.getElementById("customRadio175").disabled = true;
		document.getElementById("customRadio176").disabled = true;
		document.getElementById("customRadio177").disabled = true;
		document.getElementById("customRadio178").disabled = true;
		document.getElementById("customRadio179").disabled = true;
		document.getElementById("customRadio180").disabled = true;
		document.getElementById("customRadio181").disabled = true;
		document.getElementById("customRadio182").disabled = true;
		document.getElementById("customRadio183").disabled = true;
		document.getElementById("customRadio184").disabled = true;
		document.getElementById("customRadio185").disabled = true;
		document.getElementById("customRadio186").disabled = true;
		document.getElementById("customRadio187").disabled = true;
		document.getElementById("customRadio188").disabled = true;
		document.getElementById("customRadio189").disabled = true;
		document.getElementById("customRadio190").disabled = true;
		document.getElementById("customRadio191").disabled = true;
		document.getElementById("customRadio192").disabled = true;
		document.getElementById("customRadio193").disabled = true;
		document.getElementById("customRadio194").disabled = true;
		document.getElementById("customRadio195").disabled = true;
		document.getElementById("customRadio196").disabled = true;
		document.getElementById("customRadio197").disabled = true;
		document.getElementById("customRadio198").disabled = true;
		document.getElementById("customRadio199").disabled = true;
		document.getElementById("customRadio200").disabled = true;
		document.getElementById("customRadio201").disabled = true;
		document.getElementById("customRadio202").disabled = true;

		document.getElementById("customRadio203").disabled = true;
		document.getElementById("customRadio204").disabled = true;
		document.getElementById("customRadio205").disabled = true;
		document.getElementById("customRadio206").disabled = true;
		document.getElementById("customRadio207").disabled = true;
		document.getElementById("customRadio208").disabled = true;
		document.getElementById("customRadio209").disabled = true;
		document.getElementById("customRadio210").disabled = true;
		document.getElementById("customRadio211").disabled = true;
		document.getElementById("customRadio212").disabled = true;
		document.getElementById("customRadio213").disabled = true;
		document.getElementById("customRadio214").disabled = true;
		document.getElementById("customRadio215").disabled = true;
		document.getElementById("customRadio216").disabled = true;

		document.getElementById("customRadio154").checked = false;
		document.getElementById("customRadio155").checked = false;
		document.getElementById("customRadio156").checked = false;
		document.getElementById("customRadio157").checked = false;
		document.getElementById("customRadio158").checked = false;
		document.getElementById("customRadio159").checked = false;
		document.getElementById("customRadio160").checked = false;
		document.getElementById("customRadio161").checked = false;
		document.getElementById("customRadio162").checked = false;
		document.getElementById("customRadio163").checked = false;
		document.getElementById("customRadio164").checked = false;
		document.getElementById("customRadio165").checked = false;
		document.getElementById("customRadio166").checked = false;
		document.getElementById("customRadio167").checked = false;
		document.getElementById("customRadio168").checked = false;
		document.getElementById("customRadio169").checked = false;
		document.getElementById("customRadio170").checked = false;
		document.getElementById("customRadio171").checked = false;
		document.getElementById("customRadio172").checked = false;
		document.getElementById("customRadio173").checked = false;
		document.getElementById("customRadio174").checked = false;
		document.getElementById("customRadio175").checked = false;
		document.getElementById("customRadio176").checked = false;
		document.getElementById("customRadio177").checked = false;
		document.getElementById("customRadio178").checked = false;
		document.getElementById("customRadio179").checked = false;
		document.getElementById("customRadio180").checked = false;
		document.getElementById("customRadio181").checked = false;
		document.getElementById("customRadio182").checked = false;
		document.getElementById("customRadio183").checked = false;
		document.getElementById("customRadio184").checked = false;
		document.getElementById("customRadio185").checked = false;
		document.getElementById("customRadio186").checked = false;
		document.getElementById("customRadio187").checked = false;
		document.getElementById("customRadio188").checked = false;
		document.getElementById("customRadio189").checked = false;
		document.getElementById("customRadio190").checked = false;
		document.getElementById("customRadio191").checked = false;
		document.getElementById("customRadio192").checked = false;
		document.getElementById("customRadio193").checked = false;
		document.getElementById("customRadio194").checked = false;
		document.getElementById("customRadio195").checked = false;
		document.getElementById("customRadio196").checked = false;
		document.getElementById("customRadio197").checked = false;
		document.getElementById("customRadio198").checked = false;
		document.getElementById("customRadio199").checked = false;
		document.getElementById("customRadio200").checked = false;
		document.getElementById("customRadio201").checked = false;
		document.getElementById("customRadio202").checked = false;

		document.getElementById("customRadio203").checked = false;
		document.getElementById("customRadio204").checked = false;
		document.getElementById("customRadio205").checked = false;
		document.getElementById("customRadio206").checked = false;
		document.getElementById("customRadio207").checked = false;
		document.getElementById("customRadio208").checked = false;
		document.getElementById("customRadio209").checked = false;
		document.getElementById("customRadio210").checked = false;
		document.getElementById("customRadio211").checked = false;
		document.getElementById("customRadio212").checked = false;
		document.getElementById("customRadio213").checked = false;
		document.getElementById("customRadio214").checked = false;
		document.getElementById("customRadio215").checked = false;
		document.getElementById("customRadio216").checked = false;
		
		$(".ntRceThrobolysis").prop( "disabled", true );
		$("#ctDone").prop( "disabled", false );

		/*
		 * document.getElementById("customCheck1-361").disabled = false;
		 * document.getElementById("customCheck1-362").disabled = false;
		 * document.getElementById("customCheck1-363").disabled = false;
		 * document.getElementById("otherSerious").disabled = false;
		 */
	} else if (others2 == true) {
		$(".ntRceThrobolysis").prop( "disabled", false );
		$("#ctDone").prop( "disabled", true );
		
		document.getElementById("customCheck1-355").disabled = true;
		document.getElementById("customCheck1-356").disabled = true;
		document.getElementById("customCheck1-357").disabled = true;
		document.getElementById("customCheck1-358").disabled = true;
		document.getElementById("customCheck1-359").disabled = true;
		document.getElementById("thrombolytic").disabled = true;
		document.getElementById("Thrombolyticdate").disabled = true;
		document.getElementById("ThTimehr").disabled = true;
		document.getElementById("ThTimeMn").disabled = true;
		document.getElementById("ThTimeAmPm").disabled = true;
		document.getElementById("customRadio217").disabled = true;
		document.getElementById("customRadio218").disabled = true;
		document.getElementById("customRadio219").disabled = true;
		document.getElementById("none").disabled = true;
		document.getElementById("customCheck1-361").disabled = true;
		document.getElementById("customCheck1-362").disabled = true;
		document.getElementById("customCheck1-363").disabled = true;
		document.getElementById("otherSerious").disabled = true;

		document.getElementById("customCheck1-355").checked = false;
		document.getElementById("customCheck1-356").checked = false;
		document.getElementById("customCheck1-357").checked = false;
		document.getElementById("customCheck1-358").checked = false;
		document.getElementById("customCheck1-359").checked = false;
		document.getElementById("thrombolytic").value = "";
		document.getElementById("Thrombolyticdate").value = "";
		document.getElementById("ThTimehr").value = "";
		document.getElementById("ThTimeMn").value = "";
		
		document.getElementById("customRadio217").checked = false;
		document.getElementById("customRadio218").checked = false;
		document.getElementById("customRadio219").checked = false;
		document.getElementById("none").value = "";
		document.getElementById("customCheck1-361").checked = false;
		document.getElementById("customCheck1-362").checked = false;
		document.getElementById("customCheck1-363").checked = false;
		document.getElementById("otherSerious").value = "";

		document.getElementById("customRadio154").disabled = false;
		document.getElementById("customRadio155").disabled = false;
		document.getElementById("customRadio156").disabled = false;
		document.getElementById("customRadio157").disabled = false;
		document.getElementById("customRadio158").disabled = false;
		document.getElementById("customRadio159").disabled = false;
		document.getElementById("customRadio160").disabled = false;
		document.getElementById("customRadio161").disabled = false;
		document.getElementById("customRadio162").disabled = false;
		document.getElementById("customRadio163").disabled = false;
		document.getElementById("customRadio164").disabled = false;
		document.getElementById("customRadio165").disabled = false;
		document.getElementById("customRadio166").disabled = false;
		document.getElementById("customRadio167").disabled = false;
		document.getElementById("customRadio168").disabled = false;
		document.getElementById("customRadio169").disabled = false;
		document.getElementById("customRadio170").disabled = false;
		document.getElementById("customRadio171").disabled = false;
		document.getElementById("customRadio172").disabled = false;
		document.getElementById("customRadio173").disabled = false;
		document.getElementById("customRadio174").disabled = false;
		document.getElementById("customRadio175").disabled = false;
		document.getElementById("customRadio176").disabled = false;
		document.getElementById("customRadio177").disabled = false;
		document.getElementById("customRadio178").disabled = false;
		document.getElementById("customRadio179").disabled = false;
		document.getElementById("customRadio180").disabled = false;
		document.getElementById("customRadio181").disabled = false;
		document.getElementById("customRadio182").disabled = false;
		document.getElementById("customRadio183").disabled = false;
		document.getElementById("customRadio184").disabled = false;
		document.getElementById("customRadio185").disabled = false;
		document.getElementById("customRadio186").disabled = false;
		document.getElementById("customRadio187").disabled = false;
		document.getElementById("customRadio188").disabled = false;
		document.getElementById("customRadio189").disabled = false;
		document.getElementById("customRadio190").disabled = false;
		document.getElementById("customRadio191").disabled = false;
		document.getElementById("customRadio192").disabled = false;
		document.getElementById("customRadio193").disabled = false;
		document.getElementById("customRadio194").disabled = false;
		document.getElementById("customRadio195").disabled = false;
		document.getElementById("customRadio196").disabled = false;
		document.getElementById("customRadio197").disabled = false;
		document.getElementById("customRadio198").disabled = false;
		document.getElementById("customRadio199").disabled = false;
		document.getElementById("customRadio200").disabled = false;
		document.getElementById("customRadio201").disabled = false;

		document.getElementById("customRadio202").disabled = false;
		document.getElementById("customRadio203").disabled = false;
		document.getElementById("customRadio204").disabled = false;
		document.getElementById("customRadio205").disabled = false;
		document.getElementById("customRadio206").disabled = false;
		document.getElementById("customRadio207").disabled = false;
		document.getElementById("customRadio208").disabled = false;
		document.getElementById("customRadio209").disabled = false;
		document.getElementById("customRadio210").disabled = false;
		document.getElementById("customRadio211").disabled = false;
		document.getElementById("customRadio212").disabled = false;
		document.getElementById("customRadio213").disabled = false;
		document.getElementById("customRadio214").disabled = false;
		document.getElementById("customRadio215").disabled = false;
		document.getElementById("customRadio216").disabled = false;
	}else{
		$(".ntRceThrobolysis").prop( "disabled", false );
		$("#ctDone").prop( "disabled", true );
		
		document.getElementById("customCheck1-355").disabled = true;
		document.getElementById("customCheck1-356").disabled = true;
		document.getElementById("customCheck1-357").disabled = true;
		document.getElementById("customCheck1-358").disabled = true;
		document.getElementById("customCheck1-359").disabled = true;
		document.getElementById("thrombolytic").disabled = true;
		document.getElementById("Thrombolyticdate").disabled = true;
		document.getElementById("ThTimehr").disabled = true;
		document.getElementById("ThTimeMn").disabled = true;
		document.getElementById("ThTimeAmPm").disabled = true;
		document.getElementById("customRadio217").disabled = true;
		document.getElementById("customRadio218").disabled = true;
		document.getElementById("customRadio219").disabled = true;
		document.getElementById("none").disabled = true;
		document.getElementById("customCheck1-361").disabled = true;
		document.getElementById("customCheck1-362").disabled = true;
		document.getElementById("customCheck1-363").disabled = true;
		document.getElementById("otherSerious").disabled = true;

		document.getElementById("customCheck1-355").checked = false;
		document.getElementById("customCheck1-356").checked = false;
		document.getElementById("customCheck1-357").checked = false;
		document.getElementById("customCheck1-358").checked = false;
		document.getElementById("customCheck1-359").checked = false;
		document.getElementById("thrombolytic").value = "";
		document.getElementById("Thrombolyticdate").value = "";
		document.getElementById("ThTimehr").value = "";
		document.getElementById("ThTimeMn").value = "";
		
		document.getElementById("customRadio217").checked = false;
		document.getElementById("customRadio218").checked = false;
		document.getElementById("customRadio219").checked = false;
		document.getElementById("none").value = "";
		document.getElementById("customCheck1-361").checked = false;
		document.getElementById("customCheck1-362").checked = false;
		document.getElementById("customCheck1-363").checked = false;
		document.getElementById("otherSerious").value = "";

		document.getElementById("customRadio154").disabled = true;
		document.getElementById("customRadio155").disabled = true;
		document.getElementById("customRadio156").disabled = true;
		document.getElementById("customRadio157").disabled = true;
		document.getElementById("customRadio158").disabled = true;
		document.getElementById("customRadio159").disabled = true;
		document.getElementById("customRadio160").disabled = true;
		document.getElementById("customRadio161").disabled = true;
		document.getElementById("customRadio162").disabled = true;
		document.getElementById("customRadio163").disabled = true;
		document.getElementById("customRadio164").disabled = true;
		document.getElementById("customRadio165").disabled = true;
		document.getElementById("customRadio166").disabled = true;
		document.getElementById("customRadio167").disabled = true;
		document.getElementById("customRadio168").disabled = true;
		document.getElementById("customRadio169").disabled = true;
		document.getElementById("customRadio170").disabled = true;
		document.getElementById("customRadio171").disabled = true;
		document.getElementById("customRadio172").disabled = true;
		document.getElementById("customRadio173").disabled = true;
		document.getElementById("customRadio174").disabled = true;
		document.getElementById("customRadio175").disabled = true;
		document.getElementById("customRadio176").disabled = true;
		document.getElementById("customRadio177").disabled = true;
		document.getElementById("customRadio178").disabled = true;
		document.getElementById("customRadio179").disabled = true;
		document.getElementById("customRadio180").disabled = true;
		document.getElementById("customRadio181").disabled = true;
		document.getElementById("customRadio182").disabled = true;
		document.getElementById("customRadio183").disabled = true;
		document.getElementById("customRadio184").disabled = true;
		document.getElementById("customRadio185").disabled = true;
		document.getElementById("customRadio186").disabled = true;
		document.getElementById("customRadio187").disabled = true;
		document.getElementById("customRadio188").disabled = true;
		document.getElementById("customRadio189").disabled = true;
		document.getElementById("customRadio190").disabled = true;
		document.getElementById("customRadio191").disabled = true;
		document.getElementById("customRadio192").disabled = true;
		document.getElementById("customRadio193").disabled = true;
		document.getElementById("customRadio194").disabled = true;
		document.getElementById("customRadio195").disabled = true;
		document.getElementById("customRadio196").disabled = true;
		document.getElementById("customRadio197").disabled = true;
		document.getElementById("customRadio198").disabled = true;
		document.getElementById("customRadio199").disabled = true;
		document.getElementById("customRadio200").disabled = true;
		document.getElementById("customRadio201").disabled = true;

		document.getElementById("customRadio202").disabled = true;
		document.getElementById("customRadio203").disabled = true;
		document.getElementById("customRadio204").disabled = true;
		document.getElementById("customRadio205").disabled = true;
		document.getElementById("customRadio206").disabled = true;
		document.getElementById("customRadio207").disabled = true;
		document.getElementById("customRadio208").disabled = true;
		document.getElementById("customRadio209").disabled = true;
		document.getElementById("customRadio210").disabled = true;
		document.getElementById("customRadio211").disabled = true;
		document.getElementById("customRadio212").disabled = true;
		document.getElementById("customRadio213").disabled = true;
		document.getElementById("customRadio214").disabled = true;
		document.getElementById("customRadio215").disabled = true;
		document.getElementById("customRadio216").disabled = true;
	}

}

function enable11() {
	var therapies = document.getElementById("customRadio271").checked;
	if (therapies == true) {
		document.getElementById("explain1").disabled = false;
	} else {
		document.getElementById("explain1").disabled = true;
		document.getElementById("explain1").value = "";
	}

}

function enable12() {
	var therapies = document.getElementById("customRadio274").checked;
	if (therapies == true) {
		document.getElementById("explain2").disabled = false;
	} else {
		document.getElementById("explain2").disabled = true;
		document.getElementById("explain2").value = "";
	}

}
function enable13() {
	var therapies = document.getElementById("customRadio277").checked;
	if (therapies == true) {
		document.getElementById("explain3").disabled = false;
	} else {
		document.getElementById("explain3").disabled = true;
		document.getElementById("explain3").value = "";
	}

}

function enable14() {
	var therapies = document.getElementById("customRadio280").checked;
	if (therapies == true) {
		document.getElementById("explain4").disabled = false;
	} else {
		document.getElementById("explain4").disabled = true;
		document.getElementById("explain4").value = "";
	}

}
function enable15() {
	var therapies = document.getElementById("customRadio283").checked;
	if (therapies == true) {
		document.getElementById("explain5").disabled = false;
	} else {
		document.getElementById("explain5").disabled = true;
		document.getElementById("explain5").value = "";
	}

}
function enable16() {
	var therapies = document.getElementById("customRadio286").checked;
	if (therapies == true) {
		document.getElementById("explain6").disabled = false;
	} else {
		document.getElementById("explain6").disabled = true;
		document.getElementById("explain6").value = "";
	}

}

function enable17() {
	var duration = document.getElementById("customRadio43").checked;

	if (duration == true) {
		document.getElementById("duration1").disabled = false;
		document.getElementById("customCheck1-418").disabled = true;
		document.getElementById("customCheck1-418").checked = false;
	} else {
		document.getElementById("duration1").disabled = true;
		document.getElementById("customCheck1-418").disabled = false;

		document.getElementById("duration1").value = "";
		
	}

}

function enable18() {
	var duration = document.getElementById("customRadio137").checked;
	if (duration == true) {
		document.getElementById("months").disabled = false;
		document.getElementById("treatmentspec").disabled = false;

	} else {
		document.getElementById("months").disabled = true;
		document.getElementById("months").value = "";
		document.getElementById("treatmentspec").disabled = true;
		document.getElementById("treatmentspec").value = "";
	}

}

function enable19() {
	var duration = document.getElementById("customRadio140").checked;
	if (duration == true) {
		document.getElementById("months1").disabled = false;

	} else {
		document.getElementById("months1").disabled = true;
		document.getElementById("months1").value = "";
	}
}

function enable20() {
	var duration = document.getElementById("customRadio143").checked;
	if (duration == true) {
		document.getElementById("months2").disabled = false;

	} else {
		document.getElementById("months2").disabled = true;
		document.getElementById("months2").value = "";
	}
}

function enable21() {
	var duration = document.getElementById("customRadio146").checked;
	if (duration == true) {
		document.getElementById("months3").disabled = false;

	} else {
		document.getElementById("months3").disabled = true;
		document.getElementById("months3").value = "";
	}
}

function enable22() {
	var medication = document.getElementById("customRadio149").checked;
	if (medication == true) {
		document.getElementById("customCheck1-340").disabled = false;
		document.getElementById("customCheck1-341").disabled = false;
		document.getElementById("customCheck1-342").disabled = false;
		document.getElementById("customCheck1-343").disabled = false;
		document.getElementById("customCheck1-344").disabled = false;
		document.getElementById("customCheck1-345").disabled = false;
		document.getElementById("customCheck1-346").disabled = false;
		document.getElementById("customCheck1-347").disabled = false;
		document.getElementById("customCheck1-348").disabled = false;
		document.getElementById("medother").disabled = false;
		document.getElementById("medother1").disabled = false;
		document.getElementById("medother2").disabled = false;
		document.getElementById("customCheck1-349").disabled = false;
		document.getElementById("customCheck1-350").disabled = false;
		document.getElementById("customCheck1-351").disabled = false;
		document.getElementById("customCheck1-352").disabled = false;

	} else {
		document.getElementById("customCheck1-340").disabled = true;
		document.getElementById("customCheck1-341").disabled = true;
		document.getElementById("customCheck1-342").disabled = true;
		document.getElementById("customCheck1-343").disabled = true;
		document.getElementById("customCheck1-344").disabled = true;
		document.getElementById("customCheck1-345").disabled = true;
		document.getElementById("customCheck1-346").disabled = true;
		document.getElementById("customCheck1-347").disabled = true;
		document.getElementById("customCheck1-348").disabled = true;
		document.getElementById("medother").disabled = true;
		document.getElementById("medother1").disabled = true;
		document.getElementById("medother2").disabled = true;
		document.getElementById("customCheck1-349").disabled = true;
		document.getElementById("customCheck1-350").disabled = true;
		document.getElementById("customCheck1-351").disabled = true;
		document.getElementById("customCheck1-352").disabled = true;

		document.getElementById("customCheck1-340").checked = false;
		document.getElementById("customCheck1-341").checked = false;
		document.getElementById("customCheck1-342").checked = false;
		document.getElementById("customCheck1-343").checked = false;
		document.getElementById("customCheck1-344").checked = false;
		document.getElementById("customCheck1-345").checked = false;
		document.getElementById("customCheck1-346").checked = false;
		document.getElementById("customCheck1-347").checked = false;
		document.getElementById("customCheck1-348").checked = false;
		document.getElementById("medother").value = "";
		document.getElementById("medother1").value = "";
		document.getElementById("medother2").value = "";
		document.getElementById("customCheck1-349").checked = false;
		document.getElementById("customCheck1-350").checked = false;
		document.getElementById("customCheck1-351").disabled = true;
		document.getElementById("customCheck1-352").checked = false;
	}
}
/*
 * function enable23() { var medication =
 * document.getElementById("customRadio153").checked; if (medication == true) {
 * document.getElementById("customRadio154").disabled = false;
 * document.getElementById("customRadio155").disabled = false;
 * document.getElementById("customRadio156").disabled = false;
 * document.getElementById("customRadio157").disabled = false;
 * document.getElementById("customRadio158").disabled = false;
 * document.getElementById("customRadio159").disabled = false;
 * document.getElementById("customRadio160").disabled = false;
 * document.getElementById("customRadio161").disabled = false;
 * document.getElementById("customRadio162").disabled = false;
 * document.getElementById("customRadio163").disabled = false;
 * document.getElementById("customRadio164").disabled = false;
 * document.getElementById("customRadio165").disabled = false;
 * document.getElementById("customRadio166").disabled = false;
 * document.getElementById("customRadio167").disabled = false;
 * document.getElementById("customRadio168").disabled = false;
 * document.getElementById("customRadio169").disabled = false;
 * document.getElementById("customRadio170").disabled = false;
 * document.getElementById("customRadio171").disabled = false;
 * document.getElementById("customRadio172").disabled = false;
 * document.getElementById("customRadio173").disabled = false;
 * document.getElementById("customRadio174").disabled = false;
 * document.getElementById("customRadio175").disabled = false;
 * document.getElementById("customRadio176").disabled = false;
 * document.getElementById("customRadio177").disabled = false;
 * document.getElementById("customRadio178").disabled = false;
 * document.getElementById("customRadio179").disabled = false;
 * document.getElementById("customRadio180").disabled = false;
 * document.getElementById("customRadio181").disabled = false;
 * document.getElementById("customRadio182").disabled = false;
 * document.getElementById("customRadio183").disabled = false;
 * document.getElementById("customRadio184").disabled = false;
 * document.getElementById("customRadio185").disabled = false;
 * document.getElementById("customRadio186").disabled = false;
 * document.getElementById("customRadio187").disabled = false;
 * document.getElementById("customRadio188").disabled = false;
 * document.getElementById("customRadio189").disabled = false;
 * document.getElementById("customRadio190").disabled = false;
 * document.getElementById("customRadio191").disabled = false;
 * document.getElementById("customRadio192").disabled = false;
 * document.getElementById("customRadio193").disabled = false;
 * document.getElementById("customRadio194").disabled = false;
 * document.getElementById("customRadio195").disabled = false;
 * document.getElementById("customRadio196").disabled = false;
 * document.getElementById("customRadio197").disabled = false;
 * document.getElementById("customRadio198").disabled = false;
 * document.getElementById("customRadio199").disabled = false;
 * document.getElementById("customRadio200").disabled = false;
 * document.getElementById("customRadio201").disabled = false;
 * document.getElementById("customRadio202").disabled = false;
 * 
 * 
 * document.getElementById("customCheck1-355").disabled = true;
 * document.getElementById("customCheck1-356").disabled = true;
 * document.getElementById("customCheck1-357").disabled = true;
 * document.getElementById("customCheck1-358").disabled = true;
 * document.getElementById("customCheck1-359").disabled = true;
 * document.getElementById("thrombolytic").disabled = true;
 * document.getElementById("Thrombolyticdate").disabled = true;
 * document.getElementById("Thrombolytictime").disabled = true;
 * document.getElementById("customRadio217").disabled = true;
 * document.getElementById("customRadio218").disabled = true;
 * document.getElementById("customRadio219").disabled = true;
 * document.getElementById("none").disabled = true;
 * document.getElementById("customCheck1-361").disabled = true;
 * document.getElementById("customCheck1-362").disabled = true;
 * document.getElementById("customCheck1-363").disabled = true;
 * document.getElementById("otherSerious").disabled = true; } else {
 * document.getElementById("customRadio154").disabled = true;
 * document.getElementById("customRadio155").disabled = true;
 * document.getElementById("customRadio156").disabled = true;
 * document.getElementById("customRadio157").disabled = true;
 * document.getElementById("customRadio158").disabled = true;
 * document.getElementById("customRadio159").disabled = true;
 * document.getElementById("customRadio160").disabled = true;
 * document.getElementById("customRadio161").disabled = true;
 * document.getElementById("customRadio162").disabled = true;
 * document.getElementById("customRadio163").disabled = true;
 * document.getElementById("customRadio164").disabled = true;
 * document.getElementById("customRadio165").disabled = true;
 * document.getElementById("customRadio166").disabled = true;
 * document.getElementById("customRadio167").disabled = true;
 * document.getElementById("customRadio168").disabled = true;
 * document.getElementById("customRadio169").disabled = true;
 * document.getElementById("customRadio170").disabled = true;
 * document.getElementById("customRadio171").disabled = true;
 * document.getElementById("customRadio172").disabled = true;
 * document.getElementById("customRadio173").disabled = true;
 * document.getElementById("customRadio174").disabled = true;
 * document.getElementById("customRadio175").disabled = true;
 * document.getElementById("customRadio176").disabled = true;
 * document.getElementById("customRadio177").disabled = true;
 * document.getElementById("customRadio178").disabled = true;
 * document.getElementById("customRadio179").disabled = true;
 * document.getElementById("customRadio180").disabled = true;
 * document.getElementById("customRadio181").disabled = true;
 * document.getElementById("customRadio182").disabled = true;
 * document.getElementById("customRadio183").disabled = true;
 * document.getElementById("customRadio184").disabled = true;
 * document.getElementById("customRadio185").disabled = true;
 * document.getElementById("customRadio186").disabled = true;
 * document.getElementById("customRadio187").disabled = true;
 * document.getElementById("customRadio188").disabled = true;
 * document.getElementById("customRadio189").disabled = true;
 * document.getElementById("customRadio190").disabled = true;
 * document.getElementById("customRadio191").disabled = true;
 * document.getElementById("customRadio192").disabled = true;
 * document.getElementById("customRadio193").disabled = true;
 * document.getElementById("customRadio194").disabled = true;
 * document.getElementById("customRadio195").disabled = true;
 * document.getElementById("customRadio196").disabled = true;
 * document.getElementById("customRadio197").disabled = true;
 * document.getElementById("customRadio198").disabled = true;
 * document.getElementById("customRadio199").disabled = true;
 * document.getElementById("customRadio200").disabled = true;
 * document.getElementById("customRadio201").disabled = true;
 * 
 * document.getElementById("customRadio202").disabled = true; } }
 */
function enable24() {

	var intiated = document.getElementById("customRadio220").checked;
	if (intiated == true) {
		document.getElementById("customCheck1-435").disabled = false;
		document.getElementById("customCheck1-436").disabled = false;
		document.getElementById("customCheck1-437").disabled = false;
		document.getElementById("providename").disabled = false;
	} else {
		document.getElementById("customCheck1-435").disabled = true;
		document.getElementById("customCheck1-436").disabled = true;
		document.getElementById("customCheck1-437").disabled = true;
		document.getElementById("providename").disabled = true;

		document.getElementById("customCheck1-435").checked = false;
		document.getElementById("customCheck1-436").checked = false;
		document.getElementById("customCheck1-437").checked = false;
		document.getElementById("providename").value = "";
	}
}

function enable25() {
	var intiated = document.getElementById("customRadio226").checked;
	if (intiated == true) {
		document.getElementById("customCheck1-438").disabled = false;
		document.getElementById("customCheck1-439").disabled = false;
		document.getElementById("customCheck1-440").disabled = false;
	} else {
		document.getElementById("customCheck1-438").disabled = true;
		document.getElementById("customCheck1-439").disabled = true;
		document.getElementById("customCheck1-440").disabled = true;

		document.getElementById("customCheck1-438").checked = false;
		document.getElementById("customCheck1-439").checked = false;
		document.getElementById("customCheck1-440").checked = false;
	}
}

function enable26() {
	var intiated = document.getElementById("customRadio232").checked;
	if (intiated == true) {
		document.getElementById("customCheck1-441").disabled = false;
		document.getElementById("customCheck1-442").disabled = false;
		document.getElementById("customCheck1-443").disabled = false;
	} else {
		document.getElementById("customCheck1-441").disabled = true;
		document.getElementById("customCheck1-442").disabled = true;
		document.getElementById("customCheck1-443").disabled = true;

		document.getElementById("customCheck1-441").checked = false;
		document.getElementById("customCheck1-442").checked = false;
		document.getElementById("customCheck1-443").checked = false;
	}
}

function enable27() {
	var intiated = document.getElementById("customRadio238").checked;
	if (intiated == true) {
		document.getElementById("customCheck1-444").disabled = false;
		document.getElementById("customCheck1-445").disabled = false;
		document.getElementById("customCheck1-446").disabled = false;
	} else {
		document.getElementById("customCheck1-444").disabled = true;
		document.getElementById("customCheck1-445").disabled = true;
		document.getElementById("customCheck1-446").disabled = true;

		document.getElementById("customCheck1-444").checked = false;
		document.getElementById("customCheck1-445").checked = false;
		document.getElementById("customCheck1-446").checked = false;
	}
}

function enable28() {
	var intiated = document.getElementById("customRadio244").checked;
	if (intiated == true) {
		document.getElementById("customCheck1-447").disabled = false;
		document.getElementById("customCheck1-448").disabled = false;
		document.getElementById("customCheck1-449").disabled = false;
	} else {
		document.getElementById("customCheck1-447").disabled = true;
		document.getElementById("customCheck1-448").disabled = true;
		document.getElementById("customCheck1-449").disabled = true;

		document.getElementById("customCheck1-447").checked = false;
		document.getElementById("customCheck1-448").checked = false;
		document.getElementById("customCheck1-449").checked = false;
	}

}

function enable29() {
	var dysphagia = document.getElementById("customRadio267").checked;
	if (dysphagia == true) {
		document.getElementById("customRadio269").disabled = false;
		document.getElementById("customRadio270").disabled = false;
	} else {
		document.getElementById("customRadio269").disabled = true;
		document.getElementById("customRadio270").disabled = true;

		document.getElementById("customRadio269").checked = false;
		document.getElementById("customRadio270").checked = false;
	}
}

function enable30() {
	var deterioarate = document.getElementById("customRadio355").checked;
	var Complications = document.getElementById("customRadio356").checked;
	var noOpt = document.getElementById("customRadio357").checked;
	
	if (deterioarate == true) {
		document.getElementById("customCheck1-367").disabled = false;
		document.getElementById("customCheck1-368").disabled = false;
		document.getElementById("customCheck1-368").disabled = false;
		document.getElementById("customCheck1-369").disabled = false;
		document.getElementById("customCheck1-370").disabled = false;
		document.getElementById("finaldiag").disabled = false;
		document.getElementById("icd_desc").disabled = false;
		document.getElementById("icd_code").disabled = false;
		document.getElementById("icd_code1").disabled = false;
		document.getElementById("strokeevent").disabled = false;

		document.getElementById("customRadio289").disabled = true;
		document.getElementById("customRadio290").disabled = true;
		document.getElementById("customRadio291").disabled = true;
		document.getElementById("customRadio292").disabled = true;
		document.getElementById("customRadio293").disabled = true;
		document.getElementById("customRadio294").disabled = true;
		document.getElementById("customRadio295").disabled = true;
		document.getElementById("customRadio296").disabled = true;
		document.getElementById("customRadio297").disabled = true;
		document.getElementById("customRadio298").disabled = true;
		document.getElementById("customRadio299").disabled = true;
		document.getElementById("customRadio300").disabled = true;
		document.getElementById("customRadio301").disabled = true;
		document.getElementById("customRadio302").disabled = true;
		document.getElementById("customRadio303").disabled = true;
		document.getElementById("customRadio304").disabled = true;
		document.getElementById("customRadio305").disabled = true;
		document.getElementById("customRadio306").disabled = true;
		document.getElementById("customRadio307").disabled = true;
		document.getElementById("customRadio308").disabled = true;
		document.getElementById("customRadio309").disabled = true;
		document.getElementById("customRadio310").disabled = true;
		document.getElementById("customRadio311").disabled = true;
		document.getElementById("customRadio312").disabled = true;
		document.getElementById("customRadio313").disabled = true;
		document.getElementById("customRadio314").disabled = true;
		document.getElementById("customRadio315").disabled = true;
		document.getElementById("customRadio316").disabled = true;

		document.getElementById("customRadio317").disabled = true;
		document.getElementById("customRadio318").disabled = true;
		document.getElementById("customRadio319").disabled = true;
		document.getElementById("customRadio320").disabled = true;
		document.getElementById("customRadio321").disabled = true;
		document.getElementById("customRadio322").disabled = true;
		document.getElementById("customRadio323").disabled = true;
		document.getElementById("customRadio324").disabled = true;
		document.getElementById("customRadio325").disabled = true;
		document.getElementById("customRadio326").disabled = true;
		document.getElementById("customRadio327").disabled = true;
		

		document.getElementById("customRadio289").checked = false;
		document.getElementById("customRadio290").checked = false;
		document.getElementById("customRadio291").checked = false;
		document.getElementById("customRadio292").checked = false;
		document.getElementById("customRadio293").checked = false;
		document.getElementById("customRadio294").checked = false;
		document.getElementById("customRadio295").checked = false;
		document.getElementById("customRadio296").checked = false;
		document.getElementById("customRadio297").checked = false;
		document.getElementById("customRadio298").checked = false;
		document.getElementById("customRadio299").checked = false;
		document.getElementById("customRadio300").checked = false;
		document.getElementById("customRadio301").checked = false;
		document.getElementById("customRadio302").checked = false;
		document.getElementById("customRadio303").checked = false;
		document.getElementById("customRadio304").checked = false;
		document.getElementById("customRadio305").checked = false;
		document.getElementById("customRadio306").checked = false;
		document.getElementById("customRadio307").checked = false;
		document.getElementById("customRadio308").checked = false;
		document.getElementById("customRadio309").checked = false;
		document.getElementById("customRadio310").checked = false;
		document.getElementById("customRadio311").checked = false;
		document.getElementById("customRadio312").checked = false;
		document.getElementById("customRadio313").checked = false;
		document.getElementById("customRadio314").checked = false;
		document.getElementById("customRadio315").checked = false;
		document.getElementById("customRadio316").checked = false;

		document.getElementById("customRadio317").checked = false;
		document.getElementById("customRadio318").checked = false;
		document.getElementById("customRadio319").checked = false;
		document.getElementById("customRadio320").checked = false;
		document.getElementById("customRadio321").checked = false;
		document.getElementById("customRadio322").checked = false;
		document.getElementById("customRadio323").checked = false;
		document.getElementById("customRadio324").checked = false;
		document.getElementById("customRadio325").checked = false;
		document.getElementById("customRadio326").checked = false;
		document.getElementById("customRadio327").checked = false;
		
		document.getElementById("psychiatric_illness_other").disabled = true;
		document.getElementById("psychiatric_illness_other").value = "";
		
		
		$(".dur_hospitalisation").prop( "disabled", true );

	}else if (Complications == true) {

		document.getElementById("customCheck1-367").disabled = true;
		document.getElementById("customCheck1-368").disabled = true;		
		document.getElementById("customCheck1-369").disabled = true;
		document.getElementById("customCheck1-370").disabled = true;
		
		document.getElementById("finaldiag").disabled = true;
		document.getElementById("icd_desc").disabled = true;
		document.getElementById("icd_code").disabled = true;
		document.getElementById("icd_code1").disabled = true;
		document.getElementById("strokeevent").disabled = true;

		document.getElementById("customCheck1-367").checked = false;
		document.getElementById("customCheck1-368").checked = false;		
		document.getElementById("customCheck1-369").checked = false;
		document.getElementById("customCheck1-370").checked = false;
		
		document.getElementById("finaldiag").value = "";
		document.getElementById("icd_desc").value = "";
		document.getElementById("icd_code").value = "";
		document.getElementById("icd_code1").value = "";
		document.getElementById("strokeevent").value = "";

		document.getElementById("customRadio289").disabled = false;
		document.getElementById("customRadio290").disabled = false;
		document.getElementById("customRadio291").disabled = false;
		document.getElementById("customRadio292").disabled = false;
		document.getElementById("customRadio293").disabled = false;
		document.getElementById("customRadio294").disabled = false;
		document.getElementById("customRadio295").disabled = false;
		document.getElementById("customRadio296").disabled = false;
		document.getElementById("customRadio297").disabled = false;
		document.getElementById("customRadio298").disabled = false;
		document.getElementById("customRadio299").disabled = false;
		document.getElementById("customRadio300").disabled = false;
		document.getElementById("customRadio301").disabled = false;
		document.getElementById("customRadio302").disabled = false;
		document.getElementById("customRadio303").disabled = false;
		document.getElementById("customRadio304").disabled = false;
		document.getElementById("customRadio305").disabled = false;
		document.getElementById("customRadio306").disabled = false;
		document.getElementById("customRadio307").disabled = false;
		document.getElementById("customRadio308").disabled = false;
		document.getElementById("customRadio309").disabled = false;
		document.getElementById("customRadio310").disabled = false;
		document.getElementById("customRadio311").disabled = false;
		document.getElementById("customRadio312").disabled = false;
		document.getElementById("customRadio313").disabled = false;
		document.getElementById("customRadio314").disabled = false;
		document.getElementById("customRadio315").disabled = false;
		document.getElementById("customRadio316").disabled = false;

		document.getElementById("customRadio317").disabled = false;
		document.getElementById("customRadio318").disabled = false;
		document.getElementById("customRadio319").disabled = false;
		document.getElementById("customRadio320").disabled = false;
		document.getElementById("customRadio321").disabled = false;
		document.getElementById("customRadio322").disabled = false;
		document.getElementById("customRadio323").disabled = false;
		document.getElementById("customRadio324").disabled = false;
		document.getElementById("customRadio325").disabled = false;
		document.getElementById("customRadio326").disabled = false;
		document.getElementById("customRadio327").disabled = false;
		
		document.getElementById("psychiatric_illness_other").disabled = false;
		
		$(".dur_hospitalisation").prop( "disabled", false );

	}else{
		
		document.getElementById("customCheck1-367").disabled = true;
		 document.getElementById("customCheck1-368").disabled = true;
		 document.getElementById("customCheck1-368").disabled = true;
		 document.getElementById("customCheck1-369").disabled = true;
		 document.getElementById("customCheck1-370").disabled = true;
		 
		 document.getElementById("finaldiag").disabled = true;
		 document.getElementById("icd_desc").disabled = true;
		 document.getElementById("icd_code").disabled = true;
		 document.getElementById("icd_code1").disabled = true;
		 document.getElementById("strokeevent").disabled = true;
		 
		 document.getElementById("customCheck1-367").checked = false;
			document.getElementById("customCheck1-368").checked = false;		
			document.getElementById("customCheck1-369").checked = false;
			document.getElementById("customCheck1-370").checked = false;
			
			document.getElementById("finaldiag").value = "";
			document.getElementById("icd_desc").value = "";
			document.getElementById("icd_code").value = "";
			document.getElementById("icd_code1").value = "";
			document.getElementById("strokeevent").value = "";
		 
		 
		 document.getElementById("customRadio289").disabled = true;
			document.getElementById("customRadio290").disabled = true;
			document.getElementById("customRadio291").disabled = true;
			document.getElementById("customRadio292").disabled = true;
			document.getElementById("customRadio293").disabled = true;
			document.getElementById("customRadio294").disabled = true;
			document.getElementById("customRadio295").disabled = true;
			document.getElementById("customRadio296").disabled = true;
			document.getElementById("customRadio297").disabled = true;
			document.getElementById("customRadio298").disabled = true;
			document.getElementById("customRadio299").disabled = true;
			document.getElementById("customRadio300").disabled = true;
			document.getElementById("customRadio301").disabled = true;
			document.getElementById("customRadio302").disabled = true;
			document.getElementById("customRadio303").disabled = true;
			document.getElementById("customRadio304").disabled = true;
			document.getElementById("customRadio305").disabled = true;
			document.getElementById("customRadio306").disabled = true;
			document.getElementById("customRadio307").disabled = true;
			document.getElementById("customRadio308").disabled = true;
			document.getElementById("customRadio309").disabled = true;
			document.getElementById("customRadio310").disabled = true;
			document.getElementById("customRadio311").disabled = true;
			document.getElementById("customRadio312").disabled = true;
			document.getElementById("customRadio313").disabled = true;
			document.getElementById("customRadio314").disabled = true;
			document.getElementById("customRadio315").disabled = true;
			document.getElementById("customRadio316").disabled = true;

			document.getElementById("customRadio317").disabled = true;
			document.getElementById("customRadio318").disabled = true;
			document.getElementById("customRadio319").disabled = true;
			document.getElementById("customRadio320").disabled = true;
			document.getElementById("customRadio321").disabled = true;
			document.getElementById("customRadio322").disabled = true;
			document.getElementById("customRadio323").disabled = true;
			document.getElementById("customRadio324").disabled = true;
			document.getElementById("customRadio325").disabled = true;
			document.getElementById("customRadio326").disabled = true;
			document.getElementById("customRadio327").disabled = true;
			
			document.getElementById("customRadio289").checked = false;
			document.getElementById("customRadio290").checked = false;
			document.getElementById("customRadio291").checked = false;
			document.getElementById("customRadio292").checked = false;
			document.getElementById("customRadio293").checked = false;
			document.getElementById("customRadio294").checked = false;
			document.getElementById("customRadio295").checked = false;
			document.getElementById("customRadio296").checked = false;
			document.getElementById("customRadio297").checked = false;
			document.getElementById("customRadio298").checked = false;
			document.getElementById("customRadio299").checked = false;
			document.getElementById("customRadio300").checked = false;
			document.getElementById("customRadio301").checked = false;
			document.getElementById("customRadio302").checked = false;
			document.getElementById("customRadio303").checked = false;
			document.getElementById("customRadio304").checked = false;
			document.getElementById("customRadio305").checked = false;
			document.getElementById("customRadio306").checked = false;
			document.getElementById("customRadio307").checked = false;
			document.getElementById("customRadio308").checked = false;
			document.getElementById("customRadio309").checked = false;
			document.getElementById("customRadio310").checked = false;
			document.getElementById("customRadio311").checked = false;
			document.getElementById("customRadio312").checked = false;
			document.getElementById("customRadio313").checked = false;
			document.getElementById("customRadio314").checked = false;
			document.getElementById("customRadio315").checked = false;
			document.getElementById("customRadio316").checked = false;

			document.getElementById("customRadio317").checked = false;
			document.getElementById("customRadio318").checked = false;
			document.getElementById("customRadio319").checked = false;
			document.getElementById("customRadio320").checked = false;
			document.getElementById("customRadio321").checked = false;
			document.getElementById("customRadio322").checked = false;
			document.getElementById("customRadio323").checked = false;
			document.getElementById("customRadio324").checked = false;
			document.getElementById("customRadio325").checked = false;
			document.getElementById("customRadio326").checked = false;
			document.getElementById("customRadio327").checked = false;
			
			document.getElementById("psychiatric_illness_other").disabled = true;
			document.getElementById("psychiatric_illness_other").value = "";
			
			$(".dur_hospitalisation").prop( "disabled", true );
			
	}
}

function enable31() {
	var Complications = document.getElementById("customRadio356").checked;
	if (Complications == true) {

		document.getElementById("customCheck1-367").disabled = true;
		document.getElementById("customCheck1-368").disabled = true;
		document.getElementById("customCheck1-368").disabled = true;
		document.getElementById("customCheck1-369").disabled = true;
		document.getElementById("customCheck1-370").disabled = true;
		document.getElementById("finaldiag").disabled = true;
		document.getElementById("icd_desc").disabled = true;
		document.getElementById("icd_code").disabled = true;
		document.getElementById("strokeevent").disabled = true;

		document.getElementById("customCheck1-367").checked = false;
		document.getElementById("customCheck1-368").checked = false;
		document.getElementById("customCheck1-368").checked = false;
		document.getElementById("customCheck1-369").checked = false;
		document.getElementById("customCheck1-370").checked = false;
		document.getElementById("finaldiag").value = "";
		document.getElementById("icd_desc").value = "";
		document.getElementById("icd_code").value = "";
		document.getElementById("strokeevent").value = "";

		document.getElementById("customRadio289").disabled = false;
		document.getElementById("customRadio290").disabled = false;
		document.getElementById("customRadio291").disabled = false;
		document.getElementById("customRadio292").disabled = false;
		document.getElementById("customRadio293").disabled = false;
		document.getElementById("customRadio294").disabled = false;
		document.getElementById("customRadio295").disabled = false;
		document.getElementById("customRadio296").disabled = false;
		document.getElementById("customRadio297").disabled = false;
		document.getElementById("customRadio298").disabled = false;
		document.getElementById("customRadio299").disabled = false;
		document.getElementById("customRadio300").disabled = false;
		document.getElementById("customRadio301").disabled = false;
		document.getElementById("customRadio302").disabled = false;
		document.getElementById("customRadio303").disabled = false;
		document.getElementById("customRadio304").disabled = false;
		document.getElementById("customRadio305").disabled = false;
		document.getElementById("customRadio306").disabled = false;
		document.getElementById("customRadio307").disabled = false;
		document.getElementById("customRadio308").disabled = false;
		document.getElementById("customRadio309").disabled = false;
		document.getElementById("customRadio310").disabled = false;
		document.getElementById("customRadio311").disabled = false;
		document.getElementById("customRadio312").disabled = false;
		document.getElementById("customRadio313").disabled = false;
		document.getElementById("customRadio314").disabled = false;
		document.getElementById("customRadio315").disabled = false;
		document.getElementById("customRadio316").disabled = false;

		document.getElementById("customRadio317").disabled = false;
		document.getElementById("customRadio318").disabled = false;
		document.getElementById("customRadio319").disabled = false;
		document.getElementById("customRadio320").disabled = false;
		document.getElementById("customRadio321").disabled = false;
		document.getElementById("customRadio322").disabled = false;
		document.getElementById("customRadio323").disabled = false;
		document.getElementById("customRadio324").disabled = false;
		document.getElementById("customRadio325").disabled = false;
		document.getElementById("customRadio326").disabled = false;
		document.getElementById("customRadio327").disabled = false;
		
		
		$(".dur_hospitalisation").prop( "disabled", false );

	} /*
		 * else { document.getElementById("customRadio289").disabled = true;
		 * document.getElementById("customRadio290").disabled = true;
		 * document.getElementById("customRadio291").disabled = true;
		 * document.getElementById("customRadio292").disabled = true;
		 * document.getElementById("customRadio293").disabled = true;
		 * document.getElementById("customRadio294").disabled = true;
		 * document.getElementById("customRadio295").disabled = true;
		 * document.getElementById("customRadio296").disabled = true;
		 * document.getElementById("customRadio297").disabled = true;
		 * document.getElementById("customRadio298").disabled = true;
		 * document.getElementById("customRadio299").disabled = true;
		 * document.getElementById("customRadio300").disabled = true;
		 * document.getElementById("customRadio301").disabled = true;
		 * document.getElementById("customRadio302").disabled = true;
		 * document.getElementById("customRadio303").disabled = true;
		 * document.getElementById("customRadio304").disabled = true;
		 * document.getElementById("customRadio305").disabled = true;
		 * document.getElementById("customRadio306").disabled = true;
		 * document.getElementById("customRadio307").disabled = true;
		 * document.getElementById("customRadio308").disabled = true;
		 * document.getElementById("customRadio309").disabled = true;
		 * document.getElementById("customRadio310").disabled = true;
		 * document.getElementById("customRadio311").disabled = true;
		 * document.getElementById("customRadio312").disabled = true;
		 * document.getElementById("customRadio313").disabled = true;
		 * document.getElementById("customRadio314").disabled = true;
		 * document.getElementById("customRadio315").disabled = true;
		 * document.getElementById("customRadio316").disabled = true;
		 * 
		 * document.getElementById("customRadio317").disabled = true;
		 * document.getElementById("customRadio318").disabled = true;
		 * document.getElementById("customRadio319").disabled = true;
		 * document.getElementById("customRadio320").disabled = true;
		 * document.getElementById("customRadio321").disabled = true;
		 * document.getElementById("customRadio322").disabled = true;
		 * document.getElementById("customRadio323").disabled = true;
		 * document.getElementById("customRadio324").disabled = true;
		 * document.getElementById("customRadio325").disabled = true;
		 * document.getElementById("customRadio326").disabled = true;
		 * document.getElementById("customRadio327").disabled = true;
		 * document.getElementById("hospitalisation").disabled = true; }
		 */
}
function enable77() {
	var Complications = document.getElementById("customRadio357").checked;
	if (Complications == true) {

		document.getElementById("customCheck1-367").disabled = true;
		document.getElementById("customCheck1-368").disabled = true;
		document.getElementById("customCheck1-368").disabled = true;
		document.getElementById("customCheck1-369").disabled = true;
		document.getElementById("customCheck1-370").disabled = true;
		document.getElementById("finaldiag").disabled = true;
		document.getElementById("icd_desc").disabled = true;
		document.getElementById("icd_code").disabled = true;
		document.getElementById("strokeevent").disabled = true;

		document.getElementById("customRadio289").disabled = true;
		document.getElementById("customRadio290").disabled = true;
		document.getElementById("customRadio291").disabled = true;
		document.getElementById("customRadio292").disabled = true;
		document.getElementById("customRadio293").disabled = true;
		document.getElementById("customRadio294").disabled = true;
		document.getElementById("customRadio295").disabled = true;
		document.getElementById("customRadio296").disabled = true;
		document.getElementById("customRadio297").disabled = true;
		document.getElementById("customRadio298").disabled = true;
		document.getElementById("customRadio299").disabled = true;
		document.getElementById("customRadio300").disabled = true;
		document.getElementById("customRadio301").disabled = true;
		document.getElementById("customRadio302").disabled = true;
		document.getElementById("customRadio303").disabled = true;
		document.getElementById("customRadio304").disabled = true;
		document.getElementById("customRadio305").disabled = true;
		document.getElementById("customRadio306").disabled = true;
		document.getElementById("customRadio307").disabled = true;
		document.getElementById("customRadio308").disabled = true;
		document.getElementById("customRadio309").disabled = true;
		document.getElementById("customRadio310").disabled = true;
		document.getElementById("customRadio311").disabled = true;
		document.getElementById("customRadio312").disabled = true;
		document.getElementById("customRadio313").disabled = true;
		document.getElementById("customRadio314").disabled = true;
		document.getElementById("customRadio315").disabled = true;
		document.getElementById("customRadio316").disabled = true;

		document.getElementById("customRadio317").disabled = true;
		document.getElementById("customRadio318").disabled = true;
		document.getElementById("customRadio319").disabled = true;
		document.getElementById("customRadio320").disabled = true;
		document.getElementById("customRadio321").disabled = true;
		document.getElementById("customRadio322").disabled = true;
		document.getElementById("customRadio323").disabled = true;
		document.getElementById("customRadio324").disabled = true;
		document.getElementById("customRadio325").disabled = true;
		document.getElementById("customRadio326").disabled = true;
		document.getElementById("customRadio327").disabled = true;
		document.getElementById("hospitalisation").disabled = true;

		document.getElementById("customCheck1-367").checked = false;
		document.getElementById("customCheck1-368").checked = false;
		document.getElementById("customCheck1-368").checked = false;
		document.getElementById("customCheck1-369").checked = false;
		document.getElementById("customCheck1-370").checked = false;
		document.getElementById("finaldiag").value = "";
		document.getElementById("icd_desc").value = "";
		document.getElementById("icd_code").value = "";
		document.getElementById("strokeevent").value = "";

		document.getElementById("customRadio289").checked = false;
		document.getElementById("customRadio290").checked = false;
		document.getElementById("customRadio291").checked = false;
		document.getElementById("customRadio292").checked = false;
		document.getElementById("customRadio293").checked = false;
		document.getElementById("customRadio294").checked = false;
		document.getElementById("customRadio295").checked = false;
		document.getElementById("customRadio296").checked = false;
		document.getElementById("customRadio297").checked = false;
		document.getElementById("customRadio298").checked = false;
		document.getElementById("customRadio299").checked = false;
		document.getElementById("customRadio300").checked = false;
		document.getElementById("customRadio301").checked = false;
		document.getElementById("customRadio302").checked = false;
		document.getElementById("customRadio303").checked = false;
		document.getElementById("customRadio304").checked = false;
		document.getElementById("customRadio305").checked = false;
		document.getElementById("customRadio306").checked = false;
		document.getElementById("customRadio307").checked = false;
		document.getElementById("customRadio308").checked = false;
		document.getElementById("customRadio309").checked = false;
		document.getElementById("customRadio310").checked = false;
		document.getElementById("customRadio311").checked = false;
		document.getElementById("customRadio312").checked = false;
		document.getElementById("customRadio313").checked = false;
		document.getElementById("customRadio314").checked = false;
		document.getElementById("customRadio315").checked = false;
		document.getElementById("customRadio316").checked = false;

		document.getElementById("customRadio317").checked = false;
		document.getElementById("customRadio318").checked = false;
		document.getElementById("customRadio319").checked = false;
		document.getElementById("customRadio320").checked = false;
		document.getElementById("customRadio321").checked = false;
		document.getElementById("customRadio322").checked = false;
		document.getElementById("customRadio323").checked = false;
		document.getElementById("customRadio324").checked = false;
		document.getElementById("customRadio325").checked = false;
		document.getElementById("customRadio326").checked = false;
		document.getElementById("customRadio327").checked = false;

		document.getElementById("hospitalisation").value = "";

	}
}
function enable32() {
	var discharge = document.getElementById("customRadio328").checked;

	if (discharge == true) {
		document.getElementById("customRadio331").disabled = false;
		document.getElementById("customRadio332").disabled = false;
		document.getElementById("customRadio333").disabled = false;
		document.getElementById("customRadio334").disabled = false;
		document.getElementById("customRadio335").disabled = false;
		document.getElementById("customRadio336").disabled = false;
		document.getElementById("customRadio337").disabled = false;
		document.getElementById("customRadio338").disabled = false;
		document.getElementById("customRadio339").disabled = false;
		document.getElementById("customRadio404").disabled = false;
		document.getElementById("customRadio341").disabled = false;
		document.getElementById("customRadio342").disabled = false;
		document.getElementById("customRadio343").disabled = false;
		document.getElementById("customRadio344").disabled = false;
		document.getElementById("customRadio345").disabled = false;
		document.getElementById("Pharmacologic").disabled = false;
		document.getElementById("customRadio346").disabled = false;
		document.getElementById("customRadio347").disabled = false;
		document.getElementById("customRadio348").disabled = false;
		document.getElementById("customRadio349").disabled = false;
		document.getElementById("customRadio350").disabled = false;
		document.getElementById("customRadio351").disabled = false;
		document.getElementById("customRadio352").disabled = false;
		document.getElementById("customRadio353").disabled = false;
		document.getElementById("customRadio354").disabled = false;

		document.getElementById("customRadio415").disabled = false;
		document.getElementById("customRadio416").disabled = false;
		document.getElementById("customRadio358").disabled = false;
		document.getElementById("customRadio359").disabled = false;
		document.getElementById("customRadio360").disabled = false;
		document.getElementById("customRadio361").disabled = false;
		document.getElementById("customRadio362").disabled = false;
		document.getElementById("customRadio363").disabled = false;
		document.getElementById("customRadio364").disabled = false;
		document.getElementById("customRadio365").disabled = false;
		document.getElementById("customRadio366").disabled = false;
		document.getElementById("customRadio367").disabled = false;
		document.getElementById("customRadio368").disabled = false;
		document.getElementById("customRadio369").disabled = false;
		document.getElementById("customRadio370").disabled = false;

		$(".pharmacologic_dis").prop("disabled",false);		
		$(".Counselling_dis").prop("disabled",false);
		
		if($(".pharmacologic_dis").val() == "yes"){
			$(".pharmacologic_dis").val('');
			$(".Counselling_dis").val('');
			
			$('#myForm').bootstrapValidator('revalidateField', 'hypertens');
			$('#myForm').bootstrapValidator('revalidateField', 'antiP');
			$('#myForm').bootstrapValidator('revalidateField', 'antiC');
			$('#myForm').bootstrapValidator('revalidateField', 'stat');
			$('#myForm').bootstrapValidator('revalidateField', 'antidia');
			
			$('#myForm').bootstrapValidator('revalidateField', 'counc');
			$('#myForm').bootstrapValidator('revalidateField', 'counFor');
			$('#myForm').bootstrapValidator('revalidateField', 'smok');
			$('#myForm').bootstrapValidator('revalidateField', 'smokTob');
			$('#myForm').bootstrapValidator('revalidateField', 'counAbs');
			
			$('#myForm').bootstrapValidator('revalidateField', 'counDrug');
			$('#myForm').bootstrapValidator('revalidateField', 'rehab');
			$('#myForm').bootstrapValidator('revalidateField', 'strk');
		}
		
		
		

	} else {
		document.getElementById("customRadio331").disabled = true;
		document.getElementById("customRadio332").disabled = true;
		document.getElementById("customRadio333").disabled = true;
		document.getElementById("customRadio334").disabled = true;
		document.getElementById("customRadio335").disabled = true;
		document.getElementById("customRadio336").disabled = true;
		document.getElementById("customRadio337").disabled = true;
		document.getElementById("customRadio338").disabled = true;
		document.getElementById("customRadio339").disabled = true;
		document.getElementById("customRadio404").disabled = true;
		document.getElementById("customRadio341").disabled = true;
		document.getElementById("customRadio342").disabled = true;
		document.getElementById("customRadio343").disabled = true;
		document.getElementById("customRadio344").disabled = true;
		document.getElementById("customRadio345").disabled = true;
		document.getElementById("Pharmacologic").disabled = true;
		document.getElementById("customRadio346").disabled = true;
		document.getElementById("customRadio347").disabled = true;
		document.getElementById("customRadio348").disabled = true;
		document.getElementById("customRadio349").disabled = true;
		document.getElementById("customRadio350").disabled = true;
		document.getElementById("customRadio351").disabled = true;
		document.getElementById("customRadio352").disabled = true;
		document.getElementById("customRadio353").disabled = true;
		document.getElementById("customRadio354").disabled = true;

		document.getElementById("customRadio415").disabled = true;
		document.getElementById("customRadio416").disabled = true;
		document.getElementById("customRadio358").disabled = true;
		document.getElementById("customRadio359").disabled = true;
		document.getElementById("customRadio360").disabled = true;
		document.getElementById("customRadio361").disabled = true;
		document.getElementById("customRadio362").disabled = true;
		document.getElementById("customRadio363").disabled = true;
		document.getElementById("customRadio364").disabled = true;
		document.getElementById("customRadio365").disabled = true;
		document.getElementById("customRadio366").disabled = true;
		document.getElementById("customRadio367").disabled = true;
		document.getElementById("customRadio368").disabled = true;
		document.getElementById("customRadio369").disabled = true;
		document.getElementById("customRadio370").disabled = true;

		document.getElementById("customRadio331").checked = false;
		document.getElementById("customRadio332").checked = false;
		document.getElementById("customRadio333").checked = false;
		document.getElementById("customRadio334").checked = false;
		document.getElementById("customRadio335").checked = false;
		document.getElementById("customRadio336").checked = false;
		document.getElementById("customRadio337").checked = false;
		document.getElementById("customRadio338").checked = false;
		document.getElementById("customRadio339").checked = false;
		document.getElementById("customRadio404").checked = false;
		document.getElementById("customRadio341").checked = false;
		document.getElementById("customRadio342").checked = false;
		document.getElementById("customRadio343").checked = false;
		document.getElementById("customRadio344").checked = false;
		document.getElementById("customRadio345").checked = false;
		document.getElementById("Pharmacologic").checked = false;
		document.getElementById("customRadio346").checked = false;
		document.getElementById("customRadio347").checked = false;
		document.getElementById("customRadio348").checked = false;
		document.getElementById("customRadio349").checked = false;
		document.getElementById("customRadio350").checked = false;
		document.getElementById("customRadio351").checked = false;
		document.getElementById("customRadio352").checked = false;
		document.getElementById("customRadio353").checked = false;
		document.getElementById("customRadio354").checked = false;

		document.getElementById("customRadio415").checked = false;
		document.getElementById("customRadio416").checked = false;
		document.getElementById("customRadio358").checked = false;
		document.getElementById("customRadio359").checked = false;
		document.getElementById("customRadio360").checked = false;
		document.getElementById("customRadio361").checked = false;
		document.getElementById("customRadio362").checked = false;
		document.getElementById("customRadio363").checked = false;
		document.getElementById("customRadio364").checked = false;
		document.getElementById("customRadio365").checked = false;
		document.getElementById("customRadio366").checked = false;
		document.getElementById("customRadio367").checked = false;
		document.getElementById("customRadio368").checked = false;
		document.getElementById("customRadio369").checked = false;
		document.getElementById("customRadio370").checked = false;
		
		
		$(".pharmacologic_dis").val('yes');
	/*	$(".Counselling_dis").each(function(i){
			$(this).val('');
		});*/
		
		$(".Counselling_dis").val('yes');
		
		$('#myForm').bootstrapValidator('revalidateField', 'hypertens');
		$('#myForm').bootstrapValidator('revalidateField', 'antiP');
		$('#myForm').bootstrapValidator('revalidateField', 'antiC');
		$('#myForm').bootstrapValidator('revalidateField', 'stat');
		$('#myForm').bootstrapValidator('revalidateField', 'antidia');
		
		$('#myForm').bootstrapValidator('revalidateField', 'counc');
		$('#myForm').bootstrapValidator('revalidateField', 'counFor');
		$('#myForm').bootstrapValidator('revalidateField', 'smok');
		$('#myForm').bootstrapValidator('revalidateField', 'smokTob');
		$('#myForm').bootstrapValidator('revalidateField', 'counAbs');
		
		$('#myForm').bootstrapValidator('revalidateField', 'counDrug');
		$('#myForm').bootstrapValidator('revalidateField', 'rehab');
		$('#myForm').bootstrapValidator('revalidateField', 'strk');
		
		
		$(".pharmacologic_dis").prop("disabled",true);
		$(".Counselling_dis").prop("disabled",true);
	}
}

function enable33() {
	var stroke = document.getElementById("customRadio413").checked;
	
	var discharge_vitalSt = document.getElementById("customRadio328").checked;
	
	
	
	
	var df = $("#due").val().toString();
	var df2 = $("#due1").val().toString();
	
	
	var today = new Date();
	var dd = today.getDate();
    var mm = today.getMonth()+1;
    var y = today.getFullYear();
    var someFormattedDate = mm + '/' + dd + '/' + y;
    
    var crdate = (mm+"/"+dd+"/"+y);
    var dudate = (df.substring(3,5)+"/"+df.substring(0,2)+"/"+df.substring(6,10));
    var dudate2 = (df2.substring(3,5)+"/"+df2.substring(0,2)+"/"+df2.substring(6,10));
    
    var date1 = new Date(dudate);
    var date2 = new Date(crdate);
    
    var date3 = new Date(dudate2);
    
    var date1_ms = date1.getTime();
    var date2_ms = date2.getTime();
    var date3_ms = date3.getTime();
    
    var diff = date2_ms-date1_ms;  
    var diff2 = date2_ms-date3_ms;
    // get days
    var days = diff/1000/60/60/24;
    var days2 = diff2/1000/60/60/24;
    

    if (stroke == true){    	
        if(days < 0){    
        	document.getElementById("customRadio413").checked = false;
        	$.alert({ 
				 icon: 'fa fa-spinner fa-spin',
				title: 'Alert!',
			    content: 'Please wait remaining '+ Math.abs(days)+ " Days for follow-up",
			   type: 'red',
			    typeAnimated: true,
			    buttons: { 
			        Close: {
			            btnClass: 'btn-red',
			            keys: ['enter'],
			        },
			    }
			});        	
        }
    }
    
 
	if (stroke == true && days >= 0 && discharge_vitalSt == true) {		
		
		document.getElementById("actual").disabled = false;
		document.getElementById("customCheck1-378").disabled = false;
		document.getElementById("customCheck1-380").disabled = false;

		document.getElementById("customCheck1-382").disabled = false;
		document.getElementById("customCheck1-384").disabled = false;
		document.getElementById("followup").disabled = false;
		document.getElementById("customCheck1-386").disabled = false;

		document.getElementById("customRadio371").disabled = false;
		document.getElementById("customRadio372").disabled = false;

	}
	else{
		document.getElementById("customRadio413").checked = false;
		
		document.getElementById("due").readonly = true;
		document.getElementById("actual").disabled = true;
		document.getElementById("customCheck1-378").disabled = true;
		document.getElementById("customCheck1-380").disabled = true;

		document.getElementById("customCheck1-382").disabled = true;
		document.getElementById("customCheck1-384").disabled = true;
		document.getElementById("followup").disabled = true;
		document.getElementById("customCheck1-386").disabled = true;
		
		document.getElementById("customRadio371").disabled = true;
		document.getElementById("customRadio372").disabled = true;
		document.getElementById("customRadio371").checked = false;
		document.getElementById("customRadio372").checked = false;

		
		document.getElementById("actual").value = "";
		document.getElementById("customCheck1-378").checked = false;
		document.getElementById("customCheck1-380").checked = false;

		document.getElementById("customCheck1-382").checked = false;
		document.getElementById("customCheck1-384").checked = false;
		document.getElementById("followup").value = "";
		document.getElementById("customCheck1-386").checked = false;

		
		$(".symptom_I").prop('disabled',true);
		$(".symptom_I").prop('checked',false);
		
		enable35();
	
	}

}

function enable34() {
	var stroke = document.getElementById("customRadio414").checked;	
	
	var vitalStatus = document.getElementById("customRadio371").checked;
	
	var df2 = $("#due1").val().toString();
	
	
	var today = new Date();
	var dd = today.getDate();
    var mm = today.getMonth()+1;
    var y = today.getFullYear();
    var someFormattedDate = mm + '/' + dd + '/' + y;
    
    var crdate = (mm+"/"+dd+"/"+y);    
    var dudate2 = (df2.substring(3,5)+"/"+df2.substring(0,2)+"/"+df2.substring(6,10));
    
   
    var date2 = new Date(crdate);
    var date3 = new Date(dudate2);
    
    
    var date2_ms = date2.getTime();
    var date3_ms = date3.getTime();
    
   
    var diff2 = date2_ms-date3_ms;
    // get days    
    var days2 = diff2/1000/60/60/24;
    

    if (stroke == true){      	
        if(days2 < 0){
        	document.getElementById("customRadio414").checked = false;
        	$.alert({ 
				 icon: 'fa fa-spinner fa-spin',
				title: 'Alert!',
			    content: 'Please wait remaining '+ Math.abs(days2)+ " Days for follow-up II",
			   type: 'red',
			    typeAnimated: true,
			    buttons: { 
			        Close: {
			            btnClass: 'btn-red',
			            keys: ['enter'],
			        },
			    }
			});        	
        }
    }

	if (stroke == true && days2 >= 0 && vitalStatus == true) {
		
		document.getElementById("actual1").disabled = false;
		document.getElementById("customCheck1-379").disabled = false;
		document.getElementById("customCheck1-381").disabled = false;
		document.getElementById("customCheck1-383").disabled = false;
		document.getElementById("customCheck1-385").disabled = false;
		document.getElementById("followup1").disabled = false;
		document.getElementById("customCheck1-387").disabled = false;
		
		
		document.getElementById("customRadio373").disabled = false;
		document.getElementById("customRadio374").disabled = false;
		
		

	}else{
		document.getElementById("customRadio414").checked = false;
		
		document.getElementById("due1").readonly = true;
		document.getElementById("actual1").disabled = true;
		document.getElementById("customCheck1-379").disabled = true;
		document.getElementById("customCheck1-381").disabled = true;
		document.getElementById("customCheck1-383").disabled = true;
		document.getElementById("customCheck1-385").disabled = true;
		document.getElementById("followup1").disabled = true;
		document.getElementById("customCheck1-387").disabled = true;
		
		document.getElementById("customRadio373").disabled = true;
		document.getElementById("customRadio374").disabled = true;
		document.getElementById("customRadio373").checked = false;
		document.getElementById("customRadio374").checked = false;

		
		
		document.getElementById("actual1").value = "";
		document.getElementById("customCheck1-379").checked = false;
		document.getElementById("customCheck1-381").checked = false;
		document.getElementById("customCheck1-383").checked = false;
		document.getElementById("customCheck1-385").checked = false;
		document.getElementById("followup1").value = "";
		document.getElementById("customCheck1-387").checked = false;

		
		$(".symptom_II").prop('disabled',true);
		$(".symptom_II").prop('checked',false);
		enable36();
	}

}

function enable35() {
	var dead = document.getElementById("customRadio372").checked;
	var alive = document.getElementById("customRadio371").checked;

	if (dead == true) {
		document.getElementById("dead1").disabled = false;
		document.getElementById("customCheck1-402").disabled = false;
		document.getElementById("customCheck1-404").disabled = false;
		document.getElementById("customCheck1-406").disabled = false;
		document.getElementById("customCheck1-408").disabled = false;
		document.getElementById("customCheck1-410").disabled = false;
		document.getElementById("customCheck1-412").disabled = false;
		document.getElementById("customCheck1-414").disabled = false;
		document.getElementById("customCheck1-416").disabled = false;
		document.getElementById("cause1").disabled = false;
		document.getElementById("immediate1").disabled = false;
		document.getElementById("underlying1").disabled = false;
		document.getElementById("contributing1").disabled = false;
		
		$(".symptom_I").prop('checked',false);
		$(".symptom_I").prop('disabled',true);
		
		document.getElementById("customRadio414").checked = false;
		enable34();
		
	} else if(alive == true) {
		
		$(".symptom_I").prop('disabled',false);
		
		document.getElementById("dead1").disabled = true;
		document.getElementById("customCheck1-402").disabled = true;
		document.getElementById("customCheck1-404").disabled = true;
		document.getElementById("customCheck1-406").disabled = true;
		document.getElementById("customCheck1-408").disabled = true;
		document.getElementById("customCheck1-410").disabled = true;
		document.getElementById("customCheck1-412").disabled = true;
		document.getElementById("customCheck1-414").disabled = true;
		document.getElementById("customCheck1-416").disabled = true;
		document.getElementById("cause1").disabled = true;
		document.getElementById("immediate1").disabled = true;
		document.getElementById("underlying1").disabled = true;
		document.getElementById("contributing1").disabled = true;
		
		document.getElementById("dead1").value = "";
		document.getElementById("customCheck1-402").checked = false;
		document.getElementById("customCheck1-404").checked = false;
		document.getElementById("customCheck1-406").checked = false;
		document.getElementById("customCheck1-408").checked = false;
		document.getElementById("customCheck1-410").checked = false;
		document.getElementById("customCheck1-412").checked = false;
		document.getElementById("customCheck1-414").checked = false;
		document.getElementById("customCheck1-416").checked = false;
		document.getElementById("cause1").value = "";
		document.getElementById("immediate1").value = "";
		document.getElementById("underlying1").value = "";
		document.getElementById("contributing1").value = "";
	}else{
		document.getElementById("dead1").disabled = true;
		document.getElementById("customCheck1-402").disabled = true;
		document.getElementById("customCheck1-404").disabled = true;
		document.getElementById("customCheck1-406").disabled = true;
		document.getElementById("customCheck1-408").disabled = true;
		document.getElementById("customCheck1-410").disabled = true;
		document.getElementById("customCheck1-412").disabled = true;
		document.getElementById("customCheck1-414").disabled = true;
		document.getElementById("customCheck1-416").disabled = true;
		document.getElementById("cause1").disabled = true;
		document.getElementById("immediate1").disabled = true;
		document.getElementById("underlying1").disabled = true;
		document.getElementById("contributing1").disabled = true;
		
		document.getElementById("dead1").value = "";
		document.getElementById("customCheck1-402").checked = false;
		document.getElementById("customCheck1-404").checked = false;
		document.getElementById("customCheck1-406").checked = false;
		document.getElementById("customCheck1-408").checked = false;
		document.getElementById("customCheck1-410").checked = false;
		document.getElementById("customCheck1-412").checked = false;
		document.getElementById("customCheck1-414").checked = false;
		document.getElementById("customCheck1-416").checked = false;
		document.getElementById("cause1").value = "";
		document.getElementById("immediate1").value = "";
		document.getElementById("underlying1").value = "";
		document.getElementById("contributing1").value = "";
	}
}

function enable36() {
	var dead = document.getElementById("customRadio374").checked;
	var alive = document.getElementById("customRadio373").checked;

	if (dead == true) {
		document.getElementById("dead2").disabled = false;
		document.getElementById("customCheck1-403").disabled = false;
		document.getElementById("customCheck1-405").disabled = false;
		document.getElementById("customCheck1-407").disabled = false;
		document.getElementById("customCheck1-409").disabled = false;
		document.getElementById("customCheck1-411").disabled = false;
		document.getElementById("customCheck1-413").disabled = false;
		document.getElementById("customCheck1-415").disabled = false;
		document.getElementById("customCheck1-417").disabled = false;
		document.getElementById("cause2").disabled = false;
		document.getElementById("immediate2").disabled = false;
		document.getElementById("underlying2").disabled = false;
		document.getElementById("contributing2").disabled = false;
		
		$(".symptom_II").prop('checked',false);
		$(".symptom_II").prop('disabled',true);
		
	} else if(alive == true){
		$(".symptom_II").prop('disabled',false);
		document.getElementById("dead2").disabled = true;
		document.getElementById("customCheck1-403").disabled = true;
		document.getElementById("customCheck1-405").disabled = true;
		document.getElementById("customCheck1-407").disabled = true;
		document.getElementById("customCheck1-409").disabled = true;
		document.getElementById("customCheck1-411").disabled = true;
		document.getElementById("customCheck1-413").disabled = true;
		document.getElementById("customCheck1-415").disabled = true;
		document.getElementById("customCheck1-417").disabled = true;
		document.getElementById("cause2").disabled = true;
		document.getElementById("immediate2").disabled = true;
		document.getElementById("underlying2").disabled = true;
		document.getElementById("contributing2").disabled = true;
		
		document.getElementById("dead2").value = "";
		document.getElementById("customCheck1-403").checked = false;
		document.getElementById("customCheck1-405").checked = false;
		document.getElementById("customCheck1-407").checked = false;
		document.getElementById("customCheck1-409").checked = false;
		document.getElementById("customCheck1-411").checked = false;
		document.getElementById("customCheck1-413").checked = false;
		document.getElementById("customCheck1-415").checked = false;
		document.getElementById("customCheck1-417").checked = false;
		document.getElementById("cause2").value = "";
		document.getElementById("immediate2").value = "";
		document.getElementById("underlying2").value = "";
		document.getElementById("contributing2").value = "";

	}else {
		
		document.getElementById("dead2").disabled = true;
		document.getElementById("customCheck1-403").disabled = true;
		document.getElementById("customCheck1-405").disabled = true;
		document.getElementById("customCheck1-407").disabled = true;
		document.getElementById("customCheck1-409").disabled = true;
		document.getElementById("customCheck1-411").disabled = true;
		document.getElementById("customCheck1-413").disabled = true;
		document.getElementById("customCheck1-415").disabled = true;
		document.getElementById("customCheck1-417").disabled = true;
		document.getElementById("cause2").disabled = true;
		document.getElementById("immediate2").disabled = true;
		document.getElementById("underlying2").disabled = true;
		document.getElementById("contributing2").disabled = true;
		
		document.getElementById("dead2").value = "";
		document.getElementById("customCheck1-403").checked = false;
		document.getElementById("customCheck1-405").checked = false;
		document.getElementById("customCheck1-407").checked = false;
		document.getElementById("customCheck1-409").checked = false;
		document.getElementById("customCheck1-411").checked = false;
		document.getElementById("customCheck1-413").checked = false;
		document.getElementById("customCheck1-415").checked = false;
		document.getElementById("customCheck1-417").checked = false;
		document.getElementById("cause2").value = "";
		document.getElementById("immediate2").value = "";
		document.getElementById("underlying2").value = "";
		document.getElementById("contributing2").value = "";

	}

}


function enable37() {
	var others = document.getElementById("customRadio27").checked;
	if (others == true) {
		document.getElementById("imagingdate5").disabled = false;

		document.getElementById("CarTimehr").disabled = false;
		document.getElementById("CarTimeMn").disabled = false;
		document.getElementById("CarTimeAmPm").disabled = false;

	} else {
		document.getElementById("imagingdate5").disabled = true;

		document.getElementById("CarTimehr").disabled = true;
		document.getElementById("CarTimeMn").disabled = true;
		document.getElementById("CarTimeAmPm").disabled = true;

		document.getElementById("imagingdate5").value = "";
		document.getElementById("CarTimehr").value = "";
		document.getElementById("CarTimeMn").value = "";
		
	}
}
function enable38() {
	var others = document.getElementById("customRadio30").checked;
	if (others == true) {
		document.getElementById("imagingdate6").disabled = false;

		document.getElementById("EcgTimehr").disabled = false;
		document.getElementById("EcgTimeMn").disabled = false;
		document.getElementById("EcgTimeAmPm").disabled = false;

	} else {
		document.getElementById("imagingdate6").disabled = true;

		document.getElementById("EcgTimehr").disabled = true;
		document.getElementById("EcgTimeMn").disabled = true;
		document.getElementById("EcgTimeAmPm").disabled = true;

		document.getElementById("imagingdate6").value = "";
		document.getElementById("EcgTimehr").value = "";
		document.getElementById("EcgTimeMn").value = "";
		
	}
}

function enable39() {
	var others = document.getElementById("customRadio33").checked;
	if (others == true) {
		document.getElementById("imagingdate7").disabled = false;

		document.getElementById("TteTimehr").disabled = false;
		document.getElementById("TteTimeMn").disabled = false;
		document.getElementById("TteTimeAmPm").disabled = false;

	} else {
		document.getElementById("imagingdate7").disabled = true;
		document.getElementById("imagingdate7").value = "";

		document.getElementById("TteTimehr").disabled = true;
		document.getElementById("TteTimeMn").disabled = true;
		document.getElementById("TteTimeAmPm").disabled = true;

		document.getElementById("TteTimehr").value = "";
		document.getElementById("TteTimeMn").value = "";
		
	}
}
function enable40() {
	var others = document.getElementById("customRadio36").checked;
	if (others == true) {
		document.getElementById("imagingdate8").disabled = false;

		document.getElementById("TraTimehr").disabled = false;
		document.getElementById("TraTimeMn").disabled = false;
		document.getElementById("TraTimeAmPm").disabled = false;

	} else {
		document.getElementById("imagingdate8").disabled = true;
		document.getElementById("imagingdate8").value = "";

		document.getElementById("TraTimehr").disabled = true;
		document.getElementById("TraTimeMn").disabled = true;
		document.getElementById("TraTimeAmPm").disabled = true;

		document.getElementById("TraTimehr").value = "";
		document.getElementById("TraTimeMn").value = "";
		
	}

}
function enable41() {
	var duration = document.getElementById("customRadio44").checked;
	if (duration == true) {
		document.getElementById("customCheck1-418").disabled = true;
		document.getElementById("duration1").disabled = true;
	} else {
		document.getElementById("customCheck1-418").disabled = false;
		document.getElementById("customCheck1-418").value = "";
	}
}

function enable42() {
	var duration = document.getElementById("customRadio47").checked;
	if (duration == true) {
		document.getElementById("duration2").disabled = false;
		document.getElementById("customCheck1-419").disabled = true;
		document.getElementById("customCheck1-419").checked = false;
	} else {
		document.getElementById("duration2").disabled = true;
		document.getElementById("customCheck1-419").disabled = false;

		document.getElementById("duration2").value = "";
		
	}
}

function enable43() {
	var duration = document.getElementById("customRadio48").checked;
	if (duration == true) {
		document.getElementById("customCheck1-419").disabled = true;
		document.getElementById("duration2").disabled = true;
	} else {
		document.getElementById("customCheck1-419").disabled = false;
		document.getElementById("customCheck1-419").value = "";
	}
}

function enable44() {
	var duration = document.getElementById("customRadio51").checked;
	if (duration == true) {
		document.getElementById("duration3").disabled = false;
		document.getElementById("customCheck1-420").disabled = true;
		document.getElementById("customCheck1-420").checked = false;
	} else {
		document.getElementById("duration3").disabled = true;
		document.getElementById("customCheck1-420").disabled = false;

		document.getElementById("duration3").value = "";
		
	}
}

function enable45() {
	var duration = document.getElementById("customRadio52").checked;
	if (duration == true) {
		document.getElementById("customCheck1-420").disabled = true;
		document.getElementById("duration3").disabled = true;
	} else {
		document.getElementById("customCheck1-420").disabled = false;
		document.getElementById("customCheck1-420").value = "";
	}
}

function enable46() {
	var duration = document.getElementById("customRadio54").checked;
	if (duration == true) {
		document.getElementById("duration4").disabled = false;
		document.getElementById("customCheck1-421").disabled = true;
		document.getElementById("customCheck1-421").checked = false;
	} else {
		document.getElementById("duration4").disabled = true;
		document.getElementById("customCheck1-421").disabled = false;

		document.getElementById("duration4").value = "";
		
	}
}

function enable47() {
	var duration = document.getElementById("customRadio55").checked;
	if (duration == true) {
		document.getElementById("customCheck1-421").disabled = true;
		document.getElementById("duration4").disabled = true;
	} else {
		document.getElementById("customCheck1-421").disabled = false;
		document.getElementById("customCheck1-421").value = "";
	}
}

function enable48() {
	var duration = document.getElementById("customRadio58").checked;
	if (duration == true) {
		document.getElementById("duration5").disabled = false;
		document.getElementById("customCheck1-422").disabled = true;
		document.getElementById("customCheck1-422").checked = false;
	} else {
		document.getElementById("duration5").disabled = true;
		document.getElementById("customCheck1-422").disabled = false;

		document.getElementById("duration5").value = "";
		
	}
}

function enable49() {
	var duration = document.getElementById("customRadio59").checked;
	if (duration == true) {
		document.getElementById("customCheck1-422").disabled = true;
		document.getElementById("duration5").disabled = true;
	} else {
		document.getElementById("customCheck1-422").disabled = false;
		document.getElementById("customCheck1-422").value = "";
	}
}

function enable50() {
	var duration = document.getElementById("customRadio62").checked;
	if (duration == true) {
		document.getElementById("duration6").disabled = false;
		document.getElementById("customCheck1-423").disabled = true;
		document.getElementById("customCheck1-423").checked = false;
	} else {
		document.getElementById("duration6").disabled = true;
		document.getElementById("customCheck1-423").disabled = false;

		document.getElementById("duration6").value = "";
		
	}
}

function enable51() {
	var duration = document.getElementById("customRadio63").checked;
	if (duration == true) {
		document.getElementById("customCheck1-423").disabled = true;
		document.getElementById("duration6").disabled = true;
	} else {
		document.getElementById("customCheck1-423").disabled = false;
		document.getElementById("customCheck1-423").value = "";
	}
}

function enable52() {
	var duration = document.getElementById("customRadio66").checked;
	if (duration == true) {
		document.getElementById("duration7").disabled = false;
		document.getElementById("customCheck1-424").disabled = true;
		document.getElementById("customCheck1-424").checked = false;
	} else {
		document.getElementById("duration7").disabled = true;
		document.getElementById("customCheck1-424").disabled = false;

		document.getElementById("duration7").value = "";
		
	}
}

function enable53() {
	var duration = document.getElementById("customRadio67").checked;
	if (duration == true) {
		document.getElementById("customCheck1-424").disabled = true;
		document.getElementById("duration7").disabled = true;
	} else {
		document.getElementById("customCheck1-424").disabled = false;
		document.getElementById("customCheck1-424").value = "";
	}
}

function enable54() {
	var duration = document.getElementById("customRadio70").checked;
	if (duration == true) {
		document.getElementById("duration8").disabled = false;
		document.getElementById("customCheck1-425").disabled = true;
		document.getElementById("customCheck1-425").checked = false;
	} else {
		document.getElementById("duration8").value = "";		
		document.getElementById("customCheck1-425").disabled = false;
		document.getElementById("duration8").disabled = true;
	}
}

function enable55() {
	var duration = document.getElementById("customRadio71").checked;
	if (duration == true) {
		document.getElementById("customCheck1-425").disabled = true;
		document.getElementById("duration8").disabled = true;
	} else {
		document.getElementById("customCheck1-425").disabled = false;
		document.getElementById("customCheck1-425").value = "";
	}
}

function enable56() {
	var duration = document.getElementById("customRadio74").checked;
	if (duration == true) {
		document.getElementById("duration9").disabled = false;
		document.getElementById("customCheck1-426").disabled = true;
		document.getElementById("customCheck1-426").checked = false;
	} else {
		document.getElementById("duration9").value = "";
		document.getElementById("duration9").disabled = true;
		
		document.getElementById("customCheck1-426").disabled = false;
	}
}

function enable57() {
	var duration = document.getElementById("customRadio75").checked;
	if (duration == true) {
		document.getElementById("customCheck1-426").disabled = true;
		document.getElementById("duration9").disabled = true;
	} else {
		document.getElementById("customCheck1-426").disabled = false;
		document.getElementById("customCheck1-426").value = "";
	}
}

function enable58() {
	var duration = document.getElementById("customRadio78").checked;
	if (duration == true) {
		document.getElementById("duration10").disabled = false;
		document.getElementById("customCheck1-427").disabled = true;
		document.getElementById("customCheck1-427").checked = false;
	} else {
		document.getElementById("duration10").value = "";
		document.getElementById("duration10").disabled = true;
		
		document.getElementById("customCheck1-427").disabled = false;
	}
}

function enable59() {
	var duration = document.getElementById("customRadio79").checked;
	if (duration == true) {
		document.getElementById("customCheck1-427").disabled = true;
		document.getElementById("duration10").disabled = true;
	} else {
		document.getElementById("customCheck1-427").disabled = false;
		document.getElementById("customCheck1-427").value = "";
	}
}

function enable60() {
	var duration = document.getElementById("customRadio82").checked;
	if (duration == true) {
		document.getElementById("duration11").disabled = false;
		document.getElementById("customCheck1-428").disabled = true;
		document.getElementById("customCheck1-428").checked = false;
	} else {
		document.getElementById("duration11").value = "";
		document.getElementById("duration11").disabled = true;
		
		document.getElementById("customCheck1-428").disabled = false;
	}
}

function enable61() {
	var duration = document.getElementById("customRadio83").checked;
	if (duration == true) {
		document.getElementById("customCheck1-428").disabled = true;
		document.getElementById("duration11").disabled = true;
	} else {
		document.getElementById("customCheck1-428").disabled = false;
		document.getElementById("customCheck1-428").value = "";
	}
}

function enable62() {
	var duration = document.getElementById("customRadio86").checked;
	if (duration == true) {
		document.getElementById("duration12").disabled = false;
		document.getElementById("customCheck1-429").disabled = true;
		document.getElementById("customCheck1-429").checked = false;
	} else {
		document.getElementById("duration12").value = "";
		document.getElementById("duration12").disabled = true;
		
		document.getElementById("customCheck1-429").disabled = false;
	}
}

function enable63() {
	var duration = document.getElementById("customRadio87").checked;
	if (duration == true) {
		document.getElementById("customCheck1-429").disabled = true;
		document.getElementById("duration12").disabled = true;
	} else {
		document.getElementById("customCheck1-429").disabled = false;
		document.getElementById("customCheck1-429").value = "";
	}
}

function enable64() {
	var duration = document.getElementById("customRadio90").checked;
	if (duration == true) {
		document.getElementById("duration13").disabled = false;
		document.getElementById("customCheck1-430").disabled = true;
		document.getElementById("customCheck1-430").checked = false;
	} else {
		document.getElementById("duration13").value = "";
		document.getElementById("duration13").disabled = true;		
		document.getElementById("customCheck1-430").disabled = false;
	}
}

function enable65() {
	var duration = document.getElementById("customRadio91").checked;
	if (duration == true) {
		document.getElementById("customCheck1-430").disabled = true;
		document.getElementById("duration13").disabled = true;
	} else {
		document.getElementById("customCheck1-430").disabled = false;
		document.getElementById("customCheck1-430").value = "";
	}
}

function enable66() {
	var duration = document.getElementById("customRadio94").checked;
	if (duration == true) {
		document.getElementById("duration14").disabled = false;
		document.getElementById("customCheck1-431").disabled = true;
		document.getElementById("customCheck1-431").checked = false;
	} else {
		document.getElementById("duration14").value = "";
		document.getElementById("duration14").disabled = true;
		
		document.getElementById("customCheck1-431").disabled = false;
	}
}

function enable67() {
	var duration = document.getElementById("customRadio95").checked;
	if (duration == true) {
		document.getElementById("customCheck1-431").disabled = true;
		document.getElementById("duration14").disabled = true;
	} else {
		document.getElementById("customCheck1-431").disabled = false;
		document.getElementById("customCheck1-431").value = "";
	}
}

function enable68() {
	var duration = document.getElementById("customRadio98").checked;
	if (duration == true) {
		document.getElementById("duration15").disabled = false;
		document.getElementById("customCheck1-432").disabled = true;
		document.getElementById("customCheck1-432").checked = false;
		
		document.getElementById("hemogl_radio1").disabled = false;
		document.getElementById("hemogl_radio2").disabled = false;
		
		document.getElementById("hemogl_radio1").checked = true;
		document.getElementById("hemogl").disabled = false;
		
	} else {
		document.getElementById("duration15").value = "";
		document.getElementById("duration15").disabled = true;
		
		document.getElementById("customCheck1-432").disabled = false;
		
		document.getElementById("hemogl_radio1").checked = false;
		document.getElementById("hemogl_radio2").checked = false;
		
		document.getElementById("hemogl_radio1").disabled = true;
		document.getElementById("hemogl_radio2").disabled = true;
		
		document.getElementById("hemogl").disabled = true;
		document.getElementById("hemogl1").disabled = true;
		document.getElementById("hemogl").value = "";
		document.getElementById("hemogl1").value = "";
		
	}
}

function hemogl_radioFn(){
	var rbt = document.getElementById("hemogl_radio1").checked;
	var rbt2 = document.getElementById("hemogl_radio2").checked;
	if(rbt == true){
		document.getElementById("hemogl").disabled = false;
		document.getElementById("hemogl").value = "";
		document.getElementById("hemogl").focus();
		
		document.getElementById("hemogl1").disabled = true;
		document.getElementById("hemogl1").value = "";
	}else if(rbt2 == true){
		document.getElementById("hemogl1").disabled = false;
		document.getElementById("hemogl1").value = "";
		document.getElementById("hemogl1").focus();
		
		document.getElementById("hemogl").disabled = true;
		document.getElementById("hemogl").value = "";
	}else{
		document.getElementById("hemogl").disabled = true;
		document.getElementById("hemogl").value = "";
		
		document.getElementById("hemogl1").disabled = true;
		document.getElementById("hemogl1").value = "";
	}
	
}

function enable69() {
	var duration = document.getElementById("customRadio99").checked;
	if (duration == true) {
		document.getElementById("customCheck1-432").disabled = true;
		document.getElementById("duration15").disabled = true;
	} else {
		document.getElementById("customCheck1-432").disabled = false;
		document.getElementById("customCheck1-432").value = "";
	}
}

function enable70() {
	var duration = document.getElementById("customRadio102").checked;
	if (duration == true) {
		document.getElementById("duration16").disabled = false;
		document.getElementById("customCheck1-433").disabled = true;
		document.getElementById("customCheck1-433").checked = false;
	} else {
		document.getElementById("duration16").value = "";
		document.getElementById("duration16").disabled = true;
		
		document.getElementById("customCheck1-433").disabled = false;
	}
}

function enable71() {
	var duration = document.getElementById("customRadio103").checked;
	if (duration == true) {
		document.getElementById("customCheck1-433").disabled = true;
		document.getElementById("duration16").disabled = true;
	} else {
		document.getElementById("customCheck1-433").disabled = false;
		document.getElementById("customCheck1-433").value = "";
	}
}

function enable72() {
	var duration = document.getElementById("customRadio106").checked;
	if (duration == true) {
		document.getElementById("duration17").disabled = false;
		document.getElementById("customCheck1-434").disabled = true;
		document.getElementById("customCheck1-434").checked = false;
	} else {
		document.getElementById("duration17").disabled = true;
		document.getElementById("customCheck1-434").disabled = false;
		document.getElementById("duration17").value = "";
		
	}
}

function enable73() {
	var duration = document.getElementById("customRadio107").checked;
	if (duration == true) {
		document.getElementById("customCheck1-434").disabled = true;
		document.getElementById("duration17").disabled = true;
	} else {
		document.getElementById("customCheck1-434").disabled = false;
		document.getElementById("customCheck1-434").value = "";
	}
}

function enable78() {
	var duration = document.getElementById("customRadio39").checked;
	if (duration == true) {
		document.getElementById("customRadio375").disabled = false;
		document.getElementById("customRadio376").disabled = false;
		document.getElementById("customRadio377").disabled = false;
		document.getElementById("customRadio378").disabled = false;
		document.getElementById("customRadio379").disabled = false;
		document.getElementById("ctMridate").disabled = false;
		document.getElementById("CtmTimehr").disabled = false;
		document.getElementById("CtmTimeMn").disabled = false;
		document.getElementById("CtmTimeAmPm").disabled = false;

	} else {
		document.getElementById("customRadio375").disabled = true;
		document.getElementById("customRadio376").disabled = true;
		document.getElementById("customRadio377").disabled = true;
		document.getElementById("customRadio378").disabled = true;
		document.getElementById("customRadio379").disabled = true;
		document.getElementById("ctMridate").disabled = true;
		document.getElementById("CtmTimehr").disabled = true;
		document.getElementById("CtmTimeMn").disabled = true;
		document.getElementById("CtmTimeAmPm").disabled = true;
		document.getElementById("ctMridate").value = "";
		document.getElementById("CtmTimehr").value = "";
		document.getElementById("CtmTimeMn").value = "";
		
	}
}
function enable74() {
	var stroke = document.getElementById("customRadio380").checked;
	if (stroke == true) {
		document.getElementById("customRadio396").disabled = false;
		document.getElementById("customRadio397").disabled = false;
		document.getElementById("customRadio398").disabled = false;
		document.getElementById("customRadio399").disabled = false;
		document.getElementById("customRadio400").disabled = false;
		document.getElementById("customRadio401").disabled = false;
		document.getElementById("customRadio402").disabled = false;
		document.getElementById("customRadio403").disabled = false;

		document.getElementById("customRadio405").disabled = false;
		document.getElementById("customRadio406").disabled = false;
		
		document.getElementById("customRadio407").disabled = true;
		document.getElementById("customRadio408").disabled = true;
		
		document.getElementById("customRadio407").checked = false;
		document.getElementById("customRadio408").checked = false;
		
	} else {
		document.getElementById("customRadio396").disabled = true;
		document.getElementById("customRadio397").disabled = true;
		document.getElementById("customRadio398").disabled = true;
		document.getElementById("customRadio399").disabled = true;
		document.getElementById("customRadio400").disabled = true;
		document.getElementById("customRadio401").disabled = true;
		document.getElementById("customRadio402").disabled = true;
		document.getElementById("customRadio403").disabled = true;

		document.getElementById("customRadio405").disabled = true;
		document.getElementById("customRadio406").disabled = true;

		document.getElementById("customRadio396").checked = false;
		document.getElementById("customRadio397").checked = false;
		document.getElementById("customRadio398").checked = false;
		document.getElementById("customRadio399").checked = false;
		document.getElementById("customRadio400").checked = false;
		document.getElementById("customRadio401").checked = false;
		document.getElementById("customRadio402").checked = false;
		document.getElementById("customRadio403").checked = false;

		document.getElementById("customRadio405").checked = false;
		document.getElementById("customRadio406").checked = false;
		document.getElementById("customRadio407").checked = false;
		document.getElementById("customRadio408").checked = false;
	}

}
function enable75() {
	var stroke = document.getElementById("customRadio381").checked;
	if (stroke == true) {
		document.getElementById("customRadio396").disabled = true;
		document.getElementById("customRadio397").disabled = true;
		document.getElementById("customRadio398").disabled = true;
		document.getElementById("customRadio399").disabled = true;
		document.getElementById("customRadio400").disabled = true;
		document.getElementById("customRadio401").disabled = true;
		document.getElementById("customRadio402").disabled = true;
		document.getElementById("customRadio403").disabled = true;
		document.getElementById("customRadio405").disabled = true;
		document.getElementById("customRadio406").disabled = true;

		document.getElementById("customRadio396").checked = false;
		document.getElementById("customRadio397").checked = false;
		document.getElementById("customRadio398").checked = false;
		document.getElementById("customRadio399").checked = false;
		document.getElementById("customRadio400").checked = false;
		document.getElementById("customRadio401").checked = false;
		document.getElementById("customRadio402").checked = false;
		document.getElementById("customRadio403").checked = false;
		document.getElementById("customRadio405").checked = false;
		document.getElementById("customRadio406").checked = false;

		document.getElementById("customRadio407").disabled = false;
		document.getElementById("customRadio408").disabled = false;

	} else {
		document.getElementById("customRadio407").disabled = true;
		document.getElementById("customRadio408").disabled = true;

		document.getElementById("customRadio407").checked = false;
		document.getElementById("customRadio408").checked = false;

	}
}
function enable76() {
	var stroke = document.getElementById("customRadio382").checked;
	if (stroke == true) {
		document.getElementById("customRadio396").disabled = true;
		document.getElementById("customRadio397").disabled = true;
		document.getElementById("customRadio398").disabled = true;
		document.getElementById("customRadio399").disabled = true;
		document.getElementById("customRadio400").disabled = true;
		document.getElementById("customRadio401").disabled = true;
		document.getElementById("customRadio402").disabled = true;
		document.getElementById("customRadio403").disabled = true;
		document.getElementById("customRadio405").disabled = true;
		document.getElementById("customRadio406").disabled = true;
		document.getElementById("customRadio407").disabled = true;
		document.getElementById("customRadio408").disabled = true;

		document.getElementById("customRadio396").checked = false;
		document.getElementById("customRadio397").checked = false;
		document.getElementById("customRadio398").checked = false;
		document.getElementById("customRadio399").checked = false;
		document.getElementById("customRadio400").checked = false;
		document.getElementById("customRadio401").checked = false;
		document.getElementById("customRadio402").checked = false;
		document.getElementById("customRadio403").checked = false;
		document.getElementById("customRadio405").checked = false;
		document.getElementById("customRadio406").checked = false;
		document.getElementById("customRadio407").checked = false;
		document.getElementById("customRadio408").checked = false;

	}

}
function enable77() {
	var stroke = document.getElementById("customRadio383").checked;
	if (stroke == true) {
		document.getElementById("customRadio396").disabled = true;
		document.getElementById("customRadio397").disabled = true;
		document.getElementById("customRadio398").disabled = true;
		document.getElementById("customRadio399").disabled = true;
		document.getElementById("customRadio400").disabled = true;
		document.getElementById("customRadio401").disabled = true;
		document.getElementById("customRadio402").disabled = true;
		document.getElementById("customRadio403").disabled = true;
		document.getElementById("customRadio405").disabled = true;
		document.getElementById("customRadio406").disabled = true;
		document.getElementById("customRadio407").disabled = true;
		document.getElementById("customRadio408").disabled = true;

		document.getElementById("customRadio396").checked = false;
		document.getElementById("customRadio397").checked = false;
		document.getElementById("customRadio398").checked = false;
		document.getElementById("customRadio399").checked = false;
		document.getElementById("customRadio400").checked = false;
		document.getElementById("customRadio401").checked = false;
		document.getElementById("customRadio402").checked = false;
		document.getElementById("customRadio403").checked = false;
		document.getElementById("customRadio405").checked = false;
		document.getElementById("customRadio406").checked = false;
		document.getElementById("customRadio407").checked = false;
		document.getElementById("customRadio408").checked = false;

	}

}
function enable79() {
	var stroke = document.getElementById("customRadio250").checked;
	if (stroke == true) {
		document.getElementById("hemicInt").disabled = false;

	} else {
		document.getElementById("hemicInt").disabled = true;
		document.getElementById("hemicInt").value = "";
	}
}

function enable80() {
	var stroke = document.getElementById("customRadio252").checked;
	if (stroke == true) {
		document.getElementById("craIn").disabled = false;

	} else {
		document.getElementById("craIn").disabled = true;
		document.getElementById("craIn").value = "";
	}
}

function enable81() {
	var stroke = document.getElementById("customRadio254").checked;
	if (stroke == true) {
		document.getElementById("hemat").disabled = false;

	} else {
		document.getElementById("hemat").disabled = true;
		document.getElementById("hemat").value = "";
	}
}

function enable82() {
	var stroke = document.getElementById("customRadio257").checked;
	if (stroke == true) {
		document.getElementById("carodi").disabled = false;

	} else {
		document.getElementById("carodi").disabled = true;
		document.getElementById("carodi").value = "";
	}
}
function enable83() {
	var stroke = document.getElementById("customRadio259").checked;
	if (stroke == true) {
		document.getElementById("carotidSteInt").disabled = false;

	} else {
		document.getElementById("carotidSteInt").disabled = true;
		document.getElementById("carotidSteInt").value = "";
	}
}
function enable84() {
	var stroke = document.getElementById("customRadio261").checked;
	if (stroke == true) {
		document.getElementById("endov").disabled = false;

	} else {
		document.getElementById("endov").disabled = true;
		document.getElementById("endov").value = "";
	}
	
}



//----------------------

