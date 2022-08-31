<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validation</title>
    <script type="text/javascript">
        function checkLogin() {
            var form = document.loginForm;
            if (form.id.value == "") {
                alert("아이디를 입력해주세요.");
                form.id.focus();
                return false;
            } else if (form.pwd.value == "") {
                alert("비밀번호를 입력해주세요");
                form.pwd.focus();
                return false;
            }
            form.submit();
        }
    </script>
</head>
<body>
<form name="loginForm" action="validation02_process.jsp" method="post">
    <p>아 이 디 : <input type="text" name="id"></p>
    <p>비밀번호 : <input type="password" name="pwd"></p>
    <p><input type="button" value="전송" onclick="checkLogin()"></p>
</form>
</body>
</html>
