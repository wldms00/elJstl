<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>request.attribute</h3>
	
	<h4>스크립틀릿 사용</h4>
	<%@ page import="vo.UserVo" %>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	no = <%= userVo.getNo() %><br>
	name = <%= userVo.getName() %><br>
	email = <%= userVo.getEmail() %><br>
	password = <%= userVo.getPassword() %><br>
	gender = <%= userVo.getGender() %><br>
	
	num = <%= num %><br>
	str = <%= str %><br>
	
	
	<h4>el 사용</h4>
	no = ${requestScope.userVo.no}<br>
	name = ${requestScope.userVo.name}<br>
	email = ${requestScope.userVo.email}<br>
	password = ${requestScope.userVo.password}<br>
	gender = ${requestScope.userVo.gender}<br>
	
	num = ${requestScope.num}<br>
	str = ${requestScope.str}<br>
	

	<h4>el 사용(requestScope생략)</h4>
	no = ${userVo.no}<br>
	name = ${userVo.name}<br>
	email = ${userVo.email}<br>
	password = ${userVo.password}<br>
	gender = ${userVo.gender}<br>
	
	num = ${num}<br>
	str = ${str}<br>
	

</body>
</html>