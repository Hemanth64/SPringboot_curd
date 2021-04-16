/**
 * 
 */

$(function() {
	$('.dat').mask("99-99-9999", {
		placeholder : 'DD-MM-YYYY'
	});

	// $("#CE_WeightAdm").inputmask({"mask": "999.99"});
});

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#dobDate").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'dob');
			this.focus()
		}
	});

	$("#dobDate").click(function() {
		$("#dobDate").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {
				$('#myForm').bootstrapValidator('revalidateField', 'dob');
				this.focus()
			}
		});
	});
});




$(function() {
	$('.dat').mask("99-99-9999", {
		placeholder : 'DD-MM-YYYY'
	});

	// $("#CE_WeightAdm").inputmask({"mask": "999.99"});
});

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#digdate").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {			
			this.focus()
		}
	});

	$("#digdate").click(function() {
		$("#digdate").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {				
				this.focus()
			}
		});
	});
	
	
$("#digdate").focusout(function(){
		
		var ondate = $("#ondate").val().toString();
		 var digdate = $("#digdate").val().toString();		 
		 var symdate = $("#symdate").val().toString();
		 
		 
		 var dat = digdate.substring(3, 5) + "-"	+ digdate.substring(0, 2) + "-"	+ digdate.substring(6, 10);
		 
		 
		if(digdate.length == "10" &&  ondate != "" && new Date(dat) <= new Date()){
		 
	        var yearThen = parseInt(ondate.substring(6,10), 10);
	        var monthThen = parseInt(ondate.substring(3,5), 10);
	        var dayThen = parseInt(ondate.substring(0,2), 10);
	        
	        var yearThen2 = parseInt(digdate.substring(6,10), 10);
	        var monthThen2 = parseInt(digdate.substring(3,5), 10);
	        var dayThen2 = parseInt(digdate.substring(0,2), 10);
	        
	        
	        
	        var today = new Date();
	        
	        
	        
	        var onset = new Date(yearThen, monthThen-1, dayThen);
	        var diag = new Date(yearThen2, monthThen2-1, dayThen2);
	        
	        var differenceInMilisecond = diag.valueOf() - onset.valueOf();
	        
	        
	        
	        var year_age = Math.floor(differenceInMilisecond / 31536000000);
	        var day_age = Math.floor((differenceInMilisecond % 31536000000) / 86400000);
	        

	        
	        var month_age = Math.floor(day_age/30);
	        
	  
	        
	        day_age = day_age % 30;
	        
	        ondate = (ondate.substring(3,5)+"/"+ondate.substring(0,2)+"/"+ondate.substring(6,10));
	        digdate = (digdate.substring(3,5)+"/"+digdate.substring(0,2)+"/"+digdate.substring(6,10));
	        
	        var start2 = (symdate.substring(3,5)+"/"+symdate.substring(0,2)+"/"+symdate.substring(6,10));
	        
	        var date1 = new Date(digdate);
	        var date2 = new Date(ondate);
	        
	        var date1_2 = new Date(start2);
	        
	        var date1_ms = date1.getTime();
	        var date2_ms = date2.getTime();
	        
	        var date1_2_ms = date1_2.getTime();
	        
	        var diff = date2_ms-date1_ms;
	        var diff2 = date1_2_ms-date1_ms;
	        
	        
	        
	        // get days
	        var days = diff/1000/60/60/24;
	        var days2 = diff2/1000/60/60/24;
	        
	        
	        
	        if(days > 0){
	        	$("#digdate").val('');
	        	$("#digdate").focus();   
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'The date of diagnosis cannot be earlier than the date of onset',
				   type: 'red',
				    typeAnimated: true,
				    buttons: { 
				        Close: {
				            btnClass: 'btn-red',
				            keys: ['enter'],
				        },
				    }
				});
	        	
	        }else if(days2 > 0){
        		
	        	$("#digdate").val('');
	        	$("#digdate").focus(); 
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'The date of diagnosis cannot be earlier than the date of recognition',
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
	        
	});


});

//---------------------------------------------------------------------------------------


$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();
	
	$("#lsdate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {					
					this.focus();
				}
			});

	$("#lsdate").click(
			function() {
				$("#lsdate").datepicker(
						{
							dateFormat : 'dd-mm-yy',
							yearRange : '1930:2099',
							maxDate : new Date(currentYear, currentMonth, currentDate),
							showButtonPanel : false,
							changeMonth : true,
							changeYear : true,
							loseText : 'Clear',
							gotoCurrent : true,
							onClose : function() {								
								this.focus();
							}
						});
			});
	
//---------------------------------------------------
	
	$("#lsdate").focusout(function(){
		
		var lsdate = $("#lsdate").val().toString();
		var ondate = $("#ondate").val().toString();
		var digdate = $("#digdate").val().toString();
		 
		var dat = lsdate.substring(3, 5) + "-"	+ lsdate.substring(0, 2) + "-"	+ lsdate.substring(6, 10);
		 
		 if(lsdate.length == "10" &&   new Date(dat) <= new Date()){
			 
		       ondate = (ondate.substring(3,5)+"/"+ondate.substring(0,2)+"/"+ondate.substring(6,10));
		        lsdate = (lsdate.substring(3,5)+"/"+lsdate.substring(0,2)+"/"+lsdate.substring(6,10));
		        digdate = (digdate.substring(3,5)+"/"+digdate.substring(0,2)+"/"+digdate.substring(6,10));
		        
		        var date1 = new Date(lsdate);
		        var date2 = new Date(ondate);
		        var date3 = new Date(digdate);
		        
		        var date1_ms = date1.getTime();
		        var date2_ms = date2.getTime();
		        var date3_ms = date3.getTime();
		        
		        var diff = date2_ms-date1_ms;
		        var diff2 = date3_ms-date1_ms;
		        
		        // get days
		        var days = diff/1000/60/60/24;
		        var days2 = diff2/1000/60/60/24;
		        
		        
		        if(days < 0){
		        	$("#lsdate").val('');
		        	$("#lsdate").focus();   
		        	$.alert({ 
						 icon: 'fa fa-spinner fa-spin',
						title: 'Alert!',
					    content: 'Patient last known shall not be later than the date of Onset',
					   type: 'red',
					    typeAnimated: true,
					    buttons: { 
					        Close: {
					            btnClass: 'btn-red',
					            keys: ['enter'],
					        },
					    }
					});		        	
		        }else if(days2 < 0){
		        	$("#lsdate").val('');
		        	$("#lsdate").focus(); 
		        	$.alert({ 
						 icon: 'fa fa-spinner fa-spin',
						title: 'Alert!',
					    content: 'Patient last known shall not be later than the date of diagnosis',
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
		 
	
	});


});

//--------------------------------------------------------------------
$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#ondate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {					
					this.focus()
				}
			});

	$("#ondate").click(
			function() {
				$("#ondate").datepicker(
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
							onClose : function() {
								
								this.focus()
							}
						});
			});
	
	
	$("#ondate").focusout(function(){
		
		var ondate = $("#ondate").val().toString();
		 var digdate = $("#digdate").val().toString();
		 
		   var lsdate = $("#lsdate").val().toString();
		 
		 var dat = ondate.substring(3, 5) + "-"	+ ondate.substring(0, 2) + "-"	+ ondate.substring(6, 10);
		 
		
		 
		 
		 if(ondate.length == "10" &&   new Date(dat) <= new Date()){
			
			 var yearThen = parseInt(ondate.substring(6,10), 10);
		        var monthThen = parseInt(ondate.substring(3,5), 10);
		        var dayThen = parseInt(ondate.substring(0,2), 10);
		        
			var date = new Date(yearThen, monthThen-1, dayThen);
		    var newdate = new Date(date);

		    newdate.setDate(newdate.getDate() + 28);
		    
		    var dd = newdate.getDate();
		    var mm = newdate.getMonth()+1;
		    var y = newdate.getFullYear();
		    
		    if (dd < 10) { dd = '0' + dd; }
		    if (mm < 10) { mm = '0' + mm; }
		    
		    
		    var someFormattedDate = dd + '/' + mm + '/' + y;	
		    
		    
		    $("#due").val(someFormattedDate);
		    
		    var newdate2 = new Date(date);
		    newdate2.setMonth(newdate.getMonth()+3);
		    
		    var dd2 = newdate2.getDate();
		    var mm2 = newdate2.getMonth()+1;
		    var y2 = newdate2.getFullYear();
		    
		    if (dd2 < 10) { dd2 = '0' + dd2; }
		    if (mm2 < 10) { mm2 = '0' + mm2; }
		    
		    var someFormattedDate2 = dd2 + '/' + mm2 + '/' + y2;
		    $("#due1").val(someFormattedDate2);
		    
		    //------------------------------------------------------------
		    
	        ondate = (ondate.substring(3,5)+"/"+ondate.substring(0,2)+"/"+ondate.substring(6,10));
	        lsdate = (lsdate.substring(3,5)+"/"+lsdate.substring(0,2)+"/"+lsdate.substring(6,10));
	        
	        var date1 = new Date(lsdate);
	        var date2 = new Date(ondate);
	        
	        var date1_ms = date1.getTime();
	        var date2_ms = date2.getTime();
	        
	        var diff = date2_ms-date1_ms;
	        
	        // get days
	        var days = diff/1000/60/60/24;
	        
	        if(days < 0){
	        	$("#ondate").val('');
	        	$("#ondate").focus();   
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'The Date of onset cannot be earlier than the date of Patient last known',
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
		 
		if(ondate.length == "10" &&  digdate != "" && new Date(dat) <= new Date()){
		 
			
		//	var tt = document.getElementById('txtDate').value;

		
		    
		    
	        var yearThen = parseInt(ondate.substring(6,10), 10);
	        var monthThen = parseInt(ondate.substring(3,5), 10);
	        var dayThen = parseInt(ondate.substring(0,2), 10);
	        
	        var yearThen2 = parseInt(digdate.substring(6,10), 10);
	        var monthThen2 = parseInt(digdate.substring(3,5), 10);
	        var dayThen2 = parseInt(digdate.substring(0,2), 10);
	        
	        
	        
	        var today = new Date();
	        
	        
	        
	        var onset = new Date(yearThen, monthThen-1, dayThen);
	        var diag = new Date(yearThen2, monthThen2-1, dayThen2);
	        
	        var differenceInMilisecond = diag.valueOf() - onset.valueOf();
	        
	        
	        
	        var year_age = Math.floor(differenceInMilisecond / 31536000000);
	        var day_age = Math.floor((differenceInMilisecond % 31536000000) / 86400000);
	        

	        
	        var month_age = Math.floor(day_age/30);
	        
	  
	        
	        day_age = day_age % 30;
	        
	        ondate = (ondate.substring(3,5)+"/"+ondate.substring(0,2)+"/"+ondate.substring(6,10));
	        digdate = (digdate.substring(3,5)+"/"+digdate.substring(0,2)+"/"+digdate.substring(6,10));
	        
	        var date1 = new Date(digdate);
	        var date2 = new Date(ondate);
	        
	        var date1_ms = date1.getTime();
	        var date2_ms = date2.getTime();
	        
	        var diff = date2_ms-date1_ms;
	        
	        // get days
	        var days = diff/1000/60/60/24;
	        
	        if(days > 0){
	        	$("#ondate").val('');
	        	$("#ondate").focus();   
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'Date of onset of stroke shall not be later than the date of diagnosis',
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
	        
	});

});

//-----------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#symdate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'firstStrsympdate');
					this.focus()
				}
			});

	$("#symdate").click(
			function() {
				$("#symdate").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField', 'firstStrsympdate');
								this.focus()
							}
						});
			});
	
$("#symdate").focusout(function(){	
		var symdate = $("#symdate").val().toString();
		 var digdate = $("#digdate").val().toString();
		 
		 var ondate = $("#ondate").val().toString();
		 var lsdate = $("#lsdate").val().toString();
		 
		 var day1=0; var day2=0; day3=0;
		 
		 
		
		 
		 var dat = symdate.substring(3, 5) + "-"	+ symdate.substring(0, 2) + "-"	+ symdate.substring(6, 10);
		 if(symdate.length == "10" &&  lsdate != "" && new Date(dat) <= new Date()){
			 symdate = (dat);
			 lsdate = (lsdate.substring(3,5)+"/"+lsdate.substring(0,2)+"/"+lsdate.substring(6,10));
			
			
			 var date1 = new Date(lsdate);
		        var date2 = new Date(symdate);
		        
		        var date1_ms = date1.getTime();
		        var date2_ms = date2.getTime();
		        
		        var diff = date2_ms-date1_ms;
		        
		        // get days
		        var days = diff/1000/60/60/24;	
		        day1 = days;		           
		      
		 }
		 if(symdate.length == "10" &&  ondate != "" && new Date(dat) <= new Date()){	
			 symdate = (dat);
			 ondate = (ondate.substring(3,5)+"/"+ondate.substring(0,2)+"/"+ondate.substring(6,10));
			
			 var date1 = new Date(ondate);
		        var date2 = new Date(symdate);
		        
		        var date1_ms = date1.getTime();
		        var date2_ms = date2.getTime();
		        
		        var diff = date2_ms-date1_ms;
		        
		        // get days
		        var days = diff/1000/60/60/24;	
		        day2 = days;
		       
		 }
		if(symdate.length == "10" &&  digdate != "" && new Date(dat) <= new Date()){
		 
			
	        var yearThen = parseInt(symdate.substring(6,10), 10);
	        var monthThen = parseInt(symdate.substring(3,5), 10);
	        var dayThen = parseInt(symdate.substring(0,2), 10);
	        
	        var yearThen2 = parseInt(digdate.substring(6,10), 10);
	        var monthThen2 = parseInt(digdate.substring(3,5), 10);
	        var dayThen2 = parseInt(digdate.substring(0,2), 10);   
	        
	        var today = new Date();
	        
	        var symdate = new Date(yearThen, monthThen-1, dayThen);
	        var diag = new Date(yearThen2, monthThen2-1, dayThen2);
	        
	        var differenceInMilisecond = diag.valueOf() - symdate.valueOf();
	        
	        
	        
	        var year_age = Math.floor(differenceInMilisecond / 31536000000);
	        var day_age = Math.floor((differenceInMilisecond % 31536000000) / 86400000);
	        
	        var month_age = Math.floor(day_age/30);
	        
	        day_age = day_age % 30;
	        
	       
	        symdate = (dat);
	        digdate = (digdate.substring(3,5)+"/"+digdate.substring(0,2)+"/"+digdate.substring(6,10));
	        
	        
	        
	        var date1 = new Date(digdate);
	        var date2 = new Date(symdate);
	        
	        var date1_ms = date1.getTime();
	        var date2_ms = date2.getTime();
	        
	        var diff = date2_ms-date1_ms;
	        
	        // get days
	        var days = diff/1000/60/60/24;
	        day3 = days;	     
		}
		 
		 if(day1 < 0){
				$("#symdate").val('');
	        	$("#symdate").focus();   
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'The Date of recognition cannot be earlier than the date of Patient last known',
				   type: 'red',
				    typeAnimated: true,
				    buttons: { 
				        Close: {
				            btnClass: 'btn-red',
				            keys: ['enter'],
				        },
				    }
				});			 
		 }else if(day2 < 0){
		    	$("#symdate").val('');
	        	$("#symdate").focus();   
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'The Date of recognition cannot be earlier than the date of onset',
				   type: 'red',
				    typeAnimated: true,
				    buttons: { 
				        Close: {
				            btnClass: 'btn-red',
				            keys: ['enter'],
				        },
				    }
				});
		 }else if(day3 < 0){
		      	$("#symdate").val('');
	        	$("#symdate").focus();   
	        	$.alert({ 
					 icon: 'fa fa-spinner fa-spin',
					title: 'Alert!',
				    content: 'Date of recognition  of stroke shall not be later than the date of diagnosis',
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
	        
	});


});

//-----------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#arivdate").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {			
			this.focus()
		}
	});

	$("#arivdate").click(
			function() {
				$("#arivdate").datepicker(
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
							onClose : function() {								
								this.focus()
							}
						});
			});

});

//---------------------------------------------------------------------------------------
$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#tiadate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {					
					this.focus()
				}
			});

	$("#tiadate").click(
			function() {
				$("#tiadate").datepicker(
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
							onClose : function() {								
								this.focus()
							}
						});
			});

});

//----------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {					
					$("#imagingdate").focus()
					$('#myForm').bootstrapValidator('revalidateField', 'firstCTbrainDate');
				}
			});

	$("#imagingdate").click(
			function() {
				$("#imagingdate").datepicker(
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
							onClose : function() {
								$("#imagingdate").focus()																
							}
						});
			});

});

//--------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate1").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'mriBrainDate');
			this.focus()
		}
	});

	$("#imagingdate1").click(
			function() {
				$("#imagingdate1").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField', 'mriBrainDate');
								this.focus()
							}
						});
			});

});

//-----------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate2").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'angioCTDate');
			this.focus()
		}
	});

	$("#imagingdate2").click(
			function() {
				$("#imagingdate2").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField', 'angioCTDate');
								this.focus()
							}
						});
			});

});

//-----------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate3").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'perfusionDate');
					this.focus()
				}
			});

	$("#imagingdate3").click(
			function() {
				$("#imagingdate3").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField', 'perfusionDate');
								this.focus()
							}
						});
			});

});

//----------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate4").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'angioMRIDate');
			this.focus()
		}
	});

	$("#imagingdate4").click(
			function() {
				$("#imagingdate4").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField', 'angioMRIDate');
								this.focus()
							}
						});
			});

});

//--------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate5").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'carotidDate');
			this.focus()
		}
	});

	$("#imagingdate5").click(
			function() {
				$("#imagingdate5").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField', 'carotidDate');
								this.focus()
							}
						});
			});

});

//----------------------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate6").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'ecgDate');
			this.focus()
		}
	});

	$("#imagingdate6").click(function() {
		$("#imagingdate6").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {
				$('#myForm').bootstrapValidator('revalidateField', 'ecgDate');
				this.focus()
			}
		});
	});

});

//------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate7").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'tteDate');
			this.focus()
		}
	});

	$("#imagingdate7").click(function() {
		$("#imagingdate7").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {
				$('#myForm').bootstrapValidator('revalidateField', 'tteDate');
				this.focus()
			}
		});
	});

});

//----------------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#imagingdate8").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'transesopaghealDate');
					this.focus()
				}
			});

	$("#imagingdate8").click(
			function() {
				$("#imagingdate8").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'transesopaghealDate');
								this.focus()
							}
						});
			});

});


//--------------------------------------------------------------------------------------------



$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#ctMridate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'reportInstDate');
					this.focus()
				}
			});

	$("#ctMridate").click(
			function() {
				$("#ctMridate").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'reportInstDate');
								this.focus()
							}
						});
			});

});

//----------------------------------------------------------------------------------


$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#Thrombolyticdate").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'thrombolyticSymDate');
					this.focus()
				}
			});

	$("#Thrombolyticdate").click(
			function() {
				$("#Thrombolyticdate").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'thrombolyticSymDate');
								this.focus()
							}
						});
			});

});





//-------------------------------------------------------------------------------------
/*$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#due").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'dueDateOfFollDate1');
					this.focus()
				}
			});

	$("#due").click(
			function() {
				$("#due").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'dueDateOfFollDate1');
								this.focus()
							}
						});
			});

});*/


//---------------------------------------------------------------------------------------------
/*

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#due1").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'dueDateOfFollDate2');
					this.focus()
				}
			});

	$("#due1").click(
			function() {
				$("#due1").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'dueDateOfFollDate2');
								this.focus()
							}
						});
			});

});
*/

//------------------------------------------------------------------------------


$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#actual").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {				
					this.focus()
				}
			});

	$("#actual").click(
			function() {
				$("#actual").datepicker(
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
							onClose : function() {						
								this.focus()
							}
						});
			});

});

//------------------------------------------------------------------------------



$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#actual1").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {				
					this.focus()
				}
			});

	$("#actual1").click(
			function() {
				$("#actual1").datepicker(
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
							onClose : function() {								
								this.focus()
							}
						});
			});

});

//------------------------------------------------------------------------------


$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#dead1").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {			
					this.focus()
				}
			});

	$("#dead1").click(
			function() {
				$("#dead1").datepicker(
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
							onClose : function() {							
								this.focus()
							}
						});
			});

});

//------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#dead2").datepicker(
			{
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$('#myForm').bootstrapValidator('revalidateField',
							'dateOfDeath2');
					this.focus()
				}
			});

	$("#dead2").click(
			function() {
				$("#dead2").datepicker(
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
							onClose : function() {
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'dateOfDeath2');
								this.focus()
							}
						});
			});

});

// ------------------------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#datecompf").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			
			this.focus()
		}
	});

	$("#datecompf").click(function() {
		$("#datecompf").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {				
				this.focus()
			}
		});
	});
});



//------------------------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#strokeevent").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {
			$('#myForm').bootstrapValidator('revalidateField', 'dateOfnewStroke');
			this.focus()
		}
	});

	$("#strokeevent").click(function() {
		$("#strokeevent").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {
				$('#myForm').bootstrapValidator('revalidateField', 'dateOfnewStroke');
				this.focus()
			}
		});
	});
});



//------------------------------------------------------------------------------------------------------

$(function() {
	var date = new Date();
	var currentMonth = date.getMonth();
	var currentDate = date.getDate();
	var currentYear = date.getFullYear();

	$("#datDisc").datepicker({
		dateFormat : 'dd-mm-yy',
		yearRange : '1930:2099',
		maxDate : new Date(currentYear, currentMonth, currentDate),
		showButtonPanel : false,
		changeMonth : true,
		changeYear : true,
		loseText : 'Clear',
		gotoCurrent : true,
		onClose : function() {	
			$('#myForm').bootstrapValidator('revalidateField', 'dateOfDisch');
			this.focus()
		}
	});

	$("#datDisc").click(function() {
		$("#datDisc").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			onClose : function() {	
				$('#myForm').bootstrapValidator('revalidateField', 'dateOfDisch');
				this.focus()
			}
		});
	});
});

// ------------------------------------------------------------------

$(function() {
	var form = document.forms['hidingSuccessForm']
	$(".dat").on(
			'focusout',
			function() {
				var txtVal = $(this).val();
				var id = this.id;
				
				var valDay = txtVal.substring(0,2);
				var valMonth = txtVal.substring(3,5);
				
				if (new Date(txtVal.substring(3, 5) + "-"
						+ txtVal.substring(0, 2) + "-"
						+ txtVal.substring(6, 10)) > new Date()) {
					/*
					 * alert('Please enter upto Current Date'); $(this).val('');
					 * $(this).focus();
					 */
					$('#' + id).val('');
					$('#' + id).focus();					
					$.alert({
						icon : 'fa fa-spinner fa-spin',
						title : 'Alert!',
						content : 'Please enter upto Current Date!',
						type : 'red',
						typeAnimated : true,
						buttons : {
							Close : {
								btnClass : 'btn-red',
								keys : [ 'enter' ],
							},
						}
					});					
					// $(this).find('#DtInval').focus();

				}else
					if(parseInt(txtVal.substring(6,10)) < parseInt(1900) || parseInt(txtVal.substring(6,10)) > (new Date).getFullYear() || (valDay > parseInt(31) && valDay != parseInt(99) && valMonth == parseInt(99)) || (valMonth > parseInt(12) && valMonth != parseInt(99) && valDay == parseInt(99))){

					$(this).val('');
					$(this).focus();

					$.alert({
						icon : 'fa fa-spinner fa-spin',
						title : 'Alert!',
						content : 'Please enter a valid Date',
						type : 'red',
						typeAnimated : true,
						buttons : {
							Close : {
								btnClass : 'btn-red',
								keys : [ 'enter' ],
							},
						}
					});

				}else
				if (txtVal.length >= "10") {
					if (isDate(txtVal)) {
						return true;
					} else {

						$(this).focus();
						$(this).val('');

						$.alert({
							icon : 'fa fa-spinner fa-spin',
							title : 'Alert!',
							content : 'Please enter a valid Date',
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

				}else
				if (txtVal.length > "0" && txtVal.length < "10") {
					$(this).val('');
					$(this).focus();
					// alert("Please enter a valid Date.");

					$.alert({
						icon : 'fa fa-spinner fa-spin',
						title : 'Alert!',
						content : 'Please enter a valid Date',
						type : 'red',
						typeAnimated : true,
						buttons : {
							Close : {
								btnClass : 'btn-red',
								keys : [ 'enter' ],
							},
						}
					});

					return false;
				}

			});
});
// ---------------------------------------------------------------------------------------------

// ------date fucntion--------------------------------------
function isDate(txtDate) {
	var currVal = txtDate;
	if (currVal == '')
		return false;

	var rxDatePattern = /^(\d{1,2})(\/|-)(\d{1,2})(\/|-)(\d{4})$/; // Declare
																	// Regex
	var dtArray = currVal.match(rxDatePattern); // is format OK?

	if (dtArray == null)
		return false;

	// Checks for mm/dd/yyyy format.

	dtDay = dtArray[1];
	dtMonth = dtArray[3];
	dtYear = dtArray[5];

	if(dtDay != 99 && dtMonth != 99){		
		if (dtMonth < 1 || dtMonth > 12)
			return false;
		else if (dtDay < 1 || dtDay > 31)
			return false;
		else if ((dtMonth == 4 || dtMonth == 6 || dtMonth == 9 || dtMonth == 11)
				&& dtDay == 31)
			return false;
		else if (dtMonth == 2) {
			var isleap = (dtYear % 4 == 0 && (dtYear % 100 != 0 || dtYear % 400 == 0));
			if (dtDay > 29 || (dtDay == 29 && !isleap))
				return false;
		}
	}

	return true;
}