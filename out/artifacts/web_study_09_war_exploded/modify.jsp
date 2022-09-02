<%@ page import="com.javalec.ex.MemberDao" %>
<%@ page import="com.javalec.ex.MemberDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    String id = (String)session.getAttribute("id");
    MemberDao dao = MemberDao.getInstance();
    MemberDto dto = dao.getMember(id);
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<form action="modifyOk.jsp" method="post" name="reg_frm">
    아이디 : <%=dto.getId()%><br>
    비밀번호 : <input type="password" name="pw" size="20"><br>
    비밀번호 확인 : <input type="password" name="pw_check" size="20"><br>
    이름 : <%=dto.getName()%><br>
    이메일 : <input type="email" name="email" size="20" value="<%=dto.getEmail()%>"><br>
    주소 : <input type="text" name="address" size="40" value="<%=dto.getAddress()%>"><br>

    <input type="button" value="수정" onclick="updateInfoConfirm()">&nbsp;&nbsp;
    <input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
</form>
</body>
</html>