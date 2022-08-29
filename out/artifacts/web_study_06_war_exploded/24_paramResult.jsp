<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>

      <c:forEach var="item" items="${paramValues.item}" varStatus="status"> <!--paramValue : 여러개-->
        ${item}
          <c:if test="${not status.last}">,</c:if>
      </c:forEach>


</body>
</html>
