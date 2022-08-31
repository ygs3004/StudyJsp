<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    <p>아이디 : <%=request.getParameter("id")%></p>
    <p>비밀번호 : <%=request.getParameter("passwd")%></p>
    <p>이름 : <%=request.getParameter("name")%></p>
    <p>연락처 : <%=request.getParameter("phone1")%>-<%=request.getParameter("phone2")%>-<%=request.getParameter("phone3")%></p>
    <p>이메일 : <%=request.getParameter("email")%></p>
</body>
</html>
