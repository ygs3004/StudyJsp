<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>DataBase Connection Pool</title>
</head>
<body>
<h4>DB연동</h4>
DBCP(DataBase Connection Pool)

<%
    Context context = null;
    DataSource datasource = null;
    Connection connection = null;

    try {
        context = new InitialContext();
        datasource = (DataSource) context.lookup("java:/comp/env/jdbc/Oracle11g");
        connection = datasource.getConnection();

    } catch (Exception e) {
        e.printStackTrace();
    }
    out.println(connection);
    out.println("DBCP 연동 성공");
%>
</body>
</html>
