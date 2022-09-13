<%@ page import="com.seoil.dao.MovieDAO" %>
<%@ page import="com.seoil.dto.MovieVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>영화 수정</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping.css">    <script type="text/javascript" src="../script/product.js"></script>
</head>
<body>
<div id="wrap" align="center">
    <h1>정보 수정</h1>
    <form action="${pageContext.request.contextPath}/movieupdate.do" method="post" enctype="multipart/form-data" name="frm">
        <input type="hidden" name="code" value="${movie.code}">
        <input type="hidden" name="nonmakeImg" value="${movie.poster}">
        <table>
            <tr>
                <td>
                    <c:choose>
                        <c:when test="${empty movie.poster}">
                            <img src="images/noimage.gif">
                        </c:when>
                        <c:otherwise>
                            <img src="images/${movie.poster}" width="200" height="300">
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <table>
                        <tr>
                            <th style="width: 80px">제목</th>
                            <td><input type="text" name="title" size="80" value="${movie.title}"></td>
                        </tr>
                        <tr>
                            <th>가격</th>
                            <td><input type="text" name="price" value="${movie.price}"></td>
                        </tr>
                        <tr>
                            <th>감독</th>
                            <td><input type="text" name="director" size="80" value="${movie.director}"></td>
                        </tr>
                        <tr>
                            <th>배우</th>
                            <td><input type="text" name="actor" size="80" value="${movie.actor}"></td>
                        </tr>
                        <tr>
                            <th>사진</th>
                            <td><input type="file" name="poster"></td>
                        </tr>
                        <tr>
                            <th>시놉시스</th>
                            <td><textarea cols="90" rows="10" name="synopsis">${movie.synopsis}</textarea></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table><br>
        <input type="submit" value="수정">&nbsp;<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/movielist.do'">
    </form>
</div>
</body>
</html>
