<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<c:set var="age" value="30"/>
나이 : <c:out value="10">100</c:out><br>
나이 : <c:out value="${age}">100</c:out><br>

<c:set var="age">
    40
</c:set>
나이 : <c:out value="${age}">100</c:out><br>

<c:catch var="errmsg">
예외발생 전 <br>
<%=1/0%><br>
예외 발생 후 <br>
</c:catch>
<c:out value="${errmsg}"/>

</body>
</html>
