<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Implicit Object</title>
</head>
<body>
    <h1>선택한 과일</h1>
    <%
        Enumeration fruit = request.getParameterNames();
        while(fruit.hasMoreElements()){
            out.print(request.getParameter((String)fruit.nextElement())+" ");
        }
    %>

</body>
</html>
