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
		request.setCharacterEncoding("UTF-8");
		String edu = request.getParameter("edu");
		String na = request.getParameter("na");
		String[] likes = request.getParameterValues("like"); // 전송된 name 값이 배열(여러개)일때
		
		out.print("학력 : "+edu+"<br>");
		out.print("소속 국가 : "+na+"<br>");
		out.print("관심 분야 : ");
		
		for(int i=0; i<likes.length; i++){
			out.print(likes[i]+"&nbsp;&nbsp;");	
		}
	%>
	
</body>
</html>