<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
  \${5+2}:${5+2}<br>
  \${5/2}:${5/2}<br>
  \${5%2}:${5%2}<br>
  \${5/2}:${5>2}<br>
  \${(5>2)?5:2}:${(5>2)?5:2}<br>
  \${(5>2)||(2>10} : ${(5>2)||(2<10)}<br>
  \${(5>2)&&(2>10} : ${(5>2)&&(2<10)}<br>

  <%String input = null; %>
  \${empty input} : ${empty input}<br><br> //

  <%
    if(input == null){
      out.print("텅 빈 객체(null)");
    }
  %>

<%--JTSL(JSP Standard Tag library--%>
<c:if test=${empty input}> 텅빈 객체입니다.
</body>
</html>
