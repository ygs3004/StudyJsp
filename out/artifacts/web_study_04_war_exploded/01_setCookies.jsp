<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <h3>쿠키 설정</h3>
    <%
        Cookie c=new Cookie("id","pinksung");
        c.setMaxAge(365*24*60*60); //쿠키의 유효기간을 설정
        response.addCookie(c);
        response.addCookie(new Cookie("pwd","test1234"));
        response.addCookie(new Cookie("age","20"));
    %>
</body>
</html>
