<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>addCart.jsp</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    if (id==null || id.trim().equals("")){
        response.sendRedirect("books.jsp");
        return;
    }

    BookRepository dao = BookRepository.getInstance();

    Book book = dao.getBookByID(id);
    if(book == null){
        response.sendRedirect("exceptionNoBookId.jsp");
    }

    ArrayList<Book> goodsList = dao.getAllBooks();
    Book goods = new Book();
    for(int i=0; i<goodsList.size(); i++){
        goods = goodsList.get(i);
        if(goods.getBookId().equals(id)){
            break;
        }
    }

    ArrayList<Book> list = (ArrayList<Book>)session.getAttribute("cartlist");
    if(list == null){
        list = new ArrayList<Book>();
        session.setAttribute("cartlist",list);
    }

    int cnt = 0;
    Book goodsQnt = new Book();
    for(int i=0; i<list.size(); i++){
        goodsQnt = list.get(i);
        if(goodsQnt.getBookId().equals(id)){
            cnt++;
            int orderQuantity = goodsQnt.getQuantity();
        }
    }

    if(cnt==0){
        goods.setQuantity(1);
        list.add(goods);
    }

    response.sendRedirect("book.jsp?id="+id);
%>
</body>
</html>
