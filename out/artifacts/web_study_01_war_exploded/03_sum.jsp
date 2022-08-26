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
		int a=2;
		int b=3;
		int sum=a+b;
		System.out.println("2+3 ="+sum);  //콘솔만 출력
		out.println("2+3="+sum); //콘솔, 브라우저 출력
	%>
</body>
</html>