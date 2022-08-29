<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    ${param.userid}님
        <c:choose>
            <c:when test="${param.admin}==1">사용자료<</c:when>
            <c:otherwise>관리자로</c:otherwise>
        </c:choose>
        로그인 하셨습니다.

</body>
</html>
