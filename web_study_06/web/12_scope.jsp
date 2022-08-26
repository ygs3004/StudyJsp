<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
  <%
     pageContext.setAttribute("name", "request man");
     request.setAttribute("name", "request man");
     session.setAttribute("name", "session man");
     application.setAttribute("name","application man");

  %>

name : ${name}<hr>

page 속성 : ${pageScope.name}
request 속성 : ${requestScope.name}
session 속성 : ${sessionScope.name}
application 속성 : ${applicationScope.name}
</body>
</html>
