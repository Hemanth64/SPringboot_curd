<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="include/head1.jsp" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="error-page login-wrap bg-cover height-100-p customscroll d-flex align-items-center flex-wrap justify-content-center pd-20">
		<img src="vendors/images/error-bg.jpg" alt="" class="bg_img">
		<div class="pd-10">
			<div class="error-page-wrap text-center color-white">
				<h1 class="color-white weight-500">Error: 500 Unexpected Error</h1>
				<img src="resources/images/500.png" alt="">
				<p>An error ocurred and your request couldn’t be completed..<br>Either check the URL, <a href="coreform1">go home</a>.</p>
			</div>
		</div>
	</div>
	<jsp:include page="include/script.jsp" />
	
</body>
</html>	