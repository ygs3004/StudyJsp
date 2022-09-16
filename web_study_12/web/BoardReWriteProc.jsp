<%@ page import="model.BoardBean" %>
<%@ page import="model.BoardDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>BoardReWriteProc</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="boardBean" class="model.BoardBean">
    <jsp:setProperty name="boardBean" property="*"></jsp:setProperty>
</jsp:useBean>

<%
    BoardDAO bdao = new BoardDAO();
    bdao.reWriteBoard(boardBean);

    response.sendRedirect("BoardList.jsp");
%>
</body>
</html>
