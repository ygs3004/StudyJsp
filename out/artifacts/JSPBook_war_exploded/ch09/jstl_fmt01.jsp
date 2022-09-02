<%@ page import="java.util.Locale" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <%
        Locale locale = request.getLocale();
        out.println(locale);
    %>
  <p> -----기본 로케일-----
      <fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
  <p> 제목 : <fmt:message key="title" bundle="${resourceBundle}"/>
  <p> <fmt:message key="username" var="userMsg" bundle="${resourceBundle}"/>
      이름 : ${userMsg}

  <p> -----영문 로케일-----
    <fmt:setLocale value="en"/>
    <fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
  <p> 제목 : <fmt:message key="title" bundle="${resourceBundle}"/>
  <p> 이름 : <fmt:message key="username" bundle="${resourceBundle}"/>
</body>
</html>
