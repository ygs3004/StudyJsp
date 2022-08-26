<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p> 아이디 : <%=person.getId() %>
	<p> 이름 : <%=person.getName() %>
		<%
			person.setId(201820005);
			person.setName("홍길동");
		%>
		<jsp:include page="useBean03.jsp"/>		
</body>
</html>