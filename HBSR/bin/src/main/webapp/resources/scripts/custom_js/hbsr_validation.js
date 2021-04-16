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
	                            message: 'Name of Paitient can not be blank'
	                        }
	                    }
	                },
	                division: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Mandatory'
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
	                        }
	                    }
	                },
	                durationStay: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Enter Duration of Stay'
	                        }
	                    }
	                },
	                age: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Mandatory'
	                        }
	                    }
	                },
	                dob: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Enter Proper DateOfBirth'
	                        }
	                    }
	                },
	            
	        
	               sex: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Gender',
		                            callback: function (value, validator) {
		                            	if($(".btn_sex").is(':checked') && value != ''){
		                            		$("#sex_Err").hide();
		                            		return true;		                            		
		                            	}else
		                            		$("#sex_Err").show();
		                            	
		                            	return false;
		                            }
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
	                firstStrsymptime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
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
	                firstCTbrainTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
	                
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
	                mriBrainTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
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
	                angioCTTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
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
	                perfusionTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
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
	                angioMRITime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
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
	                carotidTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
	                
	                
	                ecgDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                ecgTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
	                
	                tteDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                tteTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
	                
	                transesopaghealDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                transesopaghealTime: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
	                
	                reportInstDate: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Select Date'
	                        }
	                    }
	                },
	                reportInstTime: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'Select Time'
	                        }
	                    }
	                },
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
	                icdDesc1: {
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
	                },
	                patientAdmitted: {
	                    validators: {	
	                        notEmpty: {
	                            message: 'cannot be left  blank'
	                        }
	                    }
	                },
	                
	                discharge: {
	                    validators: {
	                    	callback :{
	                    		 message: 'Select Gender',
		                            callback: function (value, validator) {
		                            	if($(".vit_sta").is(':checked') && value != ''){		                            		
		                            		return true;		                            		
		                            	}
		                            	
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
					
					durationStay : {
						validators : {
							callback : {
								message : 'Range : 1-98',
								callback : function(
										value,
										validator) {
									if (value >= 1
											&& value <= 98)
										return true;
									else if (value === '')
										return true;

									return false;
								}
							}
						}
					},

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
 