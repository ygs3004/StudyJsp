<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validation</title>
    <script type="text/javascript">
        function check(){
            var id=document.form.id.value;
            var pw1=document.form.pwd1.value;
            var pw2=document.form.pwd2.value;


            var regExpPw =/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
            if(!regExpPw.test(pw1)){
                alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.")
            }
        }

    </script>
</head>
<body>
<form name="form">
    아이디 : <input type="text" name="id">
    비밀번호 : <input type="password" name="pwd1">
    비밀번호 확인 : <input type="password" name="pwd2">
    <input type="submit" value="전송" onclick="check()">
</form>
</body>
</html>
