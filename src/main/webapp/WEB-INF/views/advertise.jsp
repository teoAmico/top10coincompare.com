<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" >
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" >
 	
<title>Top 10 Coin Compare - Advertise</title>
</head>
<body>
<div class="container" id="main-container">
		<!--  Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div>
		<h3>Advertise</h3>
		<div>
			<h5>Would you like to advertise on Top10CoinCompare.com?</h5>
			<p>Please send us a request via email with as much details as possible to <a href="mailto:advertise@top10coincompare.com">advertise@top10coincompare.com</a>.</p>
		</div>
		<a href="${pageContext.request.contextPath}">Back</a>
		</div>
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
</div>		
</body>
</html>