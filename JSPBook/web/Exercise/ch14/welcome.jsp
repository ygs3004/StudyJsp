<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>welcome</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();
        int nullCheck = 0;
        String userID="";
        for(int i=0; i<cookies.length; i++){
            Cookie thisCookie = cookies[i];
            System.out.println(thisCookie.getName());
            if(thisCookie.getName().equals("userID")){
                nullCheck++;
                System.out.println(thisCookie.getName());
                userID = thisCookie.getValue();
            }
        }
        // if(nullCheck==0) response.sendRedirect("cookie_out.jsp");
    %>
    <%=userID%>님 반갑습니다

    <a href="cookie_out.jsp">로그아웃</a>
</body>
</html>
