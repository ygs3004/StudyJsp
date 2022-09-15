<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>core02_process</title>
</head>
<body>
    <%
        String number = request.getParameter("number");
    %>
    <c:set var="number" value="<%=number%>"/>
    <c:choose>
        <c:when test="${number%2==0}">
            <c:out value="${number}"/> 은 짝수입니다.
        </c:when>
        <c:when test="${number%2==1}">
            <c:out value="${number}"/> 은 홀수입니다.
        </c:when>
        <c:otherwise>
            숫자가 아닙니다.
        </c:otherwise>
    </c:choose>
</body>
</html>
