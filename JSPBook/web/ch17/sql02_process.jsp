<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>sql02_process.jsp</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");
    %>
    <sql:setDataSource var="dataSource" url="jdbc:oracl:thin:@localhost:1521:xe"
        driver="oracle.jdbc.driver.OracleDriver"
        user="scott"
        password="tiger"/>

    <sql:update dataSource="${dataSource}" var="resultSet">
        INSERT INTO memberEX(id, name, passwd) VALUES(?,?,?)
        <sql:param value="<%=id%>"/>
        <sql:param value="<%=name%>"/>
        <sql:param value="<%=passwd%>"/>
    </sql:update>
    <c:import var="url" url="sql01.jsp"/>
    ${url}
</body>
</html>
