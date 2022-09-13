<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>removeCart.jsp</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    if((id == null) || id.trim().equals("")){
        response.sendRedirect("books.jsp");
        return;
    }

    BookRepository dao = BookRepository.getInstance();

    Book book = dao.getBookByID(id);
    if(book == null){
        response.sendRedirect("exceptionNoBookId.jsp");
    }

    ArrayList<Book> cartlist = (ArrayList<Book>)session.getAttribute("cartlist");
    Book goodsQnt = new Book();
    for(int i=0; i<cartlist.size(); i++){
        goodsQnt = cartlist.get(i);
        if(goodsQnt.getBookId().equals(id)){
            cartlist.remove(goodsQnt);
        }
    }

    response.sendRedirect("cart.jsp");
%>
</body>
</html>