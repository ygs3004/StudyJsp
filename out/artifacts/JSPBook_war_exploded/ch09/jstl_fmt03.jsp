<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <p><jsp:useBean id="now" class="java.util.Date"/>
    <p><fmt:formatDate value="${now}" type="date"/>
    <p><fmt:formatDate value="${now}" type="time"/>
    <p><fmt:formatDate value="${now}" type="both"/>
    <p><fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/>
    <p><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/>
    <p><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/>
    <p><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/>
    <p><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
    <p><fmt:formatDate value="${now}" type="both" pattern="yyyy년MM월dd일 HH시mm분ss초 E요일"/>
</body>
</html>
