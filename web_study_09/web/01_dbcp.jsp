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
<%--

https://zer0lab.tistory.com/m/22

<Context>

    <Resource

            name="데이터베이스 이름"
            auth="Container"
            driverClassName="oracle.jdbc.driver.OracleDriver"
            type="javax.sql.DataSource"
            url="jdbc:oracle:thin:@ip주소:포트번호:전역 데이터베이스 이름"
            username="데이터베이스 아이디"
            password="데이터베이스 비밀번호"
            maxActive="20"
            maxIdle="10"
            maxWait="5000"  />

</Context>

<web.xml>
<resource-ref>
    <description>Connection</description>
    <res-ref-name>자신의 데이터베이스 이름</res-ref-name>
    <res-type>javax.sql.DataSource</res-type>
    <res-auth>Container</res-auth>
</resource-ref>--%>
