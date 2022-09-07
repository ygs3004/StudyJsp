<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session</title>
</head>
<body>
    <h4>------- 세션을 삭제하기 전 -------</h4>
    <%
        String user_id = (String)session.getAttribute("userID");
        String user_pw = (String)session.getAttribute("userPW");
        out.println("설정된 세션 이름 userID : "+user_id+"<br>");
        out.println("설정된 세션 값 userPW : "+user_pw+"<br>");

        session.removeAttribute("userID");
    %>
    <h4>------- 세션을 삭제하기 후 -------</h4>
    <%
        user_id = (String)session.getAttribute("userID");
        user_pw = (String)session.getAttribute("userPW");
        out.println("설정된 세션 이름 userID : "+user_id+"<br>");
        out.println("설정된 세션 값 userPW : "+user_pw+"<br>");
    %>
</body>
</html>
