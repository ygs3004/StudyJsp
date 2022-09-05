<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language")%>'/>
<fmt:bundle basename="ch09.com.bundle.exampleBundle">
    <a href="?language=ko">Korean</a>|<a href="?language=en">English</a><br>
    <fmt:message key="id"/> <input type="text" name="id"><br>
    <fmt:message key="password"/><input type="password" name="pwd"><br>
    <input type="submit" value="<fmt:message key="button"/>">
</fmt:bundle>
</body>
</html>
