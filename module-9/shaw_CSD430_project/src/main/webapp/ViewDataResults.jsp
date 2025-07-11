<!--  Rachel Shaw - CSD430 - Database project -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ page import= "dbfunctions.DisplayBean" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>View Data</title>
<link rel= "stylesheet" href= "viewdata.css"/>
</head>
<body>
<%
	String requestVal = request.getParameter("select");
	
	
	DisplayBean db = new DisplayBean();
%>

<div id= "container">
 	<div id= "heading">
		<h1> Search Database </h1>
	</div>
	
 
	<div id = form> 
		Please select the book you would like to view: <%= db.displayOptions() %>
	</div>
	
	<div id = "back">
		<a href = Index.jsp>Back to Homepage</a>
	</div>
 	
	
	<h2>Results:</h2>
	<div id= "results">
		
 		<%= db.displayResults(requestVal) %>
	
	</div>
	


</div>
 

</body>
</html>