<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>removeCart 장바구니에서 물품 제거</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    if(id==null || id.trim().equals("")){
        response.sendRedirect("products.jsp");
        return;
    }

    ProductRepository dao = ProductRepository.getInstance();

    Product product = dao.getProductById(id);
    if(product == null){
        response.sendRedirect("exceptionNoProductId.jsp");
    }

    ArrayList<Product> cartlist = (ArrayList<Product>)session.getAttribute("cartlist");
    Product goodsQnt = new Product();
    for(int i=0; i<cartlist.size(); i++){
        goodsQnt = cartlist.get(i);
        if(goodsQnt.getProductId().equals(id)){
            cartlist.remove(goodsQnt);
        }
    }

    response.sendRedirect("cart.jsp");
%>
</body>
</html>
