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

            var check1 = false;
            var check2 = false;

            for(var i=0; i<pw1.length-2; i++){
                if(pw1.charCodeAt(i)>=48 && pw1.charCodeAt(i)<=122){  // 숫자 0부터 영문 Z까지 아스키코드
                    if(pw1.charAt(i)==pw1.charAt(i+1)) check1 = true;
                    if(pw1.charAt(i+1)==pw1.charAt(i+2)) check2 = true;

                    if(check1 && check2)
                        alert("영문, 숫자는 3자 이상 연속할 수 없습니다.")
                }
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
