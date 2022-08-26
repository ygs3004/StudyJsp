<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
  <%--<% request.getParameter()는 값을 찾지 못하면 null값을 반환%>--%>
  자바 코드<br>
  ==연산자 사용==
  <%=request.getParameter("id")=="pinksung"%><br>

  equals() 사용결과
  <%=request.getParameter("id").equals("pinksung")%>

  <%--주소?id=pinksung--%>
</body>
</html>
