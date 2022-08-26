<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	입력된 수 : <%=request.getParameter("num1")%>, <%=request.getParameter("num1")%><br><br>
	덧셈의 결과는 ? <%=(Integer)request.getAttribute("sum")%><br>
	뺄셈의 결과는 ? <%=request.getAttribute("difference")%><br> //자동캐스팅
	곱셈의 결과는 ? <%=request.getAttribute("product")%><br>
	나눗셈의 결과는 ? <%=request.getAttribute("quotient")%><br>
</body>
</html>