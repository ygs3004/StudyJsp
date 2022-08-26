<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<nav class = "navbar navbar-expand navbar-dark bg-dark">
	<div class = "container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
	</div>
</nav>
<%!
	String tag1="Book market Mall";
	String tag2="Welcome to Book Market";
%>

<div class="jumbotron">
	<div class="container">
		<h1 class ="dispaly-3">
			<%=tag1%>
		</h1>
	</div>
</div>


<div class="container">
	<div class="text-center">
		<h3><%=tag2%></h3>
	</div>
</div>

</body>
</html>