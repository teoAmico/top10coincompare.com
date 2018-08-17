<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" >
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" >
 	
<title>Top 10 Coin Compare - FAQ</title>
</head>
<body>
<div class="container" id="main-container">
		<!--  Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div>
		<h3>Frequently Asked Questions</h3>
		<br/>
		<div>
			<h5>What is "Top 10 Coin Compare"?</h5>
			<p>"Top 10 Coin Compare" helps you to compare any cryptocurrency price, x return, 24h volume  and your holdings 
			in top 10 crytocurrency position.</p>
			<h5>How "Compare your selected coin price (USD)" are calculated?</h5>
			<p>Your selected coin price for each top 10 position is equals to : "Top Market Cap (USD)" / "Your selected coin circulating supply" </p>
			<h5>How "X Return" are calculated?</h5>
			<p></p>
			<h5>How "Compare your selected coin Volume 24h %" are calculated?</h5>
			<p></p>
			<h5>How "Your selected coin Holdings" are calculated?</h5>
			<p></p>
			<h5>How "Market Share" are calculated?</h5>
			<p></p>
			<h5>In what time zone is the site based?</h5>
			<p></p>
			<h5>Who is the data provider?</h5>
			<p></p>
			<h5>When data are updated?</h5>
			<p></p>
			<h5>Am I allowed to use content of this website for any commercial use?</h5>
			<p></p>
		</div>
		<a href="${pageContext.request.contextPath}">Back</a>
		</div>
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
</div>		
</body>
</html>