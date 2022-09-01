<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>수정 완료</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%=(String)session.getAttribute("name")%>님의 회원 정보가 수정처리 되었습니다.
<a href="logout.jsp">로그아웃</a>&nbsp;&nbsp;<a href="modify.jsp">정보수정</a>
</body>
</html>
