<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
  <%
    Cookie cookie = new Cookie("cookieName","cookieValue1");
    cookie.setMaxAge(60*60);
    response.addCookie(cookie);
  %>

  <a href="05_cookieget.jsp">cookie get</a>
</body>
</html>
