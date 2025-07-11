<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import = 'dbfunctions.DeleteBean' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete a Record</title>
<link rel ='stylesheet' href= 'deleterecords.css'>
</head>
<body>
	<%
		DeleteBean db = new DeleteBean();
	%>
	
	<div id= "container">
		<h1> Delete a Record </h1>
		
		<div id = 'select'>
			select a record to delete: 
			<%= db.deleteOptions() %>
		</div>
		
		<a href= "Index.jsp">Back to Homepage</a>

	</div>
	
	   
</body>
</html>