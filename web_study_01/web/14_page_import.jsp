<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
지시자:directive<br>
지시자는 태그에서 "@"으로 시작하며 page,include,taglib 3가지 종류가 있다.<br>
지시자는 JSP페이지에 대한 전체 속성을 지정하며 페이지의 제일 윗 부분에 입력한다.<br>
page:JSP페이지 전반적인 환경을 절성할 내용을 입력한다.
include:현재 페이지내에 대란 파일의 내용을 삽ㅇ입할 떄 사용한다<br>
taglib:태그 라이브러리에서 태그를 꺼내서 사용할 수 있는 기능을 제공한다.<br>

<%
	GregorianCalendar now = new GregorianCalendar();
	String date = String.format("%TF", now);
	String time = String.format("%TT", now);
%>

<%=now%>
오늘 날짜 : <%=date%>
현재 시각 : <%=time%> 
</body>
</html>