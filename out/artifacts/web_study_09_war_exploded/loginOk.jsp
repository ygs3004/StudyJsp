<%@ page import="com.javalec.ex.MemberDao" %>
<%@ page import="com.javalec.ex.MemberDto" %>
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
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    MemberDao dao = MemberDao.getInstance();
    int num = dao.userCheck("id","pw");

    if(num == -1){ // MemberDao.MEMBER_LOGIN_IS_NOT
%>
    <script type="text/javascript">
        alert("아이디가 존재하지 않습니다.")
        history.go(-1);
    </script>
<%
    }else if(num == 0){ //MemberDao.MEMBER_LOGIN_PW_NO_GOOD
%>
    <script type="text/javascript">
        alert("비밀번호가 틀렸습니다.")
        history.go(-1);
    </script>
<%
    }else if(num ==1){ //MemberDao.MEMBER_LOGIN_SUCCESS
        MemberDto dto = dao.getMember("id");

        if(dto ==null){
%>
        <script type="text/javascript">
            alert("존재하지 않는 회원입니다.")
            history.go(-1);
        </script>
<%
        }else{
            String name = dto.getName();
            session.setAttribute("id", id);
            session.setAttribute("name",name);
            session.setAttribute("ValidMem","yes");
            response.sendRedirect("main.jsp");
        }
    }
%>
</body>
</html>
