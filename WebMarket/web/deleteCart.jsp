<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>deleteCart.jsp 장바구니 제거</title>
</head>
<body>
<%
    String id = request.getParameter("cartId");
    if(id == null || id.trim().equals("")){
        response.sendRedirect("cart.jsp");
        return;
    }

    session.invalidate();

    response.sendRedirect("cart.jsp");
%>
</body>
</html>
