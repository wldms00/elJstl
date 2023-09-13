<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="vo.UserVo" %>
	<%@page import="java.util.List" %>

	<%
		List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");	
	%>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			
			<%
			for(UserVo vo : userList){
			%>
			<tr>
				<td><%=vo.getNo()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getEmail()%></td>
				<td><%=vo.getPassword()%></td>
				<td><%=vo.getGender()%></td>
			</tr>
			<%} %>
			
			
			<%-- 
			<%
			for(int i=0; i<userList.size(); i++){
				UserVo vo = userList.get(i);
			%>
			<tr>
				<td><%=vo.getNo()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getEmail()%></td>
				<td><%=vo.getPassword()%></td>
				<td><%=vo.getGender()%></td>
			</tr>
			<%} %>
			 --%>
		</tbody>
	</table>

	<br>
	---------------------------
	<br>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>status.index</th>
				<th>status.count</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}"  var="userVo" varStatus="status">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<br>
	-------------------------------------------
	<br>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>status.index</th>
				<th>status.count</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="userVo" begin="1" end="10" step="2" varStatus="status">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	
</body>
</html>