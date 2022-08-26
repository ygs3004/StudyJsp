<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
당신이 입력한 정보입니다.(request 방식)<hr>
  아이디 : <%=request.getParameter("id")%>
  비밀번호 : <%=request.getParameter("pwd")%><br>


당신이 입력한 정보입니다.(EL 방식)<hr>
아이디:${param.id}<br>
비밀번호:${param.pwd}<br>
비밀번호:${param["pwd"]}
</body>
</html>
