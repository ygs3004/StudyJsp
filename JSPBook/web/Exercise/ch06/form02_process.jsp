<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <%
        Enumeration all = request.getParameterNames();
        while(all.hasMoreElements()){
            String name = all.nextElement().toString();
            out.print(name + ":" + request.getParameter(name)+"<br>");
        }
    %>
</body>
</html>
