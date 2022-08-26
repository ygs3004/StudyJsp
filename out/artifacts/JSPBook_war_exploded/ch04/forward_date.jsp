<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! LocalDateTime now = LocalDateTime.now(); %>
	<p>오늘의 날짜 및 시간
	<p><%=now.format(DateTimeFormatter.ofPattern("yyyy. MM. dd. a HH:MM:ss"))%>
</body>
</html>	