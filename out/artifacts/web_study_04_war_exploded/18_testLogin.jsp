<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    String id="pinksung";
    String pwd="1234";
    String name="이순신";

    String userid=request.getParameter("id");
    String userpwd=request.getParameter("pwd");

    if(id.equals(userid) && (pwd.equals(userpwd))){
            session.setAttribute("name",name);
            response.sendRedirect("19_main.jsp");
    }else{
        response.sendRedirect("17_loginForm.html");
    }

    out.print(session.getAttribute("name"));
%>
</body>
</html>
