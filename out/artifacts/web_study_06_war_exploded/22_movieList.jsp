<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<c:forEach var="cnt" begin="1" end="10" varStatus="status">
    ${cnt}
    <c:if test="${not status.last}">,</c:if>
</c:forEach><br>
<table border="1" style="width:100%;text-align: center;">
    <tr>
        <th>indiex</th>
        <th>count</th>
        <th>cnt</th>
    </tr>
    <c:forEach var="cnt" begin="7" end="10" varStatus="status">
    <tr>
        <td>${status.index}</td>
        <td>${status.count}</td>
        <td>${cnt}</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
