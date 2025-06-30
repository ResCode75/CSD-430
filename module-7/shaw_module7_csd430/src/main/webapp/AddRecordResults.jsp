<!-- Rachel Shaw - CSD430 - Database Project  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import= "dbfunctions.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Records</title>
<link rel= "stylesheet" href= "addrecord.css">
</head>
<body>
	
	<!-- configure beans and set all values in update bean -->
	<% 
		CreateBean ub = new CreateBean();
		DisplayBean db = new DisplayBean();
		
		String booktitle = request.getParameter("title");
		String bookAuthorFirst = request.getParameter("fname");
		String bookAuthorLast = request.getParameter("lname");
		String bookGenre = request.getParameter("genre");
		String bookFormat = request.getParameter("format");
		
		ub.setTitle(booktitle);
		ub.setFname(bookAuthorFirst);
		ub.setLname(bookAuthorLast);
		ub.setGenre(bookGenre);
		ub.setFormat(bookFormat);
		
	%>
	<div id= "container">
	
		<div id= "header">
			<h1>Add Records</h1>
		</div>
	
	
		<form name= "addRecord" action= "AddRecordResults.jsp" method= "post">
		<div class="input">
		
			<label for= "title">Book Title: </label>
			<input type= "text" id= "title" name= "title"><br>
		
		</div>
		
		<div class="input">
			<label for= "authorFirst">Author's first name: </label>
			<input type= "text" id= "fname" name= "fname"><br>
		</div>
		
		<div class="input">
			<label for= "authorLast">Author's last name: </label>
			<input type= "text" id = "lname" name= "lname"><br>
		</div>
		
		<div class="input">
			<label for= "genre"> Book genre: </label>
			<input type= "text" id = "genre" name= "genre"><br>
		</div>
		
		<div class="input">
			<label for= "format">Book format:</label>
			<input type= "text" id= "format" name= "format"><br>
		</div>
		
		<div class="input">
			<input type= "submit" value= "submit" id= "submit">
		</div>
		
	</form>
		
		<div id = "back">
			<a href = Index.jsp>Back to Homepage</a>
		</div>
		
		<div id= "message">
			<%= ub.createRecord() %>
		</div>
		
		<h2>UPDATED TABLE: </h2>
		
		<%= db.displayResults("DisplayAll") %>
	
	</div>

</body>
</html>