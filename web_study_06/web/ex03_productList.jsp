<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <form action="ex03_productSel.jsp" method="post">
        <jsp:useBean id="product" class="com.saeyan.javabeans.Product"/>
        <select>
            <%-- <%
                for(String item : product.getProductList()){
                    out.print("<option>"+item+"</option>");
            }
            %>--%>
            <c:forEach var="item" items="${product.productList}">
                <option>${item}</option>
            </c:forEach>
        </select>
        <input type="submit" value="선택">
    </form>
</body>
</html>
