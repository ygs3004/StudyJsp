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
		int age = Integer.parseInt(request.getParameter("age"));
		
		if(age<19){
	%>
	<script type = "text/javascript">
		alert("입장이 불가합니다.");
		history.go(-1);
	</script>
	<%
		}else{
			request.setAttribute("name","홍길동"); //name에 홍길동 저장
			RequestDispatcher dispatcher=request.getRequestDispatcher("20_forwardresult.jsp");
			dispatcher.forward(request, response); //request, response 객체를 가지고 이동
		}
	%>
</body>
</html>