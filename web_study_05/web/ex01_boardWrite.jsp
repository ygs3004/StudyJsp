<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<h1>입력 완료된 정보</h1>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="board" class="com.mission.javabeans.BoardBean"/>
<jsp:setProperty name="board" property="*"/>

이름 :  <jsp:getProperty name="board" property="name"/><br>
비밀번호 :  <jsp:getProperty name="board" property="pass"/><br>
이메일 :  <jsp:getProperty name="board" property="email"/><br>
글제목 :  <jsp:getProperty name="board" property="title"/><br>
글내용 :  <jsp:getProperty name="board" property="content"/><br>

</body>
</html>
