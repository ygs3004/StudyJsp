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
		response.sendRedirect(request.getParameter("site"));
		
	
	/* 		String site = request.getParameter("site");
		switch(site){
		case "구글" : 
			response.sendRedirect("https://www.google.com");
			break;
		case "네이버" : 
			response.sendRedirect("https://www.naver.com");
			break;
		case "다음" : 
			response.sendRedirect("https://www.daum.net");
			break;
 		default : 
			response.sendRedirect("ex03_comboFormEx.jsp");
		} */
	%>
</body>
</html>