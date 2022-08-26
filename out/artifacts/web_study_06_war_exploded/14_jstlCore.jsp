<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<c:set var="msg" value="Hello"></c:set>
\${msg}=${msg}<br>

<c:set var="age">
    30
</c:set>
\${age}=${age}<br>

<c:set var="member" value="<%=new com.saeyan.javabeans.MemberBean()%>"/>
<c:set target="${member}" property="name" value="홍길동"/>
<c:set target="${member}" property="userId">hong</c:set>

EL
\${member}=${member}<br>
\${member}=${member.name}<br>
\${member}=${member.userId}<br>

<c:set var="add" value="${10+5}"/>
\${add}=${add}<br>

<c:set var="flag" value="${10>5}"/>
\${flag}=${flag}<br>

<c:remove var="flag"/>
\${flag}=${flag}<br>
</body>
</html>
