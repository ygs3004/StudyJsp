# jspStudy

- 학원 자바수업 코드파일(web_study_#)



- 쉽게배우는 Jsp웹 프로그래밍
   - BookMarket : 도서판매 사이트, 연습문제
   - WebMarket : 상품판매 사이트(전자기기), 예제





jsp프로젝트 절대 경로 html태그 안에서
${pageContext.request.contextPath}

<%%> 안에서 resouces/mages/upload -> 상대경로
<% 
request.getServletContext().getRealPath("resources/images/upload");
%>
