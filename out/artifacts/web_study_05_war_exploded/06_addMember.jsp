<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="com.saeyan.javabeans.javabeans.MemberBean"/>
<jsp:setProperty name="member" property="*"/>

<h1>입련된 회원 정보</h1>
    <table>
        <tr>이름 : <jsp:getProperty name="member" property="name"/></tr>
        <tr>아이디 : <jsp:getProperty name="member" property="userId"/></tr>
        <tr>별명 : <jsp:getProperty name="member" property="nickName"/></tr>
        <tr>전화번호 : <jsp:getProperty name="member" property="phone"/></tr>
        <tr>이메일 : <jsp:getProperty name="member" property="email"/></tr>
        <tr>비밀번호 : <jsp:getProperty name="member" property="pwd"/></tr>
    </table>

<%

%>
</body>
</html>
