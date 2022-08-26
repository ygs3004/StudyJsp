<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
  if(request.getParameter("id") != null){
%>
    == 연산자 사용 결과 :
    <%=request.getParameter("id")=="pinksung"%>

    == equals() 사용 결과 :
    <%=request.getParameter("id").equals("pinksung")%>
<%
  }else{
    out.println("id를 전달 해주세요.");
  }
%>
</body>
</html>
