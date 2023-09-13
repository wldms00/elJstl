<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");

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
	<h3>scope변수의 범위</h3>
	
	<h4>스크립틀릿 사용</h4>
	pageName = <%=pageContext.getAttribute("name")%> <br>
	requestName = <%=request.getAttribute("name") %> <br>
	sessionName = <%=session.getAttribute("name") %> <br>
	applicationName = <%=application.getAttribute("name") %> <br>
	
	
	<h4>el 사용</h4>
	pageName = ${pageScope.name} <br>
	requestName = ${requestScope.name} <br>
	sessionName = ${sessionScope.name} <br>
	applicationName = ${applicationScope.name} <br>
	
	<h4>el 사용(scope생략)</h4>
	pageName = ${name} <br>
	requestName = ${name} <br>
	sessionName = ${name} <br>
	applicationName = ${name} <br>

</body>
</html>