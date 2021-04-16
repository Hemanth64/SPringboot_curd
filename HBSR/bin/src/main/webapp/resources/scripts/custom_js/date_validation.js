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
			$('#myForm').bootstrapValidator('revalidateField', 'diagOfStroke');
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
				$('#myForm').bootstrapValidator('revalidateField', 'diagOfStroke');
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
					$('#myForm').bootstrapValidator('revalidateField',
							'patlastseendate');
					this.focus()
				}
			});

	$("#lsdate").click(
			function() {
				$("#lsdate").datepicker(
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
										'revalidateField', 'patlastseendate');
								this.focus()
							}
						});
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
					$('#myForm').bootstrapValidator('revalidateField',
							'onsetstrokedate');
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
								$('#myForm').bootstrapValidator(
										'revalidateField', 'onsetstrokedate');
								this.focus()
							}
						});
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
			$('#myForm').bootstrapValidator('revalidateField', 'aarivaldate');
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
								$('#myForm').bootstrapValidator(
										'revalidateField', 'aarivaldate');
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
					$('#myForm').bootstrapValidator('revalidateField',
							'historyTIAdate');
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
								$('#myForm').bootstrapValidator(
										'revalidateField', 'historyTIAdate');
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
					$('#myForm').bootstrapValidator('revalidateField',
							'firstCTbrainDate');
					this.focus()
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
								$('#myForm').bootstrapValidator(
										'revalidateField', 'firstCTbrainDate');
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
$(function() {
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

});


//---------------------------------------------------------------------------------------------


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
					$('#myForm').bootstrapValidator('revalidateField',
							'actDateOfFollDate1');
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
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'actDateOfFollDate1');
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
					$('#myForm').bootstrapValidator('revalidateField',
							'actDateOfFollDate2');
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
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'actDateOfFollDate2');
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
					$('#myForm').bootstrapValidator('revalidateField',
							'dateOfDeath1');
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
								$('#myForm').bootstrapValidator(
										'revalidateField',
										'dateOfDeath1');
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
			$('#myForm').bootstrapValidator('revalidateField', 'dateOfComple');
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
				$('#myForm').bootstrapValidator('revalidateField', 'dateOfComple');
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