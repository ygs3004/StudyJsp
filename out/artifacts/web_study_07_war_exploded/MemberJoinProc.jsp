<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String[] hobby=request.getParameterValues("hobby");

    String texthobby="";

    for(int i=0; i<hobby.length; i++){
        texthobby += hobby[i]+" ";
    }
//    texthobby=String.join("",hobby);

%>

<!-- useBean 액션태그를 사용하여 객체 생성 i="mben" setProperty -->

<jsp:useBean id="mbean" class="model.MemberBean">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>

<%
    mbean.setHobby(texthobby);
%>

OK MemberJoinProc!!
<jsp:getProperty name="mbean" property="hobby"/>

</body>
</html>
