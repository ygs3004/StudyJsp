<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="dao.BookRepository"%>
<%@ page import="dto.Book"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

   String bookId=request.getParameter("bookId");
   String name=request.getParameter("name");
   String unitPrice=request.getParameter("unitPrice");
   String author=request.getParameter("author");
   String description=request.getParameter("description");
   String publisher=request.getParameter("publisher");
   String category=request.getParameter("category");
   String unitsInStock=request.getParameter("unitsInStock");
   String totalPages=request.getParameter("totalPages");
   String releaseData=request.getParameter("releaseData");
   String condition=request.getParameter("condition");

    int price;

    if(unitPrice.isEmpty()){
        price = 0;
    }else{
        price=Integer.parseInt(unitPrice);
    }

    long stock;

    if(unitsInStock.isEmpty()){
        stock = 0;
    }else{
        stock = Long.parseLong(unitsInStock);
    }

    BookRepository dao = BookRepository.getInstance();

    Book newBook = new Book();
    newBook.setBookdId(bookId);
    newBook.setName(name);
    newBook.setUnitPrice(price);
    newBook.setAuthor(author);
    newBook.setDescription(description);
    newBook.setPublisher(publisher);
    newBook.setCategory(category);
    newBook.setUnitsInStock(stock);
    newBook.setTotalPages(Integer.parseInt(totalPages));
    newBook.setReleaseDate(releaseData);
    newBook.setCondition(condition);

    dao.addBook(newBook);

    response.sendRedirect("books.jsp");
%>

</body>
</html>
