<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <%
        String cartId = session.getId();
    %>
</head>
<style type="text/css">
    table{
        width:100%;
    }

    tr{
        height:70px;
    }

</style>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">장바구니</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <table width="100%">
                <tr>
                    <td align="right"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a>
                    <a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a></td>
                </tr>
            </table>
        </div>
        <div style="padding-top:50px">
            <table class="table table-hover">
                <tr>
                    <th>상품</th>
                    <th>가격</th>
                    <th>수량</th>
                    <th>소재</th>
                    <th>비고</th>
                </tr>
                <%
                    int sum=0;
                    ArrayList<Book> cartlist = (ArrayList<Book>)session.getAttribute("cartlist");
                    if(cartlist==null)
                        cartlist = new ArrayList<Book>();

                    for(int i=0; i< cartlist.size(); i++){
                        Book book = cartlist.get(i);
                        int total = book.getUnitPrice()*book.getQuantity();
                        sum+=total;
                %>
                <tr>
                    <td><%=book.getBookId()%>-<%=book.getName()%></td>
                    <td><%=book.getUnitPrice()%></td>
                    <td><%=book.getQuantity()%></td>
                    <td><%=total%></td>
                    <td><a href="./removeCart.jsp?id=<%=book.getBookId()%>" class="badge badge-danger">삭제</a></td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>총액</th>
                    <th></t<%=sum%>h>
                </tr>
            </table>
            <a href="./books.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>