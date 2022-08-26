<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
EL 식<hr>
<%-- EL에서는 파라미터 값을 찾지 못하면 공백으로 처리되어 예외처리 하지 않아도 된다 --%>
== 연산자 사용 결과
${param.id=="gilson"}<br> <%--EL식을 쓸경우 "=="도 equals 처럼 작용--%>
${param.id}
</body>
</html>