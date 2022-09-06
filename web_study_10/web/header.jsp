<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
    <style type="text/css">
        td{
            border:1px solid black;
            width:200px;
            text-align: center;
        }
        table.mainmenu td.login:hover{
            background-color: pink;
        }
    </style>
</head>
<body>
    <table class="mainmenu" align="center">
        <c:if test="${empty loginUser}">
            <tr>
                <td></td><td></td>
                <td class="login"><a name="login" href="login.do" style="text-decoration:none;">로그인</a></td>
                <td style="width:250px">사원 등록<br>
                    <span style="color:red">(관리자로 로그인 후 사용가능)</span></td>
                <td>마이 페이지<br>
                    <span style="color:red">(로그인 후 사용 가능)</span></td>
            </tr>
        </c:if>
        <c:if test="${!empty loginUser}">
            <tr>
                <td>${loginUser.name}님 반갑습니다.</td>
                <td>레벨:${loginUser.lev}</td>
                <td class="login"><a href="logout.do" style="text-decoration: none">로그아웃</a></td>

                <c:choose>
                    <c:when test="${result==2}">
                        <td class="login"><a href="custom.do" style="text-decoration: none">사원 등록</a></td>
                    </c:when>
                    <c:when test="${result==3}">
                        <td style="width:300px">사원 등록
                            <span style="color:red">(관리자로 로그인 후 사용 가능)</span></td>
                    </c:when>
                </c:choose>
                <td class="login">
                    <a href="mypage.do" style="text-decoration:none">마이페이지</a>
                </td>
            </tr>
        </c:if>
    </table>
</body>
</html>
