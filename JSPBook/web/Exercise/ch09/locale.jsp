<%@ page import="java.util.Locale" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Internationalization</title>
</head>
<body>
<h4>현재 로케일</h4>
<%
    Locale locale = request.getLocale();
%>
언어 :<%=locale.getLanguage()%><br>
국가 :<%=Locale.getDefault().getCountry()%>
</body>
</html>
