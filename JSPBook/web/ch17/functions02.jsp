<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>functions02</title>
</head>
<body>
    <c:set var="texts" value="${fn:split('Hello, Java Server Pages!',' ')}"/>
    <c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
        <p>text[${i}] = ${texts[i]}</p>
    </c:forEach>
    <p><c:out value="${fn:join(texts, '-')}"/></p>
</body>
</html>