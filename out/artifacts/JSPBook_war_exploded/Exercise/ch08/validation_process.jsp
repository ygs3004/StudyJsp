<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
    <script type="text/javascript">
<%
    request.setCharacterEncoding("UTF-8");
    String id=request.getParameter("id");
    String pw=request.getParameter("pw");
    if(id.equals("")){
%>
        alert("아이디를 입력해주세요");
        location.href="validation01.jsp";
<%
    }else if(pw.indexOf(id)>-1){
%>
        alert("비밀번호는 ID를 포함할 수 없습니다.");
        location.href="validation01.jsp";
<%
    }else{
    request.setAttribute("id",id);
    request.setAttribute("pw",pw);

    RequestDispatcher dispatcher = request.getRequestDispatcher("fileupload01_process.jsp");
    dispatcher.forward(request, response);
    }

%>
    </script>
</head>
<body>

</body>
</html>
