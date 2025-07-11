<!--  Rachel Shaw - CSD430 - Database project -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "dbfunctions.UpdateBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= 'stylesheet' href= updaterecord.css>
<title>Insert title here</title>
</head>
<body>
<%
		UpdateBean ub = new UpdateBean();

	%>
	
<div id= container>
	
	<h1> Update Records</h1>

	
	
	<div id= "select">
		Select a record to update:
		<%= ub.updateOptions() %>
		
	</div>
	
	<a href= "Index.jsp"> Back to Homepage</a>
	

</div>


	
	
	

</body>
</html>