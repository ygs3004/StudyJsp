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
	String appPath = application.getContextPath();
	String filePath = application.getRealPath("24_aplication.jsp");
	String serverInfo = application.getServerInfo();
%>

웹 애플리케이션 컨텍스트 패스명<br>
<b><%=appPath %></b>
웹 어플리케이션 파일 경로명<br>
<b> <%=filePath %></b>
<hr>
<br>컨테이너 이름과 버젼
<b><%=serverInfo %></b>
<b></b>
</body>
</html>