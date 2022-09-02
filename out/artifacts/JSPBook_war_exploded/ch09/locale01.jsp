<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <h3>현재 로케일의 국가, 날짜, 통화</h3>
    <%
        Locale locale = request.getLocale();
        Date currentDate = new Date();
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL, locale);
        NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
    %>
    <p> 국가 : <%=locale.getDisplayCountry()%></p>
    <p> 날짜 : <%=dateFormat.format(currentDate)%></p>
    <p> 숫자 (12345.67) : <%=numberFormat.format(12345.67)%>  </p>
</body>
</html>
