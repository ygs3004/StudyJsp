<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<%
		for(int i=1; i<=9; i++){
	%>
		<%=request.getParameter("number")+" * "+i+"="+i*Integer.parseInt(request.getParameter("number"))%>
		<br>
	<%		
		}
	%>
</body>
</html>