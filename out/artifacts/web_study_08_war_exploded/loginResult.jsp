<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%!
    String name,id,pw;
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    name = (String)session.getAttribute("name");
    id = (String)session.getAttribute("id");
    pw = (String)session.getAttribute("pw");
%>

<%=name%>님 안녕하세요<br>
<a href="modify.jsp">회원 정보 수정</a>
</body>
</html>
