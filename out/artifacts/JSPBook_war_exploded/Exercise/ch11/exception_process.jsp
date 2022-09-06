<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page errorPage="exception_error.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exception</title>
</head>
<body>
<%=request.getParameter("id")%><br>
<%=request.getParameter("pw")%><br>
<% int a = request.getParameter("aa")%><br>
</body>
</html>
