/**
 * 
 */
 $(document).ready(function() {	
	
	
	    $('#myForm')
	        .bootstrapValidator({
	            // Only disabled elements are excluded
	            // The invisible elements belonging to inactive tabs must be validated
	        	//excluded: [':disabled', ':hidden', ':not(:visible)'],
			submitButtons: 'input[name="FSave"]',
			excluded: [':disabled'],
	            feedbackIcons: {
	                valid: 'glyphicon glyphicon-ok',
	                invalid: 'glyphicon glyphicon-remove',
	                validating: 'glyphicon glyphicon-refresh'
	            },
	            fields: {
	                regNum: {
	                    validators: {
	                    	 notEmpty: {
		                            message: 'HBSR Registration Number can not be blank'	                    
		                        },
		                        stringLength: {
		                        	min: 7,
		                            max: 7,
		                            message: 'Please enter 7 digits No'
		                        }
	                   
	                    }
	                },
	                sourceofReg: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Name of source of registration can not be blank'
	                        }
	                    }
	                },
	                
	                deptName: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Name of the Department is required'
	                        }
	                    }
	                },
	                code1: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Mandatory'
	                        }
	                    }
	                },
	                code2: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Mandatory'
	                        }
	                    }
	                },	                
	                patFirstN: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Name of Patient can not be blank'
	                        }
	                    }
	                },
	                division: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Please enter Division *'
	                        }
	                    }
	                },
	                hospRegNum: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Hospital Registration Numbers is required'
	                        }
	                    }
	                },
	                dist: {
	                    validators: {
	                        notEmpty: {
	                            message: 'District is required'
	                        }
	                    }
	                },
	                postalPin: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Pincode is required'
	                        },
	                        stringLength: {
	                        	min: 6,
	                            max: 6,
	                            message: 'Please enter 6 digits No'
	                        }
	                    }
	                },
	                email: {
	                    validators: {			                     
	                      regexp: {
	                        regexp: '^[^@\\s]+@([^@\\s]+\\.)+[^@\\s]+$',
	                        message: 'The value is not a valid email address'
	                      }
	                    }
	                  },
	                durationStay: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Duration of Stay is required'
	                        },	             	                        
	                      	callback :{
	                    		 message: 'Duration of Stay is not more than the age.',
		                            callback: function (value, validator) {	
		                            	var ageval = $("#age").val();
		                            	if($("#age").val() == '' && value != ''){
		                            		return true;		                            		
		                            	}else
		                            	if($("#age").val() != '' && value != ''){		                            		
		                            		if(value > parseInt(ageval) && value != '98')
		                            			return false;	
		                            		else 
		                            			return true;
		                            	}
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                age: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Age is required'
	                        },
	                  /*      between: {	                            	   
                                min: 'durationStay',
                                max: 99,
                                message: 'Age is not less than the Duration of Stay'
                            },*/
                        	callback :{
	                    		 message: 'Age is not less than the Duration of Stay',
		                            callback: function (value, validator) {	
		                            	var dStay = $("#durationStay").val();
		                            	if(dStay == '' && value != ''){
		                            		return true;		                            		
		                            	}else
		                            	if(dStay != '' && value != ''){		                            		
		                            		if(value >= parseInt(dStay))
		                            			return true;	
		                            		else 
		                            			return false;
		                            	}
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                dob: {
	                    validators: {
	                        notEmpty: {
	                            message: 'please enter Date Of Birth'
	                        }
	                    }
	                },
	                sexR: {
	                    selector: '.sexR',
	                    err: '#sexR_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	            
	                	        
	               sex: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Gender',
		                            callback: function (value, validator) {
		                            	if($(".btn_sex").is(':checked') && value != ''){
		                            		$("#sexR").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'sexR');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                
	                nameSour: {
	                    selector: '.nameSour',
	                    err: '#nameSour_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	               
	                
	                repInst: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_rep").is(':checked') && value != ''){
		                            		$("#nameSour").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'nameSour');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	            /*    preMorbidRankin: { 
	                    validators: {
	                        notEmpty: {
	                            message: 'Please Select any one'
	                        }			                        
	                    }
	                },*/
	                
	                rankScId: {
	                    selector: '.rankScId',
	                    err: '#Diag_HFerr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                preMorbidRankin: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_rankSc").is(':checked') && value != ''){		                            		
		                            		$("#rankScId").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'rankScId');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                ctMri: {
	                    selector: '.ctMri',
	                    err: '#ctMri_HFerr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                reportInstCTandMRI: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_ctMri").is(':checked') && value != ''){
		                            		$("#ctMri").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'ctMri');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                reportInst: {
	                    selector: '.reportInst',
	                    err: '#reportInst_HFerr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                reportInstImagTime: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_imagTime").is(':checked') && value != ''){
		                            		$("#reportInst").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'reportInst');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                typOfSt: {
	                    selector: '.typOfSt',
	                    err: '#typOfSt_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                typeOfStroke: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_typOfStr").is(':checked') && value != ''){
		                            		$("#typOfSt").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'typOfSt');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	           
	               /* toastCriteria: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_toastCr").is(':checked') && value != ''){
		                            		$("#toastCr_Err").hide();
		                            		return true;		                            		
		                            	}else
		                            		$("#toastCr_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },*/
	                prvStr: {
	                    selector: '.prvStr',
	                    err: '#prvStr_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                prevStroke: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_prevStroke").is(':checked') && value != ''){
	                            		$("#prvStr").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'prvStr');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                prvTrIs: {
                    selector: '.prvTrIs',
                    err: '#prvTrIs_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
	                
                
                prvTransAtt: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_prvTransAtt").is(':checked') && value != ''){
	                            		$("#prvTrIs").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'prvTrIs');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },

                hyper: {
                    selector: '.hyper',
                    err: '#hyper_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                hypertension: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_hypertension").is(':checked') && value != ''){
	                            		$("#hyper").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'hyper');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
	                
                
                diabMill: {
                    selector: '.diabMill',
                    err: '#diabMill_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
	                
                
                diabetMelli: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_diabetMelli").is(':checked') && value != ''){
	                            		$("#diabMill").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'diabMill');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                atrFibril: {
                    selector: '.atrFibril',
                    err: '#atrFibril_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                fibrillation: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_fibrillation").is(':checked') && value != ''){
	                            		$("#atrFibril").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'atrFibril');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                carSten: {
                    selector: '.carSten',
                    err: '#carSten_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                

                stenosis: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_stenosis").is(':checked') && value != ''){
	                            		$("#carSten").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'carSten');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                mycrInf: {
                    selector: '.mycrInf',
                    err: '#mycrInf_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },

                
                infarction: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_infarction").is(':checked') && value != ''){
	                            		$("#mycrInf").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'mycrInf');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                inscHeart: {
                    selector: '.inscHeart',
                    err: '#inscHeart_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
	                
                
                heartDisea: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_heartDisea").is(':checked') && value != ''){
	                            		$("#inscHeart").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'inscHeart');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                rehHeart: {
                    selector: '.rehHeart',
                    err: '#rehHeart_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                rheumaticHearDise: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_rheumaticHearDise").is(':checked') && value != ''){
	                            		$("#rehHeart").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'rehHeart');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                
                nonrehHeart: {
                    selector: '.nonrehHeart',
                    err: '#nonrehHeart_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                
                nonRheumaHeaDise: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_nonRheumaHeaDise").is(':checked') && value != ''){
	                            		$("#nonrehHeart").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'nonrehHeart');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                
                valvPro: {
                    selector: '.valvPro',
                    err: '#valvPro_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                prosthesis: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_prosthesis").is(':checked') && value != ''){
	                            		$("#valvPro").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'valvPro');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                heartFail: {
                    selector: '.heartFail',
                    err: '#heartFail_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                heartFailure: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_heartFailure").is(':checked') && value != ''){
	                            		$("#heartFail").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'heartFail');
	                            		return true;		                            		
	                            	}else	
	                            		return false;	                            		
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                arterialDiseaTxt: {
                    selector: '.arterialDiseaTxt',
                    err: '#perp_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                arterialDisea: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_arterialDisea").is(':checked') && value != ''){	                            		
	                            		$("#arterialDiseaTxt").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'arterialDiseaTxt');
	                            		return true;		                            		
	                            	}else	
	                            		return false;
	                            		//$("#rankSc_Err").show();
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                
                
                kidyDis: {
                    selector: '.kidyDis',
                    err: '#kidyDis_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                kidneyDise: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_kidneyDise").is(':checked') && value != ''){	                            		
	                            		$("#kidyDis").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'kidyDis');
	                            		return true;		                            		
	                            	}else	
	                            		return false;	                            		
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                
      
                
                
                anem: {
                    selector: '.anem',
                    err: '#anem_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                anemia: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_anemia").is(':checked') && value != ''){	                            		
	                            		$("#anem").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'anem');
	                            		return true;		                            		
	                            	}else	
	                            		return false;	                            		
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                   
                
                hyperCh: {
                    selector: '.hyperCh',
                    err: '#hyperCh_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                
                hypercholesterolemia: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_hypercholesterolemia").is(':checked') && value != ''){	                            		
	                            		$("#hyperCh").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'hyperCh');
	                            		return true;		                            		
	                            	}else	
	                            		return false;	                            		
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                
         
                
                
                hyperHom: {
                    selector: '.hyperHom',
                    err: '#hyperHom_err',      
                    validators: {
                        notEmpty: {
                            message: 'Please choose *'
                        }
                    }
                },
                
                
                hyperHomocysteinemia: {
                    validators: {
                    	callback :{
                    		 message: 'Select Option',
	                            callback: function (value, validator) {
	                            	if($(".btn_hyperHomocysteinemia").is(':checked') && value != ''){	                            		
	                            		$("#hyperHom").val("yes");
	                            		$('#myForm').bootstrapValidator('revalidateField', 'hyperHom');
	                            		return true;		                            		
	                            	}else	
	                            		return false;	                            		
	                            	
	                            	return false;
	                            }
                    	}
                    }
                },
                
                
	                
	                haemorrhagestroke: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_typOfint").is(':checked') && value != ''){
		                            		$("#typeOfint_Err").hide();
		                            		return true;		                            		
		                            	}else
		                            		$("#typeOfint_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                typOfcis: {
	                    selector: '.typOfcis',
	                    err: '#typOfcis_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                typeOfcircStroke: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_typOfcir").is(':checked') && value != ''){
		                            		$("#typOfcis").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'typOfcis');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                famHisOfStr: {
	                    selector: '.famHisOfStr',
	                    err: '#famHisOfStr_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	            
	                
	                familyHisOfStrok: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_famHisOfStr").is(':checked') && value != ''){
		                            		$("#famHisOfStr").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'famHisOfStr');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                tobacco: {
	                    selector: '.tobacco',
	                    err: '#tobacco_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                tobaccoSmok: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_tobSmo").is(':checked') && value != ''){
		                            		$("#tobacco").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'tobacco');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                smokTobbaco: {
	                    selector: '.smokTobbaco',
	                    err: '#smokTobbaco_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                smkolessTobacco: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_smoTob").is(':checked') && value != ''){
		                            		$("#smokTobbaco").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'smokTobbaco');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                alcUse: {
	                    selector: '.alcUse',
	                    err: '#alcUse_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                alcoholUse: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_alchUse").is(':checked') && value != ''){
		                            		$("#alcUse").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'alcUse');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                }, 
	                
	                drugAb: {
	                    selector: '.drugAb',
	                    err: '#drugAb_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                drugAbuse: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_drugAb").is(':checked') && value != ''){
		                            		$("#drugAb").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'drugAb');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },  
	                
	                deliTreat: {
	                    selector: '.deliTreat',
	                    err: '#deliTreat_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                deliveryORtermination: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_pregn").is(':checked') && value != ''){
		                            		$("#deliTreat").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'deliTreat');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                }, 
	                hormone: {
	                    selector: '.hormone',
	                    err: '#hormonet_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                therapy: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_therapy").is(':checked') && value != ''){
		                            		$("#hormone").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hormone');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                }, 
	                
	                
	                migra: {
	                    selector: '.migra',
	                    err: '#migra_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                migraine: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_migran").is(':checked') && value != ''){
		                            		$("#migra").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'migra');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },  
	                
	                cellDis: {
	                    selector: '.cellDis',
	                    err: '#cellDis_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                sickleCellDisease: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_sickle").is(':checked') && value != ''){
		                            		$("#cellDis").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'cellDis');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                hivInf: {
	                    selector: '.hivInf',
	                    err: '#hivInf_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                hiv: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_hiv").is(':checked') && value != ''){
		                            		$("#hivInf").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hivInf');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                cns: {
	                    selector: '.cns',
	                    err: '#cns_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                cnsTB: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_cnstb").is(':checked') && value != ''){
		                            		$("#cns").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'cns');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                
	                bm: {
	                    selector: '.bm',
	                    err: '#bm_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                bmi: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_bm").is(':checked') && value != ''){
		                            		$("#bm").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'bm');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                antiPla: {
	                    selector: '.antiPla',
	                    err: '#antiPla_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                antiplatelets: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antip").is(':checked') && value != ''){
		                            		$("#antiPla").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antiPla');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                antiHyp: {
	                    selector: '.antiHyp',
	                    err: '#antiHyp_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                hypertensiveDrugs: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antihyP").is(':checked') && value != ''){
		                            		$("#antiHyp").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antiHyp');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                lipdLow: {
	                    selector: '.lipdLow',
	                    err: '#lipdLow_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                loweringDrugs: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_lipidLo").is(':checked') && value != ''){
		                            		$("#lipdLow").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'lipdLow');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                antiDaib: {
	                    selector: '.antiDaib',
	                    err: '#antiDaib_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                diabeticAgents: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antiDai").is(':checked') && value != ''){
		                            		$("#antiDaib").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antiDaib');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                thrTrea: {
	                    selector: '.thrTrea',
	                    err: '#thrTrea_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                thrombolyticTraetmentGiv: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_thrombTreat").is(':checked') && value != ''){
		                            		$("#thrTrea").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'thrTrea');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                delayInArr: {
	                    selector: '.delayInArr',
	                    err: '#delayInArr_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	       
	                
	                
	                delayInArrival: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_delayArrHosp").is(':checked') && value != ''){
		                            		$("#delayInArr").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'delayInArr');
		                            		return true;		                            		
		                            	}else	
		                            		return false;		                            		
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                delayInIm: {
	                    selector: '.delayInIm',
	                    err: '#delayInIm_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                delayInImag: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_delayImgTime").is(':checked') && value != ''){
		                            		$("#delayInIm").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'delayInIm');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                diabetMell: {
	                    selector: '.diabetMell',
	                    err: '#diabetMell_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                diabeticsMellitus: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_dibMill").is(':checked') && value != ''){
		                            		$("#diabetMell").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'diabetMell');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                onOfSym: {
	                    selector: '.onOfSym',
	                    err: '#onOfSym_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                onsetOfSymp: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_onsSymp").is(':checked') && value != ''){
		                            		$("#onOfSym").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'onOfSym');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                sb: {
	                    selector: '.sb',
	                    err: '#sb_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                sbp: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_sbp").is(':checked') && value != ''){
		                            		$("#sb").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'sb');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                gluc: {
	                    selector: '.gluc',
	                    err: '#gluc_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                glucose: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_gluc").is(':checked') && value != ''){
		                            		$("#gluc").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'gluc');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                strokSer: {
	                    selector: '.strokSer',
	                    err: '#strokSer_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                strokeSeverity: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_strkSer").is(':checked') && value != ''){
		                            		$("#strokSer").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'strokSer');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                suspi: {
	                    selector: '.suspi',
	                    err: '#suspi_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                suspichaemorrhage: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_suspi").is(':checked') && value != ''){
		                            		$("#suspi").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'suspi');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                mcaTerr: {
	                    selector: '.mcaTerr',
	                    err: '#mcaTerr_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                mcaTerritory: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_mcaTer").is(':checked') && value != ''){
		                            		$("#mcaTerr").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'mcaTerr');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	       
	                
	                surgery: {
	                    selector: '.surgery',
	                    err: '#surgery_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                surgery_trauma: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_surg").is(':checked') && value != ''){
		                            		$("#surgery").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'surgery');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                intrac: {
	                    selector: '.intrac',
	                    err: '#intrac_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                intracranial: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_intrac").is(':checked') && value != ''){
		                            		$("#intrac").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'intrac');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                hisOfInt: {
	                    selector: '.hisOfInt',
	                    err: '#historyOfintr_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                
	                historyOfintracranial: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_hisOfInt").is(':checked') && value != ''){
		                            		$("#hisOfInt").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hisOfInt');
		                            		return true;		                            		
		                            	}else	
		                            		return false;		                            		
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                interBleed: {
	                    selector: '.interBleed',
	                    err: '#interBleed_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                internalBleeding: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_inteBlee").is(':checked') && value != ''){		                            		
		                            		$("#historyOfintr").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'historyOfintr');
		                            		return true;		                            		
		                            	}else	
		                            		return false;		                            		
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	         
	                
	                plate: {
	                    selector: '.plate',
	                    err: '#plate_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                platelets: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_plat").is(':checked') && value != ''){
		                            		$("#plate").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'plate');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                leftHeart: {
	                    selector: '.leftHeart',
	                    err: '#leftHeart_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                leftHeartthrombus: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_leftHear").is(':checked') && value != ''){
		                            		$("#leftHeart").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'leftHeart');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                incrRiskBleeding: {
	                    selector: '.incrRiskBleeding',
	                    err: '#incrRiskBleeding_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                increasedBleeding: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_incBleed").is(':checked') && value != ''){
		                            		$("#incrRiskBleeding").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'incrRiskBleeding');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                severe: {
	                    selector: '.severe',
	                    err: '#severe_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                severeComorbid: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_serCom").is(':checked') && value != ''){
		                            		$("#severe").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'severe');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                strok: {
	                    selector: '.strok',
	                    err: '#strok_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                strokeRapidly: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_strok").is(':checked') && value != ''){
		                            		$("#strok").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'strok');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                mediNotAvaiID: {
	                    selector: '.medic',
	                    err: '#medic_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                mediNotAvai: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_smedNot").is(':checked') && value != ''){
		                            		$("#mediNotAvaiID").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'mediNotAvaiID');
		                            		return true;		                            		
		                            	}else	
		                            		return false;		                            		
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                patient: {
	                    selector: '.patient',
	                    err: '#patient_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                couldNotAfford: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_cldNotAff").is(':checked') && value != ''){
		                            		$("#patient").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'patient');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                ctDone: {
	                    selector: '.ctDone',
	                    err: '#ctDone_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                ctDoneAfter24hr: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_ctdone24hr").is(':checked') && value != ''){
		                            		$("#ctDone").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'ctDone');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	               
	                
	                
	                
	                hemicraniectomy: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_hemicr").is(':checked') && value != ''){
		                            		$("#hemicr_Err").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hemicr_Err');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            		
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                hemicr_Err: {
	                    selector: '.hemicr_Err',
	                    err: '#hemicr_Err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                suboccipital: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_subocc").is(':checked') && value != ''){
		                            		$("#subocc_Err").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'subocc_Err');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                subocc_Err: {
	                    selector: '.subocc_Err',
	                    err: '#subocc_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                hematoma: {
	                    selector: '.hematoma',
	                    err: '#hematoma_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                hematomaEve: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_hemat").is(':checked') && value != ''){
		                            		$("#hematoma").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hematoma');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                carotid1: {
	                    selector: '.carotid1',
	                    err: '#carotid_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	               
	                
	                endarterectomy: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_enda").is(':checked') && value != ''){
		                            		$("#carotid1").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'carotid1');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                carotidSten: {
	                    selector: '.carotidSten',
	                    err: '#carotidSten_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                carotidStenting: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_carotid").is(':checked') && value != ''){
		                            		$("#carotidSten").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'carotidSten');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                endovac: {
	                    selector: '.endovac',
	                    err: '#endovac_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                endovascular: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_endov").is(':checked') && value != ''){
		                            		$("#endovac").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'endovac');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                swallow: {
	                    selector: '.swallow',
	                    err: '#swallow_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                swallowBeenTested: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_swall").is(':checked') && value != ''){
		                            		$("#swallow").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'swallow');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                patientDyp: {
	                    selector: '.patientDyp',
	                    err: '#patientDyp_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                dysphagia: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_dysp").is(':checked') && value != ''){
		                            		$("#patientDyp").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'patientDyp');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                swalloMan: {
	                    selector: '.swalloMan',
	                    err: '#swalloMan_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                swallowManag: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_swallow").is(':checked') && value != ''){
		                            		$("#swalloMan").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'swalloMan');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                occupation: {
	                    selector: '.occupation',
	                    err: '#occupation_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                occupatTherapy: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_occup").is(':checked') && value != ''){
		                            		$("#occupation").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'occupation');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                physi: {
	                    selector: '.physi',
	                    err: '#physi_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                physiotherap: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_phys").is(':checked') && value != ''){
		                            		$("#physi").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'physi');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                
	                speech: {
	                    selector: '.speech',
	                    err: '#speech_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                speechTherapy: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_speech").is(':checked') && value != ''){
		                            		$("#speech").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'speech');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                bladder: {
	                    selector: '.bladder',
	                    err: '#bladder_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                bladderCare: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_bladder").is(':checked') && value != ''){
		                            		$("#bladder").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'bladder');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                deepThrom: {
	                    selector: '.deepThrom',
	                    err: '#deepThrom_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                prophylaxis: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_prophy").is(':checked') && value != ''){
		                            		$("#deepThrom").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'deepThrom');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                hospitalisation: {
	                    selector: '.hospitalisation',
	                    err: '#hospitalisation_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                after48hr: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_after48hr").is(':checked') && value != ''){
		                            		$("#hospitalisation").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hospitalisation');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                hemorrage: {
	                    selector: '.hemorrage',
	                    err: '#hemorrage_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                antithrombotic: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antithro").is(':checked') && value != ''){
		                            		$("#hemorrage").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hemorrage');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                current: {
	                    selector: '.current',
	                    err: '#current_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                currentStroke: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_curStr").is(':checked') && value != ''){
		                            		$("#current").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'current');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                cardic: {
	                    selector: '.cardic',
	                    err: '#cardic_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                cardicEvent: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_carEv").is(':checked') && value != ''){
		                            		$("#cardic").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'cardic');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	         	                
	                
	                seizure: {
	                    selector: '.seizure',
	                    err: '#seizure',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                seizures: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_seiz").is(':checked') && value != ''){
		                            		$("#seizure").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'seizure');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                
	                
	                pnem: {
	                    selector: '.pnem',
	                    err: '#pnem_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                pneumonia: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_pneu").is(':checked') && value != ''){
		                            		$("#pnem").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'pnem');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                urinary: {
	                    selector: '.urinary',
	                    err: '#urinary_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                urinaryTracInfe: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_urin").is(':checked') && value != ''){
		                            		$("#urinary").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'urinary');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                decub: {
	                    selector: '.decub',
	                    err: '#decub_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }},
	                
	                decubitusUlcer: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_decub").is(':checked') && value != ''){
		                            		$("#decub").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'decub');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                deep: {
	                    selector: '.deep',
	                    err: '#deep_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                venousnThrom: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_veno").is(':checked') && value != ''){
		                            		$("#deep").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'deep');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                pulm: {
	                    selector: '.pulm',
	                    err: '#pulm_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                pulmonary: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_pulm").is(':checked') && value != ''){
		                            		$("#pulm").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'pulm');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                fal: {
	                    selector: '.fal',
	                    err: '#fal_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                fall: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_fal").is(':checked') && value != ''){
		                            		$("#fal").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'fal');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                renal: {
	                    selector: '.renal',
	                    err: '#renal_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                renalFailure: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_renal").is(':checked') && value != ''){
		                            		$("#renal").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'renal');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                stroke: {
	                    selector: '.stroke',
	                    err: '#stroke_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                strokeDepression: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_strDep").is(':checked') && value != ''){
		                            		$("#stroke").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'stroke');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                psych: {
	                    selector: '.psych',
	                    err: '#psych_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                psychiatricIllness: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_psyIll").is(':checked') && value != ''){
		                            		$("#psych").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'psych');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                hypertens: {
	                    selector: '.hypertens',
	                    err: '#hypertens_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                antiHyper: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antiHyp").is(':checked') && value != ''){
		                            		$("#hypertens").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'hypertens');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                antiP: {
	                    selector: '.antiP',
	                    err: '#antiP_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                antiplatelets2: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antipla").is(':checked') && value != ''){
		                            		$("#antiP").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antiP');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                antiC: {
	                    selector: '.antiC',
	                    err: '#antiC_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                anticoagulants: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {		                            	
		                            	if($(".btn_anticg").is(':checked') && value != ''){		                            		
		                            		$("#antiC").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antiC');
		                            		return true;		                            		
		                            	}else{		                            		
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antiC');
		                            		return false;
		                            	}
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                stat: {
	                    selector: '.stat',
	                    err: '#stat_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                statins: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_statns").is(':checked') && value != ''){
		                            		$("#stat").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'stat');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                antidia: {
	                    selector: '.antidia',
	                    err: '#antidia_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                antidiabetics1: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_antidi").is(':checked') && value != ''){
		                            		$("#antidia").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'antidia');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                counc: {
	                    selector: '.counc',
	                    err: '#counc_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                counsellingForReg: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_counForReg").is(':checked') && value != ''){
		                            		$("#counc").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'counc');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                counFor: {
	                    selector: '.counFor',
	                    err: '#counFor_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                counsellingForCompl: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_counForComp").is(':checked') && value != ''){
		                            		$("#counFor").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'counFor');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                
	                smok: {
	                    selector: '.smok',
	                    err: '#smok_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                smokCessation: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_smoCess").is(':checked') && value != ''){
		                            		$("#smok").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'smok');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                smokTob: {
	                    selector: '.smokTob',
	                    err: '#smokTob_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                smokLessTobCess: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_smoless").is(':checked') && value != ''){
		                            		$("#smokTob").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'smokTob');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                counAbs: {
	                    selector: '.counAbs',
	                    err: '#counAbs_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                counForAbstAlc: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_conAbst").is(':checked') && value != ''){
		                            		$("#counAbs").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'counAbs');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                counDrug: {
	                    selector: '.counDrug',
	                    err: '#counDrug_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                counForDrugAbuse: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_conDrug").is(':checked') && value != ''){
		                            		$("#counDrug").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'counDrug');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                rehab: {
	                    selector: '.rehab',
	                    err: '#rehab_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                rehabiliationServ: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_rehbilt").is(':checked') && value != ''){
		                            		$("#rehab").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'rehab');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                strk: {
	                    selector: '.strk',
	                    err: '#strk_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                strokeEduc: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_strEdu").is(':checked') && value != ''){
		                            		$("#strk").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'strk');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                medic: {
	                    selector: '.medic',
	                    err: '#medic_Err',      
	                    validators: {
	                        notEmpty: {
	                        	message: 'Please Select either Yes(or)No*'
	                        }
	                    }
	                },
	                
	                
	                medicationsTaken: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Option',
		                            callback: function (value, validator) {
		                            	if($(".btn_medic").is(':checked') && value != ''){
		                            		$("#medic").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'medic');
		                            		return true;		                            		
		                            	}else
		                            		return false;
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                
	                
	                occupExp: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                physioExp: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                speecExp: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                bladerExp: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                deepVExp: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                swalloExp: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                endovIntTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                
	                
	                carotidSteIntTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                carotidIntTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                hematIntTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                cranIntTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                diabeticAgentsDur: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                thrombolyticSymDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	   
	                
	                loweringDrugsDur: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                hypertensiveDrugsDur: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                
	                height: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                antiplateletsDur: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                antiplateletsSpe: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                weight: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be blank'
	                        }
	                    }
	                },
	                
	                firstStrsympdate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                
	                firstCTbrainDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	               /* firstCTbrainTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                
	                sympt_onset: {
	                    selector: '.sympt_onset',
	                    err: '#symptErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".sympt_onset").is(":checked")){
	                            		$("#sympt_onsetErr").hide();
	                            		return true;
	                            	}else{
	                            		$("#sympt_onsetErr").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                clinc_fin: {
	                    selector: '.clinc_finding',
	                    err: '#clincErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".clinc_finding").is(":checked")){
	                            		$("#clin_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#clin_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	           
	                basisDiag: {
	                    selector: '.basisOfDiag',
	                    err: '#basErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".basisOfDiag").is(":checked")){
	                            		$("#basisofD_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#basisofD_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                thrombTre: {
	                    selector: '.thromblTear',
	                    err: '#thromErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".thromblTear").is(":checked")){
	                            		$("#thromblyTrea_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#thromblyTrea_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                compThrom: {
	                    selector: '.compThrom',
	                    err: '#compthromErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".compThrom").is(":checked")){
	                            		$("#compThrom_Err").hide();
	                            		$(".compThrom_Err").css('color', '#131e22');
	                            		return true;
	                            	}else{
	                            		$("#compThrom_Err").show();
	                            		$(".compThrom_Err").css('color', 'red');
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                typOfst: {
	                    selector: '.typOfst',
	                    err: '#typeOfErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".typOfst").is(":checked")){
	                            		$("#typOfst_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#typOfst_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                
	                funcStat: {
	                    selector: '.funcStat',
	                    err: '#funcErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".funcStat").is(":checked")){
	                            		$("#funcStat_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#funcStat_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                day28Af: {
	                    selector: '.day28Af',
	                    err: '#day28AfErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".day28Af").is(":checked")){
	                            		$("#day28Af_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#day28Af_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                
	                at3mAf: {
	                    selector: '.at3mAf',
	                    err: '#at3mAfErr',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose at least one checkbox'
	                        },
	                        callback: {	                           
	                            callback: function (value, validator) {	                            	
	                            	if($(".at3mAf").is(":checked")){
	                            		$("#at3mAf_Err").hide();
	                            		return true;
	                            	}else{
	                            		$("#at3mAf_Err").show();
	                            	}	                          
	                                		                                
	                                return false;
	                            }
	                        }
	                    }
	                },
	                
	                dateOfnewStroke: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be empty'
	                        }
	                    }
	                },
	                
	                hemicIntTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'cannot be empty'
	                        }
	                    }
	                },
	                
	                imagingFind1: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Imaging Findings can not be empty'
	                        }
	                    }
	                },
	                
	                
	                
	                
	                mriBrainDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	              /*  mriBrainTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                imagingFind2: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Imaging Findings can not be empty'
	                        }
	                    }
	                },
	                
	                angioCTDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	              /*  angioCTTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                imagingFind3: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Imaging Findings can not be empty'
	                        }
	                    }
	                },
	                
	                
	                perfusionDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	              /*  perfusionTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                imagingFind4: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Imaging Findings can not be empty'
	                        }
	                    }
	                },
	                
	                angioMRIDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	              /*  angioMRITime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                imagingFind5: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Imaging Findings can not be empty'
	                        }
	                    }
	                },
	                
	                carotidDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                /*carotidTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                
	                
	                ecgDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	              /*  ecgTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                
	                tteDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                /*tteTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                
	                transesopaghealDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	               /* transesopaghealTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                
	                reportInstDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	               /* reportInstTime: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },*/
	                immediate1: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                immediate2: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left blank'
	                        }
	                    }
	                },
	                
	                nameOFPerson: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                
	                firstEver: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                
	                typeOfStroke1: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                
	                territoryAffected: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                etiology: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                riskFactorandMorbidities: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                newStrokeEvent: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	           /*     icdDesc1: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                icdCode1: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },*/
	               dateOfDisch: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select the Date'
	                        }
	                    }
	                },
	                patientAdmitted: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                
	                dis: {
	                    selector: '.dis',
	                    err: '#dis_err',      
	                    validators: {
	                        notEmpty: {
	                            message: 'Please choose *'
	                        }
	                    }
	                },
	                
	                
	                discharge: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Gender',
		                            callback: function (value, validator) {
		                            	if($(".vit_sta").is(':checked') && value != ''){		                            		
		                            		$("#dis").val("yes");
		                            		$('#myForm').bootstrapValidator('revalidateField', 'dis');
		                            		return true;		                            		
		                            	}else	
		                            		return false;
		                            		//$("#rankSc_Err").show();
		                            	
		                            	return false;
		                            }
	                    	}
	                    }
	                },
	                antecedentCause1: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                antecedentCause2: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                otherContributing1: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                otherContributing2: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                incdRegnum: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	             // Range Checks
					consciousnessLevel : {
						validators : {
							callback : {
								message : 'Range : 0-3',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 3)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					quesOfLOC : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					commLOC : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					bestGaze : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					visualFeilds : {
						validators : {
							callback : {
								message : 'Range : 0-3',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 3)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					palsy : {
						validators : {
							callback : {
								message : 'Range : 0-3',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 3)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					motorArm : {
						validators : {
							callback : {
								message : 'Range : 0-4',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 4)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					motorLeg : {
						validators : {
							callback : {
								message : 'Range : 0-4',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 4)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					limbAtaxia : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					sensory : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					bestLang : {
						validators : {
							callback : {
								message : 'Range : 0-3',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 3)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					dysarthria : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					inattention : {
						validators : {
							callback : {
								message : 'Range : 0-2',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 2)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},

					scoreOfNIHSS : {
						validators : {
							callback : {
								message : 'Range : 0-42',
								callback : function(
										value,
										validator) {
									if (value >= 0
											&& value <= 42)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},
					
					//=============================================================
					
	

				}
			})
	        // Called when a field is invalid
	        .on('error.field.bv', function(e, data) {
	            // data.element --> The field element

	            var $tabPane = data.element.parents('.tab-pane'),
	                tabId    = $tabPane.attr('id');

	            $('a[href="#' + tabId + '"][data-toggle="tab"]')
	                .parent()
	                .find('i')
	                .removeClass('fa-check')
	                .addClass('fa-times');
	        })
	        // Called when a field is valid
	        .on('success.field.bv', function(e, data) {
	            // data.bv      --> The BootstrapValidator instance
	            // data.element --> The field element
	        	
	            var $tabPane = data.element.parents('.tab-pane'),
	                tabId    = $tabPane.attr('id'),
	                $icon    = $('a[href="#' + tabId + '"][data-toggle="tab"]')
	                            .parent()
	                            .find('i')
	                            .removeClass('fa-check fa-times');

	            // Check if the submit button is clicked
	            if (data.bv.getSubmitButton()) {
	                // Check if all fields in tab are valid
	            	data.bv.disableSubmitButtons(false);
	                var isValidTab = data.bv.isValidContainer($tabPane);
	                $icon.addClass(isValidTab ? 'fa-check' : 'fa-times');
	            }
	        });
	    
	});
 

 