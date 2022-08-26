<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    session.invalidate();
%>
<script type="text/javascript">
    alert("로그아웃 되었습니다.");
    location.href = "17_loginForm.html";
</script>
로그아웃
</body>
</html>
