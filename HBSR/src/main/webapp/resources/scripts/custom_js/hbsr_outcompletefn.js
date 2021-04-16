/**
 * 
 */

   

	$(function(){	
		$("#icd10Desc").keypress(function(){	
			$("#icd10Desc").autocomplete({
				minLength: 3,
				max:15,
				source: function( request, response ) {
		             $.ajax({
		                 url: "srhSmedCODTerms",
		                 dataType: "json",
		                 crossDomain : true,
		                 data: {
		                	 'IcdDesc':$("#icd10Desc").val()
		                 },
		                 success: function( data ) {
		                	  response($.map(data, function (item) {
		                          return {
		                             
		                              label: item.icDescription,		                              
			                           value: item.icDescription,
			                           desc: item.icCode,
			                           
		                          };
		                      }));
		                 }, 
		             });	             
		         },
		       
		         select : function (event, ui) {         	 
		             $("#icd10Desc").val(ui.item.icDescription);
		             $("#icd10Code_input").val(ui.item.desc);
		             
		             var icd = ui.item.desc;		             
		             $("#icd10Code").val(icd.substring(1, 3));
		             $("#icd10Code0").val(icd.substring(4, 6));
		          },	         
		     })
		     
		});
});
	
	$(function(){
		$("#icd_code").focusout(function(){
			 $("#icd10Code_input").val("I"+$("#icd_code").val()+"."+("#icd_code1").val());
			 $('#myForm').bootstrapValidator('revalidateField', 'dob');
		});
		$("#icd_code1").focusout(function(){
			 $("#icd10Code_input").val("I"+$("#icd_code").val()+"."+("#icd_code1").val());
		});
	});
	
	
	//--------------------------------
	
	$(function(){	
		$("#icd_desc").keypress(function(){	
			$("#icd_desc").autocomplete({
				minLength: 3,
				max:15,
				source: function( request, response ) {
		             $.ajax({
		                 url: "srhSmedCODTerms",
		                 dataType: "json",
		                 crossDomain : true,
		                 data: {
		                	 'IcdDesc':$("#icd_desc").val()
		                 },
		                 success: function( data ) {
		                	  response($.map(data, function (item) {
		                          return {
		                             
		                              label: item.icDescription,		                              
			                           value: item.icDescription,
			                           desc: item.icCode,
			                           
		                          };
		                      }));
		                 }, 
		             });	             
		         },
		       
		         select : function (event, ui) {         	 
		             $("#icd_desc").val(ui.item.icDescription);
		             $("#icd10Code2_input").val(ui.item.desc);
		             
		             var icd = ui.item.desc;		             
		             $("#icd_code").val(icd.substring(1, 3));
		             $("#icd_code1").val(icd.substring(4, 6));
		          },	         
		     })
		     
		});
});
	
	