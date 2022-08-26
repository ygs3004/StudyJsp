<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%!
    String id, pw;
%>
<%
    id=request.getParameter("id");
    pw=request.getParameter("pw");

    if(id.equals("ezen") && pw.equals("1234")){
        Cookie cookie=new Cookie("id",id);
        cookie.setMaxAge(60);
        response.addCookie(cookie);
        response.sendRedirect("10_welcome.jsp");
    }else{
        response.sendRedirect("08_login.html");
    }
%>
</body>
</html>
