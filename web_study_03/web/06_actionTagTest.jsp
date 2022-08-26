<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <%
        String userID= request.getParameter("userID");
        String userPwd= request.getParameter("userPwd");
        String loginCheck = request.getParameter("loginCheck");

        if(loginCheck.equals("user")){
    %>
        <jsp:forward page="07_userMain.jsp">
            <jsp:param name="userName" value='<%=URLEncoder.encode("전고객","UTF-8")%>'/>
        </jsp:forward>
    <%
        }else{
    %>
        <jsp:forward page="08_Manager.jsp">
            <jsp:param name="userName" value='<%=URLEncoder.encode("전관리","UTF-8")%>'/>
        </jsp:forward>
    <%
        }
    %>

</body>
</html>
