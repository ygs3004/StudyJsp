<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isErrorPage="true"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exception</title>
</head>
<body>
    <p> 오류가 발생하였습니다.</p>
    <p> 예외 : <%=exception%></p>
    <p> toString() : <%=exception.toString()%></p>
    <p> getClass().getName() : <%=exception.getClass().getName()%></p>
    <p> getMessage : <%=exception.getMessage()%></p>
</body>
</html>
