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
<%--이름 : <%=member.getName()%><br>--%>
이름 : <jsp:getProperty name="member" property="name"/><br>
<%--이름 : <%=member.getuserId()%><br>--%>
아이디 : <jsp:getProperty name="member" property="userid"/>
<hr>

2. 정보 변경한 후 변경된 정보 출력하기<br><br>
<%--<%member.setName("홍길동");
member.setUserid("hong");%>--%>
    <jsp:setProperty name="member" property="name" value="홍길동"/>
    <jsp:setProperty name="member" property="userid" value="hong"/>

<%--이름:<%=member.getName()%><br>
아이디:<%=member.getUserid()%>--%>
이름 : <jsp:getProperty name="member" property="name"/><br>
아이디 : <jsp:getProperty name="member" property="userid"/>
<hr>
</body>
</html>
