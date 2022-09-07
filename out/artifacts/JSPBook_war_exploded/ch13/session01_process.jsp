<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session</title>
</head>
<body>
    <%
        String user_id = request.getParameter("user_ID");
        String user_pw = request.getParameter("user_PW");

        if(user_id.equals("admin") && user_pw.equals("1234")){
            session.setAttribute("userID",user_id);
            session.setAttribute("userPW",user_pw);
            out.println("세션 설정이 성공했습니다<br>");
            out.println(user_id+"님 환영합니다.");
        }else{
            out.println("세션 설정이 실패했습니다.");
        }
    %>
</body>
</html>
