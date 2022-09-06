<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isErrorPage="true"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exception</title>
</head>
<body>
    <h3>오류 발생</h3>
    <table border="1">
        <tr>
            <th>Error:</th>
            <td><%=exception.getMessage()%> 오류 발생!!</td>
        </tr>
        <tr>
            <th>URI:</th>
            <td><%=request.getRequestURL()%>></td>
        </tr>
        <tr>
            <th>Status code:</th>
            <td>500</td>
        </tr>
    </table>
</body>
</html>
