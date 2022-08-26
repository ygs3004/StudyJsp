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
    if(cookies != null){
      for(int i=0; i<cookies.length; i++){
        out.println(cookies[i].getName()+"<br>");
        out.println(cookies[i].getValue()+"<br>");
      }
    }
    out.println("쿠키가 삭제되었습니다.");
  %>
</body>
</html>
