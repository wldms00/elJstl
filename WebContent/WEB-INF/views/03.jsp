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
	<h3>파라미터 값 처리</h3>
	
	
	<h4>스클립틀릿 사용</h4>
	<!-- localhost:8000/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->
	<%
		String id = request.getParameter("id"); //you
		String password = request.getParameter("pw");// 1111
		String name = request.getParameter("name");//재석

		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>

	id=<%=id%> <br> 
	password=<%=password%> <br> 
	name=<%=name%> <br> 
	num1=<%=num1%> <br> 
	num2=<%=num2%> <br> 


	<h4>el 사용</h4>
	<!-- localhost:8000/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->
	id=${param.id} <br>
	password=${param.pw} <br> 
	name=${param.name} <br> 
	num1=${param.num1} <br> 
	num2=${param.num2} <br> 

</body>
</html>