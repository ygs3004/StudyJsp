<%@page import="java.net.URLEncoder"%>
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
	String id="ezenac";
	String pwd="1004";
	String name="나천사";
	
	request.setCharacterEncoding("UTF-8");
	
	if(id.equals(request.getParameter("id"))
				&& pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("17_main.jsp?name="+URLEncoder.encode(name, "UTF-8"));
	}else{
		response.sendRedirect("15_loginform.html");
	}
%>
</body>
</html>