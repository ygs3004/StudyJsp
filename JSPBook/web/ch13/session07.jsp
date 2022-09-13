<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session</title>
</head>
<body>
    <h4>----- 세션 유효 시간 변경 전 -----</h4>
    <%
        int time = session.getMaxInactiveInterval() / 60;

        out.println("세션 유효 시간 : " +time + "분<br>");
    %>
    <h4>----- 세션 유효 시간 변경 후 -----</h4>
    <%
        session.setMaxInactiveInterval(60*60);
        time = session.getMaxInactiveInterval()/60;

        out.println("세션 유효 시간 : " +time + "분<br>");
    %>
</body>
</html>
