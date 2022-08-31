<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <h3>입력에 성공했습니다.</h3>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
    %>
    <p>아이디 : <%=id%></p>
    <p>비밀번호 : <%=pwd%></p>
</body>
</html>
