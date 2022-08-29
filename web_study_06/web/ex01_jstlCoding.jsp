<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    java.util.List<String> seasonList = new java.util.ArrayList<String>();
    seasonList.add("봄");
    seasonList.add("여름");
    seasonList.add("가을");
    seasonList.add("겨울");


    request.setAttribute("seasonList", seasonList);
%>

<select>
    <%
        ArrayList<String> list = (ArrayList<String>) (request.getAttribute("seasonList"));
        for (int i = 0; i < list.size(); i++) {
    %>
    <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
    <%
        }
    %>
</select>

<select>
<%-- JSTL --%>
    <c:forEach var="item" items="${seasonList}">
        <option>${item}</option>
    </c:forEach>
</select>
</body>
</html>
