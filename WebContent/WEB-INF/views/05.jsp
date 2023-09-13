<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>
<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>session.attribute</h3>
	
	<h4>스크립틀릿 사용</h4>
	
	<h4>el 사용</h4>
		<div id="header" class="clearfix">
			<h1>
				<a href="">MySite</a>
			</h1>
			
			<%if(authUser != null) {%> <!-- 로그인성공 -->
			<ul>
				<li><%=authUser.getName()%> 님 안녕하세요^^</li>
				<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite3/user?action=updateForm" class="btn_s">회원정보수정</a></li>
			</ul>
		<%}else { %> <!-- 로그인성공x -->
			<ul>
				<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
				<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
			</ul>
		<%} %>
			
		</div>
		<!-- //header -->
	
	<h4>el 사용</h4>
	<div id="header" class="clearfix">
		<h1>
			<a href="">MySite</a>
		</h1>
		
		<%if(authUser != null) {%> <!-- 로그인성공 -->
			<ul>
				<li>$(sessionScope.authUser.name) 님 안녕하세요^^</li>
				<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite3/user?action=updateForm" class="btn_s">회원정보수정</a></li>
			</ul>
		<%}else { %> <!-- 로그인성공x -->
			<ul>
				<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
				<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
			</ul>
		<%} %>
			
		</div>
		<!-- //header -->
		
		<h4>el 사용(sessionScope 생략)</h4>
	<div id="header" class="clearfix">
		<h1>
			<a href="">MySite</a>
		</h1>
		
		<%if(authUser != null) {%> <!-- 로그인성공 -->
			<ul>
				<li>$(authUser.name) 님 안녕하세요^^</li>
				<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite3/user?action=updateForm" class="btn_s">회원정보수정</a></li>
			</ul>
		<%}else { %> <!-- 로그인성공x -->
			<ul>
				<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
				<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
			</ul>
		<%} %>
			
		</div>
		<!-- //header -->
	
	

</body>
</html>