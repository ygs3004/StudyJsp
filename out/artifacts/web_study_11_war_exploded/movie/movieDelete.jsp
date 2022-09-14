<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping.css">
    <meta charset="UTF-8">
    <title>movieDelete.jsp</title>
</head>
<body>
<div id="wrap" align="center">
    <h1>정보 삭제</h1>
        <form action="${pageContext.request.contextPath}/moviedelete.do" method="post" name="frm">
            <table>
                <tr>
                    <td style="width:300px; height:300px; text-align:center;">
                        <c:choose>
                            <c:when test="${empty movie.poster}">
                                <img src="../images/noimage.gif">
                            </c:when>
                            <c:otherwise>
                                <img src="../images/${movie.poster}" width="200" height="300">
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <th style="width:80px">제목</th>
                                <td>${movie.title}</td>
                            </tr>
                            <tr>
                                <th>가격</th>
                                <td>${movie.price}원</td>
                            </tr>
                            <tr>
                                <th>감독</th>
                                <td>${movie.director}</td>
                            </tr>
                            <tr>
                                <th>배우</th>
                                <td>${movie.actor}</td>
                            </tr>
                            <tr>
                                <th>사진</th>
                                <td>${movie.poster}</td>
                            </tr>
                            <tr>
                                <th>시놉시스</th>
                                <td><div style="height:220px; width:100%">${movie.synopsis}</div></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table><br>
            <input type="hidden" name="code" value="${movie.code}">
            <input type="submit" value="삭제">
            <input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/movielist.do'">
        </form>
</div>
</body>
</html>
