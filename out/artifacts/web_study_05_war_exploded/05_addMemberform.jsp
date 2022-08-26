<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<h2>회원 정보 입력 폼</h2>
<form action="06_addMember.jsp" method="post">
  <table>
    <tr>
      <td>이름</td>
      <td><input type="text" name="name" size="20"></td>
    </tr>

    <tr>
      <td>아이디</td>
      <td><input type="text" name="userId" size="20"></td>
    </tr>

    <tr>
      <td>별명</td>
      <td><input type="text" name="nickName" size="20"></td>
    </tr>

    <tr>
      <td>비밀번호</td>
      <td><input type="text" name="pwd" size="20"></td>
    </tr>

    <tr>
      <td>email</td>
      <td><input type="text" name="email" size="20"></td>
    </tr>

    <tr>
      <td>전화번호</td>
      <td><input type="text" name="phone" size="20"></td>
    </tr>

    <tr>
      <td>
        <input type="submit" value="확인">
        <input type="reset" value="취소">
      </td>
    </tr>
  </table>
</form>

</body>
</html>
