<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <%
        response.setIntHeader("Refresh", 5);
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss aa", new Locale("en"));
    %>
    현재 시간은 <%=sdf.format(calendar.getTime())%><br>
    <a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>
