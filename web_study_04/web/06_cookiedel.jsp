<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <%
        Cookie[] cookies=request.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("cookieName")) {
                out.print(cookie.getName()+" : "+cookie.getValue());
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }

    %>
    <a href="07_cookietest.jsp"><h3>쿠키가 삭제되었습니다.</h3><a/>
</body>
</html>
