<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>session_out</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("session.jsp");
%>
</body>
</html>
