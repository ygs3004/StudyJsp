<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Filter</title>
</head>
<body>
<%
    String id =request.getParameter("id");
    String pwd = request.getParameter("pwd");
%>

<p>입련된 id 값 : <%=id%></p>
<p>입련된 pw 값 : <%=pwd%></p>
</body>
</html>
