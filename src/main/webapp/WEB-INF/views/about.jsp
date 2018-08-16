<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" >
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" >
 	
<title>Top 10 Coin Compare - About</title>
</head>
<body>
<div class="container" id="main-container">
		<div class="row justify-content-center" id="main-title-container">
			<h1><a href="${pageContext.request.contextPath}" style="text-decoration:none;color: black;">Top 10 Coin Compare</a></a></h1>
		</div>
		<div>
		<h3>About</h3>
		<div>
			<p>Lorem Ipsum è un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum è considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assemblò per preparare un testo campione. È sopravvissuto non solo a più di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni ’60, con la diffusione dei fogli di caratteri trasferibili “Letraset”, che contenevano passaggi del Lorem Ipsum, e più recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>
		</div>
		<a href="${pageContext.request.contextPath}">Back</a>
		</div>
		<!-- Footer -->
		<div id="footer">
			<div class="row justify-content-center">
				<a href="${pageContext.request.contextPath}/about" >About</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/terms" >Terms</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/contact-us">Contact Us</a>
			</div>
			<div class="row justify-content-center">
				&copy; <fmt:formatDate value="${date}" pattern="yyyy" /> Top10CoinCompare.com
			</div>
		      
	    </div>
</div>		
</body>
</html>