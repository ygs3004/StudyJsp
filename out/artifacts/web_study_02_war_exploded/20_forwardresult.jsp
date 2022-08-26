<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = (String)request.getAttribute("name");
		String age = (String)request.getParameter("age");
	%>
	
	foward 방식으로 이동된 페이지
	나이 : <%=age %> 
	이름 : <%=name %>
	
</body>
</html>