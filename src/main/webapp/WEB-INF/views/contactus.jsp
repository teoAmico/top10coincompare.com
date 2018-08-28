<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="metadata.jsp"></jsp:include>
	<jsp:include page="analytics.jsp"></jsp:include>
	<jsp:include page="common-res-header.jsp"></jsp:include>
<title>Top 10 Coin Compare - Contact Us</title>
</head>
<body>
<div class="container" id="main-container">
		<!--  Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div>
		<h3>Contact Us</h3>
		<div>
		<h5>Need help with Top 10 Coin Compare?</h5>
			<p>
			  Here's how to get in touch with us! Check out our FAQ page for answers to frequently asked questions. 
			  If you can’t find an answer there then reach out to us on twitter or via email <a href="mailto:support@top10coincompare.com">support@top10coincompare.com</a> 
			</p>
		</div>
		<a href="${pageContext.request.contextPath}/">Back</a>
		</div>
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
</div>		
</body>
</html>