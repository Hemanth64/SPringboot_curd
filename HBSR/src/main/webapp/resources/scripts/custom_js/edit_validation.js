/**
 * 
 */


$(function(){
	 $("#ModifyBtn").click(function(){
		 $("#myForm :input").attr("disabled", false);
		 $("#ModifyBtn").attr("disabled", true);
		 allFnList();
	 });
});


function allFnList(){
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
	 }
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
		}
		
	
		
		//-----sl 9 fun-----------------
		enable();			
		//-----sl 10 other specify fun-------------------------
		enable1();			
		//-----sl 11.4 other specify fun-------------------------
		enable2();
		//-----sl 11.6 other specify fun-------------------------
		enable3();				
		//-----sl 13 fun-------------------------
		showHideInfo3();			
		//-----sl 16 fun-------------------------			
		enable4();			enable5();			enable6();			enable7();			enable8();
		enable37();enable38();enable39();enable40();
		
		//-----sl 17 fun-------------------------
		enable78();
		//-----sl 18 fun-------------------------
		enable9();
		//-----sl 19 fun-------------------------
		enable74();
		//-----sl 21.1 fun-------------------------
		enable75();
		//-----sl 24 fun-------------------------
		enable17();enable42();enable44();enable46();enable48();enable50();enable52();enable54();
		enable56();enable58();enable60();enable62();enable64();enable66();enable68();enable70();enable72();
		hemogl_radioFn();
		//----------sl 26 fun----------------------------			
		enable18();enable19();enable20();enable21();
		//----------sl 26.1 fun----------------------------	
		enable22();
		//----------sl 27.1 fun----------------------------
		enable10();
		//----------sl 28.1 fun----------------------------
		enable24();enable25();enable26();enable27();
		//----------sl 29 fun----------------------------
		enable79();enable80();enable81();enable82();enable83();enable84();
		//----------sl 30.4 fun----------------------------
		enable11();enable12();enable13();enable14();enable15();enable16();
		//----------sl 31.1 fun----------------------------
		enable30();
		//----------sl 34 fun----------------------------
		enable32();	
		//----------sl 38 fun At day 28 / At 3 months after onset of stroke and ----------------------------
		enable33();enable34();
		//----------sl 39 fun  ----------------------------
		enable35();enable36();
		//-------------------------------------------------------------------------
}