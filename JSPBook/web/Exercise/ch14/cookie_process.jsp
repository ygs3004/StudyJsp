<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>cookie_process</title>
</head>
<body>
    <%
        String user_ID = request.getParameter("id");
        String user_PW = request.getParameter("pw");

        if(user_ID.equals("admin") && user_PW.equals("1234")){
            Cookie userID = new Cookie("userID", user_ID);
            Cookie userPW = new Cookie("userPW", user_PW);
            response.addCookie(userID);
            response.addCookie(userPW);
            response.sendRedirect("welcome.jsp");
        }else{
            response.sendRedirect("cookie.jsp");
        }
    %>
</body>
</html>
