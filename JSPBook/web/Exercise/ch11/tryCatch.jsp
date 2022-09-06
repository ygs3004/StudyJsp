<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    try{
        int a = 1/0;
    }catch(Exception e){
        out.println("오류 발생 : "+e.getMessage());
    }
%>
</body>
</html>
