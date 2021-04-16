/**
 * 
 */


jQuery(function() {
		//Suggestion: You can add this so that when user clicks on the radio btn, it will fucos on the textbox
		jQuery('input:radio[name=srchFrm]').click(function() {
			jQuery('#name input').focus();
		});
	});
	

	$(document.body).on("keydown", this, function (event) {
	    if (event.keyCode == 116) {	    		    
	    	window.location.href = "/searchTable";
	    }
	});
	
	$(function() {
		$('.dat').mask("99-99-9999", {
			placeholder : 'DD-MM-YYYY'
		});
	});
	
	
	$(function(){
		$("input[name='srchFrm']").click(function(){
			$(".table").empty();
			$( "#srchForm" ).datepicker( "option", "disabled", true );
			if($("input[name='srchFrm']").is(":checked")){
				var selVal = $("input[name='srchFrm']:checked").val();	
				$('input[type="text"]').val('');			
				
				if(selVal == "1"){
					$("#id2,#id3,#id4,.id5").addClass("hide");					
					$("#id").removeClass("hide");	
					$("#id").focus();
				}else if(selVal == "2"){										
					$("#id,#id3,#id4,.id5").addClass("hide");		
					$("#id2").removeClass("hide");
					$("#id2").focus();
				}else if(selVal == "3"){										
					$("#id,#id2,#id4,.id5").addClass("hide");
					$("#id3").removeClass("hide");
					$("#id3").focus();
				}else if(selVal == "4"){					
					$("#id,#id2,#id3,.id5").addClass("hide");					
					$("#id4").removeClass("hide");					
					$("#id4").focus();					
				}else if(selVal == "5"){										
					$("#id,#id2,#id3,#id4").addClass("hide");					
					$(".id5").removeClass("hide");
					$("#id5").focus();
				}
					
			}
		});
		
		$('input[type="text"]').bind("keyup focusout", function () {	
			var srcVal = $(this).val();	
			if(srcVal != ""){
				$("#bt2").prop("disabled",false);
			}
		});
		
		
	
	});
	
	$(document).ready(function(){
		$("#id").on('input', function() {			
		    var $this = $(this);	   
		    if(this.value.match(/[`~!@#$%^&*()_|+\-=?;:'",.a-zA-Z<>\{\}\[\]\\\/]/g)){
		        this.value=this.value.replace(/[`~!@#$%^&*()_|+\-=?;:'",.a-zA-Z<>\{\}\[\]\\\/]/g,'');
		      }
		});
		
		$('#id2').on('input', function() {
		    var $this = $(this);	   
		    if(this.value.match(/^[`~!%^&@$*_|+=;'"<>]+$/)){
		        this.value=this.value.replace(/^[`~!%^&@$*_|+=;'"<>]+$/,'');
		      }
		});
	});
	
	
	//--------------------------------------------------------------------------------
	
	$(function() {
		var date = new Date();
		var currentMonth = date.getMonth();
		var currentDate = date.getDate();
		var currentYear = date.getFullYear();
		
		
		$("#id5").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,
			   onSelect: function(){
			        $('#id6').datepicker('option', 'minDate', $("#id5").datepicker("getDate"));
			    },
			onClose : function() {
				$("#id5").datepicker("destroy");
				this.focus()
			}
		});

		$(".id5icn").click(function() {			
			$("#id5").datepicker({
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				   onSelect: function(){
				        $('#id6').datepicker('option', 'minDate', $("#id5").datepicker("getDate"));
				    },
				onClose : function() {					
					$("#id5").datepicker("destroy");
					this.focus();
					
				}
			}).focus();
		});
		
		//---------------------------
		
		$("#id6").datepicker({
			dateFormat : 'dd-mm-yy',
			yearRange : '1930:2099',
			maxDate : new Date(currentYear, currentMonth, currentDate),
			showButtonPanel : false,
			changeMonth : true,
			changeYear : true,
			loseText : 'Clear',
			gotoCurrent : true,			
			onClose : function() {
				$("#id6").datepicker("destroy");
				this.focus();
			}
		});

		$(".id6icn").click(function() {
			$("#id6").focus();
			$("#id6").datepicker({
				dateFormat : 'dd-mm-yy',
				yearRange : '1930:2099',
				maxDate : new Date(currentYear, currentMonth, currentDate),
				showButtonPanel : false,
				changeMonth : true,
				changeYear : true,
				loseText : 'Clear',
				gotoCurrent : true,
				onClose : function() {
					$("#id6").datepicker("destroy");
					this.focus();
				}
			});
		});
	});
	
	
	//-------------------
	
	
	$(function() {
		var form = document.forms['hidingSuccessForm']
		$(".dat").on(
				'focusout',
				function() {
					var txtVal = $(this).val();
					var id = this.id;
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
					if (parseInt(txtVal.substring(6, 10)) < parseInt(1900)) {

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

		return true;
	}