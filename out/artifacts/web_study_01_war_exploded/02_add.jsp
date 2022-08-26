<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	자바 명령어로 덧셈 연산<br>
	scriptlet(스크립트릿)<br>
	<%
		int num1=20;
		int num2=10;	
		int add=num1+num2;
	%>
	expression(표현식)<br>
	<%=num1%>+<%=num2%>=<%=add%>
</body>	
</html>