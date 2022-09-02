<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel = "stylesheet"
		  href="./resources/css/bootstrap.min.css">
	<style type="text/css">
		h4{
			margin-top : 20px;
			font-size : 14px;
		}
		h5{
			font-size : 13px;
		}

	</style>
	<title>도서 목록</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">도서 목록</h1>
	</div>
</div>
<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBook = dao.getAllBooks();
%>
<%
	for(int i=0; i<listOfBook.size(); i++){
		Book book = listOfBook.get(i);
%>

<div class="container">

	<div class="row" >

		<div class="col-2">
			<img src="./resources/images/upload/<%=book.getFileName()%>" style="width:160px; height:200px">
		</div>

		<div class="col-8">
			<h3><b><%=book.getName() %></b></h3>
			<p><h4><%=book.getDescription() %></h4>
			<p><h5><%=book.getAuthor()%>원 | <%=book.getPublisher()%>원 | <%=book.getUnitPrice()%>원</h5>
		</div>

		<div class="col-2" >
			<br><br>
			<a href="book.jsp?id=<%=book.getBookdId()%>"
			   class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
		</div>

	</div>
	<hr>
</div>
<%
	}
%>


<jsp:include page="footer.jsp"/>
</body>
</html>