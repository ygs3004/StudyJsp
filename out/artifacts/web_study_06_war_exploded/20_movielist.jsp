<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    String[] movieList = {"타이타닉","시네마 천국","혹성 탈출", "킹콩"};
    pageContext.setAttribute("movieList", movieList);
%>

<table border="1" style="width:100%; text-align: center";>
    <tr>
        <th>index</th>
        <th>count</th>
        <th>title</th>
    </tr>
        <!-- 배열과 같은 집합체에서 항목의 인덱스 값을 사용해야 할 경우에 사용한다 varStatus-->
    <c:forEach var="movie" items="${movieList}" varStatus="status">
        <tr>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${movie}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
