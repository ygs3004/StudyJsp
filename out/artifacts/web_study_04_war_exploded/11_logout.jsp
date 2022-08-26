<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    //쿠키 삭제
    if(cookies != null){
        for(Cookie c : cookies){
            out.print(c.getName()+":"+c.getValue());
            if(c.getValue().equals("ezen")){
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }
    }
%>
로그아웃되었습니다.
</body>
</html>
