<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<c:url value="images/pic.jpg" var="data"/>
<h3>${data}</h3>
<img src="${data}" width="150" height="150">
<h3>${data}</h3>
<img src="${data}" width="250" height="250">
</body>
</html>

