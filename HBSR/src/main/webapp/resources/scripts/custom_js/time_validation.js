/**
 * 
 */

$(function(){	
	$('.tim_hr').keyup(function(){		
		var hr = $(this).val();	
		var id = this.id;
		
		var tabindex = $(this).attr('tabindex');
        tabindex + 3; 
		
		if(hr != '')
			{ 
				if(hr > 12)
						{
					$('#' + id).val('');
					$('#' + id).focus();
						$.alert({ 
			   				 icon: 'fa fa-spinner fa-spin',
			   				 title: 'Alert!',
			   				 content: 'Please enter a valid Time..',
			   				 type: 'red',
			   				 typeAnimated: true,
				   			    buttons: { 
				   			        Close: {
				   			            btnClass: 'btn-red',
				   			         keys: ['enter'],
				   			         action : function(){				   			        											
				   			         }
				   			        },
				   			    }
						});
					}else{
						$("input[tabindex='"+tabindex+"']").val(hr);
					}
				}
	});
	//----------------------------------------------------------
	
	$('.tim_hr').focusout(function(){
		var hr = $(this).val();	
		var id = this.id;
		
		var tabindex = $(this).attr('tabindex');
		var Mn_index = parseInt(tabindex) + 1;
		var aMpM_index = parseInt(tabindex) + 2;
		var sv_tim_index = parseInt(tabindex) + 3;
		
		var Mn = $("input[tabindex='"+Mn_index+"']").val();
        
		setTimeout(function(){			
			if(hr != ''){
				if(hr < 10 && hr != '00' && hr.length < 2)
					$('#' + id).val("0"+hr);
				
			}
		},200);
		
	      setTimeout(function(){
	        	if(hr != "" && Mn == ""){
		        	hr = $("input[tabindex='"+tabindex+"']").val();		        	
		        	var AmPm = $("select[tabindex='"+aMpM_index+"']").children("option:selected").val();
		        	
					$("input[tabindex='"+ sv_tim_index +"']").val(hr +" : "+ "00" + " "+ AmPm);
	        	}else if(hr != "" && Mn != ""){
	        		hr = $("input[tabindex='"+tabindex+"']").val();		        	
		        	var AmPm = $("select[tabindex='"+aMpM_index+"']").children("option:selected").val();
		        	
					$("input[tabindex='"+ sv_tim_index +"']").val(hr +" : "+ Mn + " "+ AmPm);
	        	}
			},400);
	      
	});
	
	//----------------------------------------------------------
	$('.tim_mn').keyup(function(){
		var Mn = $(this).val();
		var id = this.id;	
		
		var tabindex = $(this).attr('tabindex');
		var hr_index = tabindex - 1;
		var aMpM_index = parseInt(tabindex) + 1;
		
		var sv_tim_index = parseInt(tabindex) + 2;
		
		var hr = $("input[tabindex='"+ hr_index +"']").val();
		var AmPm = $("select[tabindex='"+aMpM_index+"']").children("option:selected").val();
		
		if(Mn != '')			
			{ 
				if(Mn > 59){				
							$.alert({ 
				   				 icon: 'fa fa-spinner fa-spin',
				   				 title: 'Alert!',
				   				 content: 'Please enter a valid Time..',
				   				 type: 'red',
				   				 typeAnimated: true,
					   			    buttons: { 
					   			        Close: {
					   			            btnClass: 'btn-red',
					   			            keys: ['enter'],
					   			           action : function(){					   			        	
					   			        	$('#' + id).focus();
					   			        	$('#' + id).val('');
					   			        	$("input[tabindex='"+ sv_tim_index +"']").val(hr +" : "+ "00" + " "+ AmPm);
					   			         }
					   			        },
					   			    }
							});
				}//end if
				else {
					$("input[tabindex='"+ sv_tim_index +"']").val(hr +" : "+ Mn + " "+ AmPm);
				}
			}
	});
	//---------------------------------------------------------
	$('.tim_mn').focusout(function(e){
		
		var Mn = $(this).val();
		var id = this.id;
	
        var tabindex = $(this).attr('tabindex');
		var hr_index = parseInt(tabindex) - 1;
		var aMpM_index = parseInt(tabindex) + 1;
		var sv_tim_index = parseInt(tabindex) + 2;		

		var hr = $("input[tabindex='"+hr_index+"']").val();
        
		setTimeout(function(){		
		if(Mn != ''){
			if(Mn < 10 && Mn !="00" && Mn.length < 2)
				$('#' + id).val("0"+Mn);
			if(Mn >=0 && Mn < 60 && hr == '')
				$("input[tabindex='"+hr_index+"']").val("12");
		}else if(hr != "" && Mn == "")
			{
				if(hr != "")
					$('#' + id).val("00");
			}				
		},200);
        
		
	        setTimeout(function(){
	        	if(hr != "" || Mn != ''){
		        	hr = $("input[tabindex='"+hr_index+"']").val();
		        	Mn = $("input[tabindex='"+tabindex+"']").val();
		        	var AmPm = $("select[tabindex='"+aMpM_index+"']").children("option:selected").val();
		        	
					$("input[tabindex='"+ sv_tim_index +"']").val(hr +" : "+ Mn + " "+ AmPm);
	        	}
			},400);
        
	});
});