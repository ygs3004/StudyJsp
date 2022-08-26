<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

<%@ include file="menu.jsp" %>

<%!
	String greeting="도서 웹 쇼핑몰";
	String tagline="Welcome to web Market";
%>

<div class="jumbotron">
	<div class="container">
		<h1 class ="dispaly-3">
			<%=greeting%>
		</h1>
	</div>
</div>

<div class="container">
	<div class="text-center">
		<h3><%=tagline%></h3>
	</div>
</div>



<%@ include file="footer.jsp" %>

</body>
</html>