<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="dao.BookRepository"%>
<%@ page import="dto.Book"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String realFolder = request.getServletContext().getRealPath("resources/images/upload");
    int maxSize = 5 * 1024 * 1024;
    String encType = "UTF-8";

    MultipartRequest multi = new MultipartRequest(request, realFolder,
            maxSize, encType, new DefaultFileRenamePolicy());

    String bookId=multi.getParameter("bookId");
    String name=multi.getParameter("name");
    String unitPrice=multi.getParameter("unitPrice");
    String author=multi.getParameter("author");
    String description=multi.getParameter("description");
    String publisher=multi.getParameter("publisher");
    String category=multi.getParameter("category");
    String unitsInStock=multi.getParameter("unitsInStock");
    String totalPages=multi.getParameter("totalPages");
    String releaseData=multi.getParameter("releaseData");
    String condition=multi.getParameter("condition");

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

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    BookRepository dao = BookRepository.getInstance();

    Book newBook = new Book();
    newBook.setBookId(bookId);
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
    newBook.setFileName(fileName);

    dao.addBook(newBook);

    response.sendRedirect("books.jsp");
%>

</body>
</html>
