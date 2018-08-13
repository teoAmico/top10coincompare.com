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

    <title>Top 10 Coin Compare</title>
  </head>
  <body>
    <h1>Top 10 Coin Compare Homepage</h1>


	<!-- Footer -->
	<div>
      &copy; <fmt:formatDate value="${date}" pattern="yyyy" /> Top10CoinCompare
    </div>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  </body>
</html>