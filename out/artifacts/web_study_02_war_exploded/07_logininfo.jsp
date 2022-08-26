<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 입력 파라미터 출력</h1>
<%
	request.setCharacterEncoding("UTF-8"); //post 방식일 경우 반드시 지정(안할시 한글 깨짐)
	String userid=request.getParameter("userid");
	String passwd=request.getParameter("passwd");
%>

아이디값:<%=userid %>
비밀번호:<%=passwd %>
</body>
</html>