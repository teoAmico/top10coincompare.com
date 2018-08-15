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
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.typeahead.min.css" >
    <title>Top 10 Coin Compare</title>
  </head>
  <body>
	<div class="container" id="main-container">
		<div class="row justify-content-center" id="main-title-container">
			<h1><a href="${pageContext.request.contextPath}" style="text-decoration:none;color: black;">Top 10 Coin Compare</a></a></h1>
		</div>
		<div class="row justify-content-center" id="search-container">
		 	<form action="coin-compare" class="justify-content-center" method="GET">
		 		<div class="form-row">
			 	  	<div class="col-5">
				 	  	<div class="typeahead__container">
					        <div class="typeahead__field">
					            <div class="typeahead__query">
					                <input class="form-control js-typeahead-coin" name="coin" type="search" placeholder="Coin" autocomplete="off">
					            </div>
					        </div>
					    </div>
				    </div>
			 		<div class="col-4">
			 			<input  class="form-control"  type="number" placeholder="Holdings (Qty)" name="holding" step="any"/>
			 		</div>
			 		<div class="col">
			 			<input  class="btn btn-primary"  type="submit" value="Compare"/>
			 		</div>
		 		</div>
		 		<input type="hidden" name="ref" value="" id="coin-ref"/>
		 	</form>
		</div>
		<c:if test="${show_result}">
		<div>
			<small>Results:</small>
			<div class="table-responsive">
			  <table class="table table-striped">
			  		<tbody>
						<tr>
							<th>Global Market Cap (USD):</th>
							<td><fmt:formatNumber value="${global_market_cap}" type="currency" currencySymbol=""/></td>
						</tr>
						<tr>
							<th>Coin:</th>
							<td><c:out value="${coin_name}"/> (<c:out value="${coin_symbol}"/>)</td>
						</tr>
						<tr>
							<th>Total Supply:</th>
							<td><fmt:formatNumber type="number" value="${coin_total_supply}"/></td>
						</tr>
						<tr>
							<th>Circulating Supply:</th>
							<td><fmt:formatNumber type="number" value="${coin_circulating_supply}"/></td>
						</tr>
						<tr>
							<th>Price (USD):</th>
							<td><fmt:formatNumber value="${coin_usd_price}" type="currency" currencySymbol=""/></td>
						</tr>
						<tr>
							<th>Coin Market Cap (USD):</th>
							<td><fmt:formatNumber value="${coin_market_cap}" type="currency" currencySymbol=""/></td>
						</tr>
						<tr>
							<th>Volume 24h (USD):</th>
							<td><fmt:formatNumber value="${coin_usd_volume_24h}" type="currency" currencySymbol=""/></td>
						</tr>
						<tr>
							<th>Holdings (Qty):</th>
							<td>${holdings}</td>
						</tr>
						<tr>
							<th>Holdings (USD):</th>
							<td><fmt:formatNumber value="${coin_usd_holdings}" type="currency" currencySymbol=""/></td></tr>
						<tr>
							<th>Market Share %:</th>
							<td><fmt:formatNumber type="number" maxFractionDigits="2" value="${coin_market_share}"/></td></tr>
						<tr>
							<th>Last Updated:</th>
							<td><c:out value="${coin_last_update}"/></td>
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
							<th>Compare <c:out value="${coin_symbol}"/> Price (USD)</th>
							<th>X Return</th>
							<th>Compare <c:out value="${coin_symbol}"/> Volume 24h %</th>			
							<th>Compare <c:out value="${coin_symbol}"/> Holdings (USD)</th>
							<th>Market Share %</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="top_coin" items="${top_coins}">
							<tr>
								<td>${top_coin[0]}</td>
								<td>${top_coin[1]}</td>
								<td>${top_coin[2]}</td>
								<td>${top_coin[3]}</td>
								<td>${top_coin[4]}</td>
								<td>${top_coin[5]}</td>
								<td>${top_coin[6]}</td>
								<td>${top_coin[7]}</td>
								<td>${top_coin[8]}</td>
								<td>${top_coin[9]}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
		</div>
		<div class="text-right">
			<a href="javascript:window.scrollTo(0,0);" >Back Top</a>
		</div>
		</c:if>
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
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.typeahead.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  </body>
</html>