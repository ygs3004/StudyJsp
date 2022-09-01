<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
  String id = (String)request.getAttribute("id");
  String pw = (String)request.getAttribute("pw");
%>>

아이디 : <%=id%>
비밀번호 : <%=pw%>
</body>
</html>
