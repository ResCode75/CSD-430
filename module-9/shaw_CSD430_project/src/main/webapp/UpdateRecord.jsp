<!--  Rachel Shaw - CSD430 - Database project -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= 'dbfunctions.UpdateBean' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = 'stylesheet' href= 'updaterecord.css'>
<title>Update a Record</title>
</head>
<body>
	<%
	 	String requested = request.getParameter("select");
	
		UpdateBean ub = new UpdateBean();
	%>
	
<div id= container>
	
	<h1> Update Records</h1>

	
	
	<div id= "select">
		<!-- display options  -->
		Select a record to update:
		<%= ub.updateOptions() %>
	</div>
	
	<div id= "form">
	
		Edit records in the field below: 
		<%= ub.editRecords(requested) %>
	</div>
	
	<a href= "Index.jsp"> Back to Homepage</a>

</div>
	
 

</body>
</html>