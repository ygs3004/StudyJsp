<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <h3>클라이언트로부터 가져온 쿠키 정보</h3>
    <%
        Cookie[] cookies=request.getCookies();
        for(Cookie c:cookies){
            out.print(c.getName()+":"+c.getValue()+"<br>");
        }
    %>
</body>
</html>