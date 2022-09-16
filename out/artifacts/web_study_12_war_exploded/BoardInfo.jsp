<%@ page import="model.BoardDAO" %>
<%@ page import="model.BoardBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>BoardInfo</title>
</head>
<body>
    <%
        int num = Integer.parseInt(request.getParameter("num").trim());

        BoardDAO dao = new BoardDAO();
        BoardBean bean = dao.getOneBoard(num);
    %>

    <br><br><div align="center" class="container">
    <h2>게시글 보기</h2>
        <table width="600" border="1" bgcolor="skyblue">
            <tr height="40">
                <td width="100" align="center">글번호</td>
                <td width="180" align="left"><%=bean.getNum()%></td>
                <td width="120" align="center">조회수</td>
                <td width="180" align="center"><%=bean.getReadcount()%></td>
            </tr>
            <tr height="40">
                <td width="100" align="center">작성자</td>
                <td width="180" align="left"><%=bean.getWriter()%></td>
                <td width="120" align="center">작성일</td>
                <td width="180" align="center"><%=bean.getReg_date()%></td>
            </tr>
            <tr height="40">
                <td width="120" align="center">이메일</td>
                <td colspan="3" align="center"><%=bean.getEmail()%></td>
            </tr>
            <tr height="40">
                <td width="120" align="center">제목</td>
                <td colspan="3" align="center"><%=bean.getSubject()%></td>
            </tr>
            <tr height="80">
                <td width="120" align="center">글 내용</td>
                <td colspan="3" align="center"><%=bean.getContent()%></td>
            </tr>
            <tr height="40">
                <td align="center" colspan="4">
                    <input type="button" value="답글쓰기" onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">
                    <input type="button" value="수정" onclick="location.href='BoardUpdateForm.jsp?num=<%=bean.getNum()%>'">
                    <input type="button" value="삭제" onclick="location.href='BoardDeleteForm.jsp?num=<%=bean.getNum()%>'">
                    <input type="button" value="목록보기" onclick="location.href='BoardList.jsp'">
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
