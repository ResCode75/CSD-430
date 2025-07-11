<!--  Rachel Shaw - CSD430 - Database project -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = 'dbfunctions.DisplayBean'%>
<%@ page import = 'dbfunctions.DeleteBean' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete a Record</title>
<link rel='stylesheet' href='deleterecords.css'>
</head>
<body>
	<%
		DeleteBean db = new DeleteBean();
		DisplayBean display = new DisplayBean();
		
		String selected = request.getParameter("select");
		//delete record
		db.deleteRecord(selected);
	%>
	
	<div id= 'container'>
		<h1> Delete a Record </h1>
		
		<!-- Display options -->
		<div id = 'select'>
			select a record to delete: 
			<%= db.deleteOptions() %>
		</div>
		
		<div id= 'results'>
			<h2>Updated Table: </h2>
			<%=display.displayAll() %>
		</div>
		
		<a href= "Index.jsp">Back to Homepage</a>
		
	</div>
	
</body>
</html>