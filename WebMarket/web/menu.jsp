<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class = "navbar navbar-expand navbar-dark bg-dark">
	<div class = "container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/welcome.jsp">Home</a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<c:choose>
						<c:when test="${empty sessionId}">
							<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/loginMember.jsp">로그인</a></li>
							<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/addMember.jsp">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li style="padding-top: 7px; color:white">[<%=sessionId%>님]</li>
							<li class="nav-item"><a class="nav-link" href="<c:url value="${pageContext.request.contextPath}/member/logoutMember.jsp"/>"></a></li>
							<li class="nav-item"><a class="nav-link" href="<c:url value="${pageContext.request.contextPath}/member/updateMember.jsp"/>">회원수정</a></li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products.jsp">상품 목록</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/addProduct.jsp">상품 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/editProduct.jsp?edit=update">상품 수정</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/editProduct.jsp?edit=delete">상품 삭제</a></li>
				</ul>
			</div>
	</div>
</nav>