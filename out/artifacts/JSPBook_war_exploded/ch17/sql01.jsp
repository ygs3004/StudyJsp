<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>sql01.jsp</title>
</head>
<body>
    <sql:setDataSource var="dataSource" url="jdbc:oracle:thin:@localhost:1521:XE"
        driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger"/>

    <sql:query var="resultSet" dataSource="${dataSource}">
        SELECT * FROM memberEX
    </sql:query>

    <table border="1">
        <tr>
            <c:forEach var="columnName" items="${resultSet.columnNames}">
                <th width="100"><c:out value="${columnName}"/></th>
            </c:forEach>
        </tr>
        <c:forEach var="row" items="${resultSet.rowsByIndex}">
            <tr>
                <c:forEach var="column" items="${row}" varStatus="i">
                    <td>
                        <c:if test="${column != null}">
                            <c:out value="${column}"/>
                        </c:if>
                        <c:if test="${column==null}">
                            &nbsp;
                        </c:if>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>


</body>
</html>
