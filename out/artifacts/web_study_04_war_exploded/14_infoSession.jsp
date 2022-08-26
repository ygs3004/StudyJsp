<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    String id_str = session.getId();
    long lastTime = session.getLastAccessedTime();
    long createTime = session.getCreationTime();
    long time_used = (lastTime-createTime);
    int inActive = session.getMaxInactiveInterval();
    boolean b_new = session.isNew();
%>

[1] 세션 ID는 [<%=session.getId()%>]입니다.<br>
[2] 당신이 웹 사이트에 머문 시간은 <%=time_used/(60*1000)%>분<br>
[3] 세션의 유효 시간은 <%=inActive/(60)%> 분 입니다.<br>
[4] 세션이 새로 만들어 졌나요?<br>

<%
    if(b_new)
        out.print("예! 새로운 세션을 만들었습니다");
    else
        out.print("아니오! 새로운 세션을 만들지 않았습니다.");
%>
</body>
</html>
