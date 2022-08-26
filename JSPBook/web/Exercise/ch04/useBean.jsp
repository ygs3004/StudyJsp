<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
	<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan"/>
	<%
		int number=5;
		int[] gugu=gugudan.process(number);
		for(int i=0; i<gugu.length; i++){
			out.print(number+" * "+(i+1)+" = "+gugu[i]+"<br>");
		}
	%>
</head>
<body>

</body>
</html>