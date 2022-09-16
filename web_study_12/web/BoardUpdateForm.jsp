<%@ page import="model.BoardDAO" %>
<%@ page import="model.BoardBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>BoardUpdateForm</title>
</head>
<body>
    <div align="center">
    <%
        int num = Integer.parseInt(request.getParameter("num"));

        BoardDAO bdao = new BoardDAO();
        BoardBean bean = bdao.getOneUpdateBoard(num);
    %>
        <form action="BoardUpdateProc.jsp" method="post">
            <table width="600" border="1" bgcolor="#87ceeb">
                <tr height="40">
                    <td width="120" align="center">작성자</td>
                    <td width="180" align="center"><%=bean.getWriter()%>></td>
                    <td width="120" align="center">작성일</td>
                    <td width="180" align="center"><%=bean.getReg_date()%>></td>
                </tr>
                <tr height="40">
                    <td width="120" align="center">제목</td>
                    <td width="480" colspan="3">&nbsp;<input type="text" name="subject" value=<%=bean.getSubject()%> size="60"></td>
                </tr>
                <tr height="40">
                    <td width="120" align="center">패스워드</td>
                    <td width="480" colspan="3">&nbsp;<input type="password" name="password" size="60"></td>
                </tr>
                <tr height="40">
                    <td width="120" align="center">글내용</td>
                    <td width="480" colspan="3"><textarea rows="10" cols="60" name="content" align="left">
                        <%=bean.getContent()%></textarea></td>
                </tr>
                <tr height="40">
                    <td colspan="4" align="center">
                        <input type="hidden" name="num" value="<%=bean.getNum()%>">
                        <input type="submit" value="글 수정">&nbsp;&nbsp;
                        <input type="button" onclick="location.href='BoardList.jsp'" value="전체 글 보기">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
