<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
<!doctype html>
<html lang="en">
  <head>
    <jsp:include page="metadata.jsp"></jsp:include>
    <jsp:include page="analytics.jsp"></jsp:include>
    <jsp:include page="common-res-header.jsp"></jsp:include>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.typeahead.min.css" >
    <title>Top 10 Coin Compare</title>
  </head>
  <body>
	<div class="container" id="main-container">
		<!--  Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- Search -->
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
			 		<div class="col-4" style="line-height:1">
			 			<input  class="form-control"  type="number" placeholder="Holdings (Qty)" name="holding" step="any" />
			 			<small  style="font-size:10px;">(Optional)</small>
			 		</div>
			 		<div class="col">
			 			<input  class="btn btn-primary"  type="submit" value="Compare"/>
			 		</div>
		 		</div>
		 		<input type="hidden" name="ref" value="" id="coin-ref"/>
		 	</form>
		</div>
		<!--  Results -->
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
							<td>
								<fmt:formatDate value="${coin_last_update}" pattern="dd MMM  yyyy hh:mm:ss" />
							</td>
						</tr>
					</tbody>
			  </table>
			</div>
			<div style="min-height: 85px;background-color: #DCDCDC;padding:10px;">
				<label><b>Best Bitcoin Exchanges:</b></label>
				<h5><a href="https://www.coinbase.com/join/5a398762eeb6a901b9d7870e" target="blank"">Coinbase.com</a></h5>
				<h5><a href="https://www.binance.com/?ref=15322857" target="blank"">Binance.com</a></h5>
				<h5><a href="https://www.kucoin.com/#/?r=7K8JeH" target="blank"">Kucoin.com</a></h5>
				<div class="text-right">
					<small style="font-size:10px"><i>Sponsored links</i></small>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Top Coin</th>
							<th>Top Coin Market Cap (USD)</th>
							<th>Top Coin Price (USD)</th>
							<th>Top Coin Volume 24h (USD)</th>
							<th>Compare <c:out value="${coin_symbol}"/> Price (USD)</th>
							<th>X Return</th>
							<th>Compare <c:out value="${coin_symbol}"/> Volume 24h %</th>			
							<th><c:out value="${coin_symbol}"/> Holdings (USD)</th>
							<th>Market Share %</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="top_coin" items="${top_coins}">
							<tr>
								<td>${top_coin[0]}</td>
								<td>${top_coin[1]}</td>
								<td><fmt:formatNumber value="${top_coin[2]}" type="currency" currencySymbol=""/></td>
								<td><fmt:formatNumber value="${top_coin[3]}" type="currency" currencySymbol=""/></td>
								<td><fmt:formatNumber value="${top_coin[4]}" type="currency" currencySymbol="" maxFractionDigits="0"/></td>
								<td><fmt:formatNumber value="${top_coin[5]}" type="currency" currencySymbol=""/></td>
								<td>x<fmt:formatNumber type="number" maxFractionDigits="0" value="${top_coin[6]}"/></td>
								<td><fmt:formatNumber type="number" maxFractionDigits="2" value="${top_coin[7]}"/></td>
								<td><fmt:formatNumber value="${top_coin[8]}" type="currency" currencySymbol=""/></td>
								<td><fmt:formatNumber type="number" maxFractionDigits="2" value="${top_coin[9]}" /></td>
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
		<jsp:include page="footer.jsp"></jsp:include>
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