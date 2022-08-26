<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값이에요");
    session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값이에요");
    session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값이에요");

    out.print("<h3>==세션값을 삭제하기 전==</h3>");
    Enumeration<String> names = session.getAttributeNames();

    while (names.hasMoreElements()) {
        String name = names.nextElement();
        String value = session.getAttribute(name).toString();
        out.print(name + ":" + value + "<br>");
    }

    session.invalidate();

    out.print("<h3>==세션 값을 삭제한 후==</h3>");
    out.print("Q:과연 세션 아이디가 유효할까요?<br>");
    if(request.isRequestedSessionIdValid()==true)
        out.print("A:세션 아이디가 유효합니다");
    else
        out.print("A:세션 아이디가 유효하지 않습니다.");
%>

</body>
</html>
