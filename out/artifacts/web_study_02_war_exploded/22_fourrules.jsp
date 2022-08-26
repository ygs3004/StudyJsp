<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str1=request.getParameter("num1");
	String str2=request.getParameter("num2");
	
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2);
	
	request.setAttribute("sum", new Integer(num1+num2));
	request.setAttribute("difference", num1-num2);
	request.setAttribute("product", num1*num2);
	request.setAttribute("quotient", num1/num2);
	
	
	RequestDispatcher dispatcher=request.getRequestDispatcher("23_fourrulesresult.jsp");
	dispatcher.forward(request, response);
%>

</body>
</html>