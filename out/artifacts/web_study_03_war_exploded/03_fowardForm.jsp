<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    request.setAttribute("id","kingdora@king.com");
    request.setAttribute("name", "홍길동");
    // 여기서 보낸 값을 04에서 처리
%>

    03_fowwardForm.jsp 입니다.<br>
    화면에 절대로 표시되지 않습니다.
    <%--외부에 노출되지 않기 때문에 과정이 어떻게 실행되는지 모른다.--%>
    <jsp:forward page="04_forwardTo.jsp"/>

</body>
</html>
