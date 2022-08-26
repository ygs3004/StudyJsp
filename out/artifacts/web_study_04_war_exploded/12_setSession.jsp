<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<h3>세션 설정</h3>
<%
    session.setAttribute("id","pinksung");
    session.setAttribute("pwd","test1234");
    session.setAttribute("age",20);
%>



</body>
</html>
