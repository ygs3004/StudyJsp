<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="dao.BookRepository"%>
<%@ page import="dto.Book"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

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
    PreparedStatement pstmt = null;

    String sql = "INSERT INTO book VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, bookId);
    pstmt.setString(2, name);
    pstmt.setInt(3, price);
    pstmt.setString(4, author);
    pstmt.setString(5, publisher);
    pstmt.setString(6, description);
    pstmt.setLong(7, category);
    pstmt.setInt(8, stock);
    pstmt.setString(9, totalPages);
    pstmt.setString(10, releaseData);
    pstmt.setString(11, condition);
    pstmt.setString(12, fileName);

    pstmt.executeUpdate();

    if(pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close();


    response.sendRedirect("books.jsp");
    /*
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
*/

%>

</body>
</html>
