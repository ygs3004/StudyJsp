<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <%
        String str = request.getQueryString();
        out.print("전송된 요청 파라미터 : "+str);
    %>

</body>
</html>
