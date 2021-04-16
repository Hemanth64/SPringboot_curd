/**
 * 
 */
 $(document).ready(function() {
	 $("#ps").click(function(){			 
		 var regNum = $("#name2").val();
		 var sourceofReg = $("#sourceofReg").val();
		 
		 var deptName = $("#deptName").val();
		 var code1 = $("#code1").val();
		 var code2 = $("#code2").val();
		 var patFirstN = $("#patFirstN").val();
		 var division = $("#corp").val();
		 var hospRegNum = $("#hospRegNum").val();
		 var dist = $("#Dist").val();
		 var postalPin = $("#pin").val();
		 var durationStay = $("#durationStay").val();
		 var age = $("#age").val();
		 var dob = $("#dobDate").val();
		 
	
		 
		 
		 if(regNum == "" || sourceofReg == "" || !$(".btn_rep").is(':checked') || deptName == "" || code1 == "" || code2 == "" || patFirstN == "" || hospRegNum == "" || dist == "" || postalPin == "" || durationStay == "" || age == "" || dob == "" || !$(".btn_sex").is(':checked')){
			 alert_fn();	
			 $('#myForm').bootstrapValidator('revalidateField', 'regNum');
			 $('#myForm').bootstrapValidator('revalidateField', 'sourceofReg');
			 $('#myForm').bootstrapValidator('revalidateField', 'repInst');
			 $('#myForm').bootstrapValidator('revalidateField', 'deptName');
			 $('#myForm').bootstrapValidator('revalidateField', 'code1');
			 $('#myForm').bootstrapValidator('revalidateField', 'code2');
			 $('#myForm').bootstrapValidator('revalidateField', 'patFirstN');
			
			 $('#myForm').bootstrapValidator('revalidateField', 'hospRegNum');
			 $('#myForm').bootstrapValidator('revalidateField', 'dist');
			 $('#myForm').bootstrapValidator('revalidateField', 'postalPin');
			 $('#myForm').bootstrapValidator('revalidateField', 'durationStay');
			 $('#myForm').bootstrapValidator('revalidateField', 'age');
			 $('#myForm').bootstrapValidator('revalidateField', 'dob');
			 $('#myForm').bootstrapValidator('revalidateField', 'sex');	
			 return false;
		 }
		 
		 if($("#customRadio3").is(":checked") &&  division == ""){
			 alert_fn();
			 
			 $('#myForm').bootstrapValidator('revalidateField', 'division');
			 return false;
		 }
		 
		 function alert_fn(){	
			 
			 if(regNum == "")
				 $("#name2").focus();
			 else if(!$(".btn_rep").is(':checked'))
				 $("#customRadio1").focus();
			 else if(sourceofReg == "")
				 $("#sourceofReg").focus();			
			 else if(deptName == "")
				 $("#deptName").focus();
			 else if(code1 == "")
				 $("#code1").focus();
			 else if(code2 == "")
				 $("#code2").focus();
			 else if(patFirstN == "")
				 $("#patFirstN").focus();
			 else if(division == "")
				 $("#corp").focus();
			 else if(hospRegNum == "")
				 $("#hospRegNum").focus();
			 else if(dist == "")
				 $("#dist").focus();
			 else if(postalPin == "")
				 $("#pin").focus();
			 else if(durationStay == "")
				 $("#durationStay").focus();
			 else if(dob == "")
				 $("#dobDate").focus();
			 else if(!$(".btn_sex").is(':checked'))
				 $("#customRadio5").focus();
			 
			 
				$.alert({
					icon : 'fa fa-spinner fa-spin',
					title : 'Please enter minimum',
					content : 'Demographic Information',
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
		
	 });
	 

});
 