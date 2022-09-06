<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage_error.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exception</title>
</head>
<body>
<%--    name 파라미터 : <%=request.getParameter("name".toUpperCase())%> 교재 오류 -> 안됨--%>
    <%=1/0%>
</body>
</html>
