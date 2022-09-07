<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/shopping.css">
    <title>영화 목록</title>
</head>
<body>
    <div id="wrap" align="center">
        <h1>영화 리스트 - 관리자 페이지</h1>
        <table class="list">
            <tr>
                <td colspan="6" style="border:white; text-align: right"><a href="movieWrite.do">정보 등록</a></td>
            </tr>
            <tr>
                <td>제목</td>
                <td>감독</td>
                <td>배우</td>
                <td>가격</td>
                <td>수정</td>
                <td>삭제</td>
            </tr>
            <c:forEach var="movie" items="${mlist}">
                <tr class="record">
                    <td>${movie.title}</td>
                    <td style="text-align:right">${movie.price}원</td>
                    <td>${movie.director}</td>
                    <td>${movie.actor}</td>
                    <td><a href="movieupdate.do?code=${movie.code}">정보 수정</a></td>
                    <td><a href="moviedelete.do?code=${movie.code}">정보 수정</a></td>
                    <td><a href="">정보 삭제</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>