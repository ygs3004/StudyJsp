<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
  String name = request.getParameter("name");
  String address = request.getParameter("address");
  String email = request.getParameter("email");

  StringBuffer sb = new StringBuffer();
  sb.append(name+"<br>");
  sb.append(address+"<br>");
  sb.append(email+"<br>");

  out.print(sb.toString());
%>
</body>
</html>
