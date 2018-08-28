<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="metadata.jsp"></jsp:include>
	<jsp:include page="analytics.jsp"></jsp:include>
	<jsp:include page="common-res-header.jsp"></jsp:include> 	
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
			in the top 10 cryptocurrency position in the global market.</p>
			<h5>How "Compare <i>your selected coin</i> price (USD)" is calculated?</h5>
			<p><i>Your selected coin</i> price for each top 10 position is equals to  "Top Market Cap (USD)" divided by "<i>Your selected coin</i> circulating supply" </p>
			<h5>How "X Return" is calculated?</h5>
			<p>X Return is equal to "Compare <i>your selected coin</i> price" divided by "<i>Your selected coin</i> price".</p>
			<h5>How "Compare <i>your selected coin</i> Volume 24h %" is calculated?</h5>
			<p><i>Your selected coin</i> 24h volume times 100 divided by Top coin 24h volume.</p>
			<h5>How "Your selected coin Holdings" is calculated?</h5>
			<p>Your holding quantity times <i>your coin</i> compare price</p>
			<h5>How "Market Share" is calculated?</h5>
			<p>Top coin market cap times 100 divided by Global Market Cap.</p>
			<h5>In what time zone is the site based?</h5>
			<p>The website is based in UK time zone.</p>
			<h5>Who is the data provider?</h5>
			<p>Top 10 Coin compare website is using coinmarketcap.com free public data api.</p>
			<h5>When data are updated?</h5>
			<p>Data on this website are updated about every 10 minutes based on coin search.</p>
			<h5>Am I allowed to use content of this website for any commercial or financial purposes?</h5>
			<p>No, this website it's for educational purpose only, any information available on this site is not allow to be used for any commercial or financial purposes.</p>
		</div>
		<a href="${pageContext.request.contextPath}/">Back</a>
		</div>
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
</div>		
</body>
</html>