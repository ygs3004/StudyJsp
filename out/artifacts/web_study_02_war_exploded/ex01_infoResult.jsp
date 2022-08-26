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
		String name = request.getParameter("id");
		String password = request.getParameter("pwd");
		String desc = request.getParameter("desc");
	%>
	
입력한 정보는 아래와 같습니다.<br>
ID : <%=name %><br>
PassWord : <%=password %><br>
자기 소개 : <%=desc %>
</body>
</html>