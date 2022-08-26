<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<p> 아이디 : <%=request.getParameter("id") %>
		<%
			String name = request.getParameter("name");
		%>
	</p> 이름 : <%=java.net.URLDecoder.decode(name,"UTF-8")%>
</body>
</html>