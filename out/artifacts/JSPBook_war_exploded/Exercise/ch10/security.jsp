<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Security</title>
</head>
<body>

<%
    if(request.isUserInRole("admin")){
        response.sendRedirect("success.jsp");
    }
%>

</body>