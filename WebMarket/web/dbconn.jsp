<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    Connection conn = null;
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String user = "scott";
    String password = "tiger";

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url, user, password);
    }catch(Exception e){
        out.println("데이터베이스 연결이 실패했습니다.<br>");
        out.println("SQLException : "+e.getMessage());
    }
%>
