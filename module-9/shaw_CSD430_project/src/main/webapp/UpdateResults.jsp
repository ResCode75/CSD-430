<!--  Rachel Shaw - CSD430 - Database project -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= 'dbfunctions.UpdateBean' %>
<%@ page import= 'dbfunctions.DisplayBean' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= 'stylesheet' href= 'updaterecord.css'>
<title>Insert title here</title>
</head>
<body>
	<% 
		DisplayBean db = new DisplayBean();
		UpdateBean ub = new UpdateBean();
		String id = request.getParameter("id");
		String booktitle = request.getParameter("title");
		String bookAuthorFirst = request.getParameter("fname");
		String bookAuthorLast = request.getParameter("lname");
		String bookGenre = request.getParameter("genre");
		String bookFormat = request.getParameter("format");
		
		ub.setID(id);
		ub.setTitle(booktitle);
		ub.setFname(bookAuthorFirst);
		ub.setLname(bookAuthorLast);
		ub.setGenre(bookGenre);
		ub.setFormat(bookFormat);
	
		ub.updateTable();
		
	%>
	<div id= container>
	
	<h1> Update Records</h1>

	
	
	<div id= "select">
		Select a record to update:
		<%= ub.updateOptions() %>
	</div>
	
	
	<div id= "Form">
		<h2>Updated Record:</h2>
		<%= db.displayResults(id) %>
	</div>
	
	<a href= "Index.jsp"> Back to Homepage</a>
	
</div>
	
	
</body>
</html>