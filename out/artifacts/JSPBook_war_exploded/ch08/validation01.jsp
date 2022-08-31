<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
  <script type="text/javascript">
    function checkform(){
        alert("아이디 : "+document.loginForm.id.value+"\n"+"비밀번호 : "+document.loginForm.passwd.value);
    }
  </script>
</head>
<body>
    <form name="loginForm">
        <p> 아 이 디 : <input type="text" name="id"></p>
        <p> 비밀번호 : <input type="password" name="passwd"></p>
        <p><input type="submit" value="전송" onclick="checkform()"></p>
    </form>
</body>
</html>
