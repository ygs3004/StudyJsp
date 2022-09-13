<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

<%@ include file="menu.jsp" %>

<%!
	String greeting="웹 쇼핑몰에 오신 것을 환영합니다.";
	String tagline="Welcome to web MarketMarket";
%>

<div class="jumbotron">
	<div class="container">
		<h1 class ="dispaly-3">
			<%=greeting%>
		</h1>
	</div>
</div>

<div class="container">
	<div class="text-center">
		<h3><a href="products.jsp"><%=tagline%></a></h3>
		<%
			response.setIntHeader("Refresh",5);
			Calendar day = Calendar.getInstance();
			String am_pm;
			int hour=day.get(Calendar.HOUR_OF_DAY);
			int minute=day.get(Calendar.MINUTE);
			int second=day.get(Calendar.SECOND);
			if(hour / 12==0){
				am_pm="AM";
			}else{
				am_pm="PM";
				hour=hour-12;
			}
			String CT = hour +":"+minute+":" + second +" "+am_pm;
			out.println("현재 접속 시각:"+CT+"\n");
		%>
	</div>
</div>



<%@ include file="footer.jsp" %>

</body>
</html>