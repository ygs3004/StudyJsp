<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색 엔진을 선택하세요</h1>
	<form action="ex03_comboResultEx.jsp" >
		<table>
			<tr>
				<td>
					<select name="site">
						<!--
						<option>구글</option>
						<option>네이버</option>
						<option>다음</option>
						 -->
						<option value="https://www.google.com">구글</option>
						<option value="https://www.naver.com">네이버</option>
						<option value="https://www.daum.net">다음</option>
					</select>
				</td>
				<td>
					<input type="submit" value="확인">
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>