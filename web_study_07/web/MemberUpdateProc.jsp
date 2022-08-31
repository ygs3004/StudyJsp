<%@ page import="model.MemberDAO" %>
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
<jsp:useBean id="mbean" class="model.MemberBean">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<%
    String id = request.getParameter("id");
    MemberDAO mdao = new MemberDAO();

    String pass = mdao.getPass1(id);
    if(mbean.getPass1().equals(pass)){
        mdao.updateMember(mbean);
        response.sendRedirect("MemberList.jsp");
    }else{
%>
    <script type="text/javascript">
        alert("패스워드가 맞지 않습니다.다시 확인해주세요");
        history.go(-1);
    </script>
<%
    }
%>
</body>
</html>
