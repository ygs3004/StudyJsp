<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <h3>세션 값 가져오기</h3>
    <%
        String id = (String)session.getAttribute("id");
        String pwd = (String)session.getAttribute("pwd");
        Integer age =(Integer)session.getAttribute("age");
    %>

    id:<%=id%>
    id:<%=pwd%>
    id:<%=age%>

    <%
        out.print("==============================="+"<br>");
    %>
    <%
        Enumeration<String> names = session.getAttributeNames();
        while(names.hasMoreElements()){
            String name = names.nextElement();
            /*
            Object value = session.getAttribute(name);
            String value = String.valueOf(session.getAttribute(name));
            */
            String value = session.getAttribute(name).toString();

            out.println(name);
            out.println(value);
        }
    %>
</body>
</html>
