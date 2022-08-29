<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<div align="center">
    <h2>회원 가입</h2>
    <form action="MemberJoinProc.jsp">
        <table width="500" border="1">
            <tr height="50">
                <td width="150" align="center">아이디</td>
                <td width="350" align="center">
                    <input type="text" name="id" size="40" placeholder="id를 넣으세요">
                </td>
            </tr>

            <tr height="50">
                <td width="150" align="center">패스워드</td>
                <td width="350" align="center">
                    <input type="pwd" name="pass1" size="40" placeholder="비밀번호를 넣으세요">
                </td>
            </tr>

            <tr height="50">
                <td width="150" align="center">이메일</td>
                <td width="350" align="center">
                    <input type="email" name="email" size="40">
                </td>
            </tr>

            <tr height="50">
                <td width="150" align="center">전화번호</td>
                <td width="350" align="center">
                    <input type="tel" name="tel" size="40">
                </td>
            </tr>

            <tr height="50">
                <td width="150" align="center">당신의 관신분야</td>
                <td width="350" align="center">
                    <input type="checkbox" name="hobby" value="캠핑">캠핑&nbsp;
                    <input type="checkbox" name="hobby" value="등산">등산&nbsp;
                    <input type="checkbox" name="hobby" value="독서">독서&nbsp;
                    <input type="checkbox" name="hobby" value="음악">음악&nbsp;
                </td>
            </tr>


            <tr height="50">
                <td width="150" align="center">당신의 직업</td>
                <td width="350" align="center">
                    <select name="job">
                        <option value="교사">교사</option>
                        <option value="의사">의사</option>
                        <option value="변호사">변호사</option>
                        <option value="기술사">기술사</option>
                    </select>
                </td>
            </tr>

            <tr height="50">
                <td width="150" align="center">당신의 연령은</td>
                <td width="350" align="center">
                    <input type="radio" name="age" value="10">10대&nbsp;
                    <input type="radio" name="age" value="20">20대&nbsp;
                    <input type="radio" name="age" value="30">30대&nbsp;
                    <input type="radio" name="age" value="40">40대&nbsp;
                </td>
            </tr>

            <tr height="50">
                <td width="150" align="center">하고 싶은 말</td>
                <td width="350" align="cetner">
                    <textarea rows="5" cols="40" name="info"></textarea>
                </td>
            </tr>

            <tr height="50">
                <td width="150" colspan="2" align="center">
                    <input type="submit" value="회원가입">
                    <input type="reset" value="취소">
                </td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
