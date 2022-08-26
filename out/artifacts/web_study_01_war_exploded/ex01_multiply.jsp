<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	public int multiply(int x, int y){
		return x*y;
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
2개 정수의 곱셈 결과를 반환하는 메서드를 만들어 아래와 같이 실행되도록 하세요.
메서드는 선언문 앞에 정의하여 사용하세요

메서드 원형 : public int multiply(int x, int y)

실행 결과 
두 정수의 곱셈=200<br><br>

두 정수의 곱셈=<%=multiply(10, 20)%>
</body>
</html>