<%@ page import="java.sql.Timestamp" %>
<%@ page import="com.javalec.ex.MemberDao" %>
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
<jsp:useBean id="dto" class="com.javalec.ex.MemberDto">
    <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>
<%
    dto.setrDate(new Timestamp(System.currentTimeMillis()));
    MemberDao dao = MemberDao.getInstance();
    if (dao.confirmId(dto.getId()) == MemberDao.MEMBER_EXISTENT) {
%>
    <script type="text/javascript">
        alert("이미 존재하는 아이디입니다.")
        history.back();
    </script>
<%
    }else{
        int ri = dao.insertMember(dto);
        System.out.println(ri);
        if(ri == MemberDao.MEMBER_JOIN_SUCESS){
            session.setAttribute("id",dto.getId());
%>
        <script type="text/javascript">
            alert("회원가입을 축하합니다.");
            document.location.href="login.jsp";
        </script>
        <%
        }else{
            //아이디가 중복은 아니지만 테이블에 저장실패
        %>
        <script type="text/javascript">
            alert("회원 가입에 실패했습니다.");
            document.location.href="login.jsp";
        </script>

<%
        }
    }
%>

</body>
</html>
