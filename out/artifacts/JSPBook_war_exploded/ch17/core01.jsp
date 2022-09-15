<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>core01</title>
</head>
<body>
    browser 변수 값 설정
    <c:set var="browser" value="${header['User-agent']}"/>
    <br>
    <c:out value="${browser}"/>
    <p>browser 변수값 제거 후
    <c:remove var="browser"/>
    <c:out value="${browser}"/>
</body>
</html>
