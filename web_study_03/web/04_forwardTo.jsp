<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
  <%
      String id = (String)request.getAttribute("id");
      String name = (String)request.getAttribute("name");
  %>

    fowardTo.jsp 페이지 입니다.<br>
    fowardTo.jsp 페이지는 포워드 페이지로
    fowardForm.jsp 페이지와 같은 request 객체를 공유합니다.<br>

    이메일:
    <b><%=id%></b>
    이름:
    <b><%=name%></b>
</body>
</html>
