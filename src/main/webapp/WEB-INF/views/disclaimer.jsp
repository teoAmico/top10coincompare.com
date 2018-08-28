<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="metadata.jsp"></jsp:include>
	<jsp:include page="analytics.jsp"></jsp:include>
	<jsp:include page="common-res-header.jsp"></jsp:include>	
	<title>Top 10 Coin Compare - Disclaimer</title>
</head>
<body>
<div class="container" id="main-container">
		<!--  Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div>
			<div>
				<h3>Disclaimer</h3>
			</div>
			<div>
				<h5>No Investment Advice</h5>
				<p>The information provided on this website does not 
				constitute investment advice, financial advice, 
				trading advice, or any other sort of advice and 
				you should not treat any of the website's content as such. 
				Top 10 Coin Compare does not recommend that any cryptocurrency 
				should be bought, sold, or held by you. 
				Do conduct your own due diligence and consult your financial advisor 
				before making any investment decisions.</p>
			</div>
		<a href="${pageContext.request.contextPath}/">Back</a>
		</div>
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
</div>		
</body>
</html>