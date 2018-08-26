<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="metadata.jsp"></jsp:include>
	<jsp:include page="analytics.jsp"></jsp:include>
	<jsp:include page="common-res-header.jsp"></jsp:include>	
	<title>Top 10 Coin Compare - Donate</title>
</head>
<body>
<div class="container" id="main-container">
		<!--  Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div>
		<h3>Donations</h3>
		<h6>Helps us to keep online this webiste even a small contributions would be appreciated.</h6>
		<div style="margin-bottom:30px;">
			<p><i>Bitcoin (BTC) Wallet Address:</i> <b>3EhfxrARMajgCSGX3NSEYQXHD967Xb669Y</b></p>
			<p><i>Bitcoin Cash (BTH) Wallet Address:</i> <b>qza5evfnk94axvxu7z86uh6u97y3gcrjcv79863fce</b></p>
			<p><i>Litecoin (LTC) Wallet Address:</i> <b>MMYn2btqFBx44cbdsoRBPACcpY5iEsBTA1</b></p>
			<p><i>Ethereum  (ETH)  or  Ethereum based tokens Wallet Address:</i> <b>0x1C160036028E901436f1E1d4441C30E8371A2016</b></p>
			
		</div>
		<h4>Thank you for your contributions to this project!.</h4>
		<a href="${pageContext.request.contextPath}">Back</a>
		</div>
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
</div>		
</body>
</html>