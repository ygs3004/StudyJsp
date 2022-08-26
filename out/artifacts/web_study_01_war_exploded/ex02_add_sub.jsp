<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public int add(int a, int b){
		return a+b;
	}

	public int sub(int a, int b){
		return a-b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num1=50;
	int num2=20;
	
	int num3=add(num1, num2);
	int num4=sub(num1, num2);
%>

<%=num1%>+<%=num2%>=<%=num3%><br>
<%=num1%>-<%=num2%>=<%=num4%>

</body>
</html>