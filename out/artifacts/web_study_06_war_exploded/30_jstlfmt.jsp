<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>fmt formatNumber</title>
</head>
<body>

<fmt:formatNumber value="1234567.89" /><br>

<fmt:formatNumber value="1234567.89" groupingUsed="false"/><br>

<fmt:formatNumber value="0.5" type="percent"/><br>

<fmt:formatNumber value="10000" type="currency"/><br>

<fmt:formatNumber value="1234567.8912345" pattern="###,###.##"/><br>

<fmt:formatNumber value="1234567.89" pattern=".000"/><br>

<fmt:formatNumber value="123.89" pattern="00000.###"/><br> <%--0으로 채움--%>

<fmt:formatNumber value="456.89" pattern="##.#"/><br>

<fmt:formatNumber value="123456.89" pattern="############.###"/><br>


</body>
</html>
