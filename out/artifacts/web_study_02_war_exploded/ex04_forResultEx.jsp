<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산 결과</h1>
	<%!
		public int sum(int n){
			int sum=0;
			for(int i=1; i<=n; i++){
				sum+=i;
			}
			return sum;
		}
	%>
	<%
		int num = Integer.parseInt(request.getParameter("number"));
		
		for(int i=1; i<num; i++){
			out.print(i+"+");
		}
		
		out.print(num+"="+sum(num));
	%>
	
</body>
</html>