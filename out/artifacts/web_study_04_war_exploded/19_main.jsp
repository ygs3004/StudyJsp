<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <%
        if(session.getAttribute("name")==null){
            response.sendRedirect("17_loginForm.html");
        }else{
    %>
      <%=session.getAttribute("name")%>님 안녕하세요!<br>
        저희 홈페이지에 방문해 주셔서 감사합니다.<br>
        즐거운 시간되세요...<br>
        <form action="20_logout.jsp" method="post">
            <input type="submit" value="로그 아웃">
        </form>
    <%
        }
    %>
</body>
</html>
