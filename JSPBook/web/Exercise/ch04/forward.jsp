<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h4>구구단출력하기</h4>
	<jsp:forward page="foward_data.jsp">
		<jsp:param value="5" name="number"/>
	</jsp:forward>
</body>
</html>