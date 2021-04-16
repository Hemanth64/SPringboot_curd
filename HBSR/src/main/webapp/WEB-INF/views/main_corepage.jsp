<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HBSR DataEntryForm</title>


  

<jsp:include page="include/head1.jsp" />






</head>
<body>

	<div class="container">
	<header>
		<jsp:include page="include/title.jsp" />
		<jsp:include page="include/sidenav.jsp" />	
	</header>
	




	<%-- <div class="page-header ">					
			<div class="row">
					<div class="col-md-4">						
							<h5 class="text-primary"> HBSR - Coreform</h5>			
					</div>					
					<div class="col-md-4 text-center" style="font-size:15px; color:red;">						
							<span  id="date_time" ></span>			
					</div>	
					<div class="col-md-4 text-right"><h5><span class="text-primary">Logged in as :</span> <span class="text-success"> ${loggedinuser}</span></h5></div>					
			 </div>							
	</div> --%>
			

		<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">

			<div class="wizard-content">
				<form:form class="tab-wizard wizard-circle wizard"
					action="coreformSuccess" modelAttribute="coreform" id="myForm"
					autocomplete="off" method="POST">

					
				 <div class="row">
						    <div class="col-sm-5" >
						    	<label><font style="padding-left: 22px; color: red">Ref.No:${ref}${CoreObject.refeNum}</font></label>
						    </div>
						    <div class="col-sm-5 text-right"><h5><span class="text-primary">Logged in as :</span> <span class="text-success"> ${loggedinuser}</span></h5></div>
						   
						 
						    <div class="col-sm-2">
						    <button class="btn btn-warning btn-lg previous" type="button" id="previous2">
							    <i class="fa fa-chevron-left fa-1x" aria-hidden="true"></i>
							</button>&nbsp;
							   <button class="btn btn-primary btn-lg next" type="button" id="Next2">
							    <i class="fa fa-chevron-right fa-1x" aria-hidden="true"></i>
							</button>								
								
						    
						    </div>
					  </div>
					  
					
				
			 	<ul class="nav nav-tabs" id="myTab">
    				<li class="nav-item active">
    					<a class="nav-link active" href="#menu1" data-toggle="tab">Page1 <i class="fa"></i></a>
    				</li>
    				<li class="nav-item"><a class="nav-link" href="#menu2" data-toggle="tab">Page2 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu3" data-toggle="tab">Page3 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu4" data-toggle="tab">Page4 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu5" data-toggle="tab">Page5 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu6" data-toggle="tab">Page6 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu7" data-toggle="tab">Page7 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu8" data-toggle="tab">Page8 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu9" data-toggle="tab">Page9 <i class="fa"></i></a></li>
    				<li class="nav-item"><a class="nav-link" href="#menu10" data-toggle="tab">Page10 <i class="fa"></i></a></li>
				</ul> 

					  

					  
				
  <form:hidden path="refeNum" value="${ref}${CoreObject.refeNum}" />
  
    <!-- Tab panes -->
  <div class="tab-content">
    <div id="menu1" class="container tab-pane active"><br>      							
									<section>
										<%@include file="CorePage1.jsp"%>
									</section>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>   						 
								<section>
									<jsp:include page="CorePage2.jsp" />
								</section>
    </div>
    <div id="menu3" class="container tab-pane fade"><br>      							
										<section>
											<jsp:include page="CorePage3.jsp" />
										</section>
    </div>
    
       	<div id="menu4" class="container tab-pane fade"><br>      							
										<section>
											<jsp:include page="CorePage4.jsp" />
										</section>
    	</div>
    	<div id="menu5" class="container tab-pane fade"><br>      							
				<section>
					<jsp:include page="CorePage5.jsp" />
				</section>
    	</div>
    	   	<div id="menu6" class="container tab-pane fade"><br>      							
				<section>
					<jsp:include page="CorePage6.jsp" />
				</section>
    		</div>
    	   	<div id="menu7" class="container tab-pane fade"><br>      							
				<section>
					<jsp:include page="CorePage7.jsp" />
				</section>
    		</div>
    	   	<div id="menu8" class="container tab-pane fade"><br>      							
				<section>
					<jsp:include page="CorePage8.jsp" />
				</section>
    		</div>
    	   	<div id="menu9" class="container tab-pane fade"><br>      							
				<section>
					<jsp:include page="CorePage9.jsp" />
				</section>
    		</div>
    	   	<div id="menu10" class="container tab-pane fade"><br>      							
				<section>
					<jsp:include page="CorePage10.jsp" />
				</section>
    	</div>
  </div>
  <div class="hide">
  		<input type="text" name="saveState">
  		<input type="text" name="editFrom" value="${edit}"/>
  </div>
  
  <br>		
<hr>

					<form:hidden class="form-control " id="data_en_status"
						path="status" value="" />					
			
					
					  <div class="row">
						    <div class="col-sm-3" >
						    	<input class="btn btn-outline-success  btn-lg btn-block"	type="submit" value="Submit" id="fs" name="FSave">
						    </div>
						    <div class="col-sm-3" style="background-color:lavenderblush;">
						    	<input class="btn btn-outline-primary btn-lg btn-block" type="submit" value="Save Draft" id="ps" name="FDraft">
						    </div>
						    <div class="col-sm-3" >						    
						    	<input class="btn btn-outline-success btn-lg btn-block hide" type="button" value="Modify" id="ModifyBtn">
						    </div>
						    
						    <div class="col-sm-3">
						    <button class="btn btn-warning btn-lg previous" type="button" id="previous">
							    <i class="fa fa-chevron-left fa-1x" aria-hidden="true"></i>
							</button>
							   <button class="btn btn-primary btn-lg next" type="button" id="Next">
							    <i class="fa fa-chevron-right fa-1x" aria-hidden="true"></i>
							</button>								
								
						    
						    </div>
					  </div>
					


				</form:form>
			</div>
		</div>

		<!-- success Popup html End -->
		<jsp:include page="include/footer.jsp" />
	</div>
	
	<style>
	.hide{
	display: none;
	}
	.has-error{
	color:red;
	}
.errorMsg {
   display:none;        
   color:Red;
}

.page-header{
background-color: lightblue;
padding:10px;
}

.cusDiv{
padding:0px;
}

.italic{
font-style: italic;
}

</style>

	
	<script>

	$(function() {
		$('#ps').click(function() {
			$('#data_en_status').val("P");
			from.submit();
		});
		//-----------------------
		$('#fs').click(function() {
			$('#data_en_status').val("F");
			form.submit();
		});
	})
	
	 
	 $(function(){			
			var data = '${success}';
			var saveStatus = '${saveStatus}';
			
			if(data != "" && saveStatus == "Submit")
				{	
				 $.alert({ 
					 icon: 'fa fa-check-square-o',
						title: 'Success!',
					    content: 'Ref Num : <strong style="font-size: 20px;color:blue;"> ' +'${success}'+'</strong> ',
					   type: 'red',
					    typeAnimated: true,
					    buttons: { 
					        Close: function(){
					        	btnClass: 'btn-red',			        	
					            location.href = "<c:url value='/coreform1' />";
					        },
					    }
					});
				
				}else 	if(data != "" && saveStatus == "SaveDraft")
				{	
					 $.alert({ 
						 icon: 'fa fa-check-square-o',
							title: 'Success!',
						    content: 'Ref Num : <strong style="font-size: 20px;color:blue;"> ' +'${success}'+'</strong> ',
						   type: 'red',
						    typeAnimated: true,
						    buttons: { 
						        Close: function(){
						        	btnClass: 'btn-red';
											$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
												localStorage.setItem('activeTab', $(e.target).attr('href'));
											});
											allFnList();
											var activeTab = localStorage.getItem('activeTab');
											if(activeTab){
												$('#myTab a[href="' + activeTab + '"]').tab('show');
											}
							
						        },
						    }
						});
					
					}
		});
	 
	 $(function(){
		 $('#Next').click(function () {
			    $('.nav-tabs > .nav-item > .active').parent().next('li').find('a').trigger('click');
			    window.scrollTo(0,0);
			});

			$('#previous').click(function () {
			    $('.nav-tabs > .nav-item > .active').parent().prev('li').find('a').trigger('click');
			    window.scrollTo(0,0);
			});
			
			 $('#Next2').click(function () {
				    $('.nav-tabs > .nav-item > .active').parent().next('li').find('a').trigger('click');
				});

				$('#previous2').click(function () {
				    $('.nav-tabs > .nav-item > .active').parent().prev('li').find('a').trigger('click');
				});
				
				
				$("#fs").click(function(){					
					$('input[name="saveState"]').val('Submit');
					
				});
				$("#ps").click(function(){
					$('input[name="saveState"]').val('SaveDraft');	
					
				//	$('#myForm').bootstrapValidator('revalidateField', 'dob');
					
				});
				
	 });
	 
	 $(function(){		
		 if($('input[name="editFrom"]').val() == "Yes"){
			 $("#myForm :input").attr("disabled", true);
			 $("#ModifyBtn").show();
			 $("#ModifyBtn").attr("disabled", false);
		 }
		 
		 //---------------------------
		
			
		
		 
	 });
	
	
	</script>
	
	 <script type="text/javascript">
	 
	 
	
     
	
	$(function(){            	
		date_time('date_time');            	
	});

		
	var d = new Date();
	var fullDate = new Date()
	$("#curDate").html(fullDate.formate('yyyy-MM-dd H:i:s'));

	function date_time(id)
	{
	        date = new Date;
	        year = date.getFullYear();
	        month = date.getMonth();
	        months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'Jully', 'August', 'September', 'October', 'November', 'December');
	        d = date.getDate();
	        day = date.getDay();
	        days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
	        h = date.getHours();
	        if(h<10)
	        {
	                h = "0"+h;
	        }
	        m = date.getMinutes();
	        if(m<10)
	        {
	                m = "0"+m;
	        }
	        s = date.getSeconds();
	        if(s<10)
	        {
	                s = "0"+s;
	        }
	        result = ' '+months[month]+' '+d+' '+year+' '+h+':'+m+':'+s;
	        document.getElementById(id).innerHTML = result;
	        setTimeout('date_time("'+id+'");','1000');
	        return true;
	}
	
	</script> 
	
</body>
</html>