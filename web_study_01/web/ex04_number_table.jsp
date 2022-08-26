<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border ="1">
	<%
		for(int i=1; i<=3; i++){
	%>
			<tr>
				<td>
					Number		
				</td>	
				 <td>
				 <%=i%>
				 </td>
			</tr>
	<%		
		}
	%>
	</table>
</body>
</html>