<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book" %>
<%@ page errorPage="exceptionNoBookId.jsp"%>
<jsp:useBean id="productDAO" class="dao.BookRepository" scope="session"/>

<html>
<head>
    <meta charset="UTF-8">
    <link rel = "stylesheet"
          href="./resources/css/bootstrap.min.css">
    <title>상품 상세 정보</title>
    <script type="text/javascript">
        function addToCart(){
            if(confirm("상품을 장바구니에 추가하시겠습니까?")){
                document.addForm.submit();
            }else{
                document.addForm.reset();
            }
        }
    </script>
</head>
<body>

<jsp:include page="menu.jsp"/>

<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">도서 정보</h1>
    </div>
</div>
<%
    String id = request.getParameter("id");
    BookRepository dao = BookRepository.getInstance();
    Book book = dao.getBookByID(id);
%>


<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h3><%=book.getName()%>
            </h3>
            <p><%=book.getDescription()%>
            <p><b>도서 코드 : </b><span class="badge badge-danger">
                                  <%=book.getBookId()%></span>
            <p><b>저자</b> : <%=book.getAuthor()%>
            <p><b>재고 수</b> : <%=book.getUnitsInStock()%>
            <p><b>총 페이지수</b> : <%=book.getTotalPages()%>
            </p>
            <p><b>출판일</b> : <%=book.getReleaseDate()%>
            </p>
            <h4><%=book.getUnitPrice()%>원</h4>
            <p><form name="addForm" action="./addCart.jsp?id=<%=book.getBookId()%>" method="post">
                <a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
                <a href="#" class="btn btn-info" onclick="addToCart()">도서 주문 &raquo;</a>
                <a href="./books.jsp" class="btn btn-primary">도서목록 &raquo;</a>
        </form>
        </div>
        <div class="col-md-6">
            <img src="resources/images/upload/<%=book.getFileName()%>" style="width:330px; height:450px" >
        </div>

    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>