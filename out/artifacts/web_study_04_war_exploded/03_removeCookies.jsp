<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
  <%
    Cookie cookie1 = new Cookie("id","");
    cookie1.setMaxAge(0);
    response.addCookie(cookie1);

    Cookie cookie2 = new Cookie("pwd","");
    cookie2.setMaxAge(0);
    response.addCookie(cookie2);

    Cookie cookie3 = new Cookie("age","");
    cookie3.setMaxAge(0);
    response.addCookie(cookie3);
  %>

<h3>쿠키가 삭제되었습니다.</h3>
<a href="02_getCookies.jsp">
  쿠키 삭제를 확인하려면 클릭하세요
</a>
</body>
</html>
