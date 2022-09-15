<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ include file="dbconn.jsp"%>

<%
    String filename = "";
    String realFolder = request.getRealPath("/resources/images/upload"); // 웹 어플리케이션 상대 경로
    String encType = "UTF-8"; // 인코딩 유형
    int maxSize = 5*1024*1024;

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
    String productId = multi.getParameter("productId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String manufacturer = multi.getParameter("manufacturer");
    String category = multi.getParameter("category");
    String unitsInStock = multi.getParameter("unitsInStock");
    String condition = multi.getParameter("condition");

    Integer price;

    if (unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.parseInt(unitPrice);

    long stock;

    if (unitsInStock.isEmpty())
        stock = 0;
    else
        stock = Long.parseLong(unitsInStock);

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "SELECT*FROM product WHERE p_id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productId);
    rs = pstmt.executeQuery();

    if(rs.next()){
        if(fileName!=null){
            sql="UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=?, p_filename=? WHERE p_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, price);
            pstmt.setString(3, description);
            pstmt.setString(4, manufacturer);
            pstmt.setString(5, category);
            pstmt.setLong(6, stock);
            pstmt.setString(7, condition);
            pstmt.setString(8, fileName);
            pstmt.setString(9, productId);
            pstmt.executeUpdate();
        }else{
            sql="UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=? WHERE p_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, price);
            pstmt.setString(3, description);
            pstmt.setString(4, manufacturer);
            pstmt.setString(5, category);
            pstmt.setLong(6, stock);
            pstmt.setString(7, condition);
            pstmt.setString(8, productId);
            pstmt.executeUpdate();
        }

        if (rs != null)
            rs.close();
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();

        response.sendRedirect("editProduct.jsp?edit=update");
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>processUpdateProduct.jsp</title>
</head>
<body>

</body>
</html>
