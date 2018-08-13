<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" >
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" >
    <title>Top 10 Coin Compare</title>
  </head>
  <body>
	<div class="container" id="main-container">
		<div class="row justify-content-center" id="main-title-container">
			<h1>Top 10 Coin Compare</h1>
		</div>
		<div class="row justify-content-center" id="search-container">
		 	<form class="justify-content-center">
		 		<div class="form-row">
			 	  	<div class="col-6">
			 			<input  class="form-control"  type="text" placeholder="Coin"/>
			 		</div>
			 		<div class="col">
			 			<input  class="form-control"  type="number" placeholder="Holdings" />
			 		</div>
			 		<div class="col">
			 			<input  class="btn btn-primary"  type="submit" value="Compare"/>
			 		</div>
		 		</div>
		 	</form>
		</div>
		<div>
			<small>Results:</small>
			<div class="table-responsive">
			  <table class="table table-striped">
			  		<tbody>
						<tr>
							<th>Global Market Cap (USD):</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Coin:</th>
							<td>&nbsp;NULL</td>
						</tr>
						<tr>
							<th>Total Supply:</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Circulating Supply:</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Price (USD):</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Coin Market Cap (USD):</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Volume 24h (USD):</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Holdings (Qty):</th>
							<td>&nbsp;0</td>
						</tr>
						<tr>
							<th>Holdings (USD):</th>
							<td>&nbsp;0</td></tr>
						<tr>
							<th>Market Share %:</th>
							<td>&nbsp;0</td></tr>
						<tr>
							<th>Last Updated:</th>
							<td>&nbsp;00-00-000</td>
						</tr>
					</tbody>
			  </table>
			</div>
			<div>
			<img width="100%" height="85px" src="${pageContext.request.contextPath}/resources/images/etoro-banner.png"/>
			</div>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Top Coin</th>
							<th>Top Coin Market Cap (USD)</th>
							<th>Top Coin Price (USD)</th>
							<th>Top Coin Volume 24h</th>
							<th>Compare Price (USD)</th>
							<th>X Return</th>
							<th>Compare Volume 24h %</th>			
							<th>Compare Holdings (USD)</th>
							<th>Market Share %</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach begin="1" end="10" varStatus="loop">
						<tr>
							<td>${loop.index}</td>
							<td>Bitcoin</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>x0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-right">
					<a href="#main-container" >Back Top</a>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<div id="footer">
			<div class="row justify-content-center">
				<a href="#" >About</a>&nbsp;|&nbsp;<a href="#" >Terms</a>&nbsp;|&nbsp;<a href="#">Contact Us</a>
			</div>
			<div class="row justify-content-center">
				&copy; <fmt:formatDate value="${date}" pattern="yyyy" /> Top10CoinCompare.com
			</div>
		      
	    </div>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.slim.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/typeahead.bundle.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  </body>
</html>