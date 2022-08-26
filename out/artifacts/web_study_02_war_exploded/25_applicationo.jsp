<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		1. 서버정보 : <%=application.getServerInfo() %><br>
		2. 서블릿 API 버젼 정보 : <%=application.getMajorVersion()+"."+application.getMinorVersion() %>
		3. 25_application.jsp 파일의 실제 경로 : <%=application.getRealPath("25_application.jsp") %><br><br>

		setAttribute로 userName 변수에 "홍길동" 설정<br>
	
		<%
			application.setAttribute("userName","홍길동");	
			application.setAttribute("count",1);
		%>	
		<a href="26_applicationresult.jsp">확인하기</a>;
	</div>
</body>
</html>