<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if ("1".equals(request.getParameter("color"))) {
	%>
	<span style="color: red">빨강</span>
	<%
	} else if ("2".equals(request.getParameter("color"))) {
	%>
	<span style="color: green">초록</span>
	<%
	} else if ("3".equals(request.getParameter("color"))) {
	%>
	<span style="color: blue">파랑</span>
	<%
	} else {	
	%>
	<span>color파라미터 없음</span>
    <%} %>
	<br>
	<br>
	${param.color}
	<br>
	<!-- if ("1".equals(request.getParameter("color"))) { -->
	<c:if test="${param.color == '1'}">
		<span style="color: red">빨강</span>
	</c:if>
	
	<c:if test="${param.color == '2'}">
		<span style="color: green">초록</span>
	</c:if>

	<c:if test="${param.color eq '3'}">
		<span style="color: blue">파랑</span>
	</c:if>


	<!-- ------------------------------------------------- -->
	<%@ page import="vo.UserVo"%>

	<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
	%>

	<div id="header">
		<h1>MySite</h1>
		<ul>
			<%
			if (authUser == null) {
			%>
			<!-- 로그인 전 -->
			<li><a href="/mysite/user?a=loginform">로그인</a></li>
			<li><a href="/mysite/user?a=joinform">회원가입</a></li>
			<%
			} else {
			%>
			<!-- 로그인 후 -->
			<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
			<li><a href="/mysite/user?a=logout">로그아웃</a></li>
			<li><%=authUser.getName()%>님 안녕하세요^^;</li>
			<%
			}
			%>
		</ul>
	</div>
	<!-- /header -->
	
	
	
	<div id="header">
		<h1>MySite</h1>
		<ul>
			<c:if test="${empty authUser}">
				<!-- 로그인 전 -->
				<li><a href="/mysite/user?a=loginform">로그인</a></li>
				<li><a href="/mysite/user?a=joinform">회원가입</a></li>
			</c:if>
		
			<c:if test="${!(empty authUser)}">
				<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
				<li><a href="/mysite/user?a=logout">로그아웃</a></li>
				<li>${authUser.name}님 안녕하세요^^;</li>
			</c:if>
		
		</ul>
	</div>
	<!-- /header -->
	
	
	
	
	

</body>
</html>