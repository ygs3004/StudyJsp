<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    Cookie[] cookies=request.getCookies();

    for(int i=0; i< cookies.length; i++){
        //out.print(cookies[i].getName()+" : "+cookies[i].getValue()+"<br>");
        String str = cookies[i].getName();
        if(str.equals("cookieName")){
            out.print("cookies["+i+"] name : "+cookies[i].getName()+"<br>");
            out.print("cookies["+i+"] value : "+cookies[i].getValue()+"<br>");
            out.print("========================================<br>");
        }
    }
    out.print("cookies["+1+"] name : "+cookies[1].getName()+"<br>");
    out.print("cookies["+1+"] value : "+cookies[1].getValue()+"<br>");

%>

<a href="06_cookiedel.jsp">cookie delete</a>
</body>
</html>
