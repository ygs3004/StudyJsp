<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<%
    if(session.getAttribute("userID")==null || session.getAttribute("userID").toString().trim().equals("")){
        response.sendRedirect("session_out.jsp");
    }
%>
<a href="session_out.jsp">로그아웃</a>
</body>
</html>
