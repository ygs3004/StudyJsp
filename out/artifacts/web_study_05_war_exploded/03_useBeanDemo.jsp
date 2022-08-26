<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
1. 자바 빈 객체 생성 후 저장된 정보 출력하기<br><br>
이름 : <%=member.getName()%><br>
아이디 : <%=member.getUserid()%>
<hr>

2. 정보 변경한 후 변경된 정보 출력하기<br><br>
<%
    member.setName("홍길동");
    member.setUserid("hong");
%>
이름:<%=member.getName()%><br>
아이디:<%=member.getUserid()%>

<hr>
</body>
</html>
