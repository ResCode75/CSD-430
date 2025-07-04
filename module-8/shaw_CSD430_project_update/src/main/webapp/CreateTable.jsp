<!--  Rachel Shaw - csd430- database project -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dbfunctions.Configure" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Initial configuration</title>
<link rel="stylesheet" href="createtable.css">
</head>
<body>
	
	<%
		Configure db = new Configure();
		
	%>
		
<div id= "container">

	<div id= header>
		<h1> Database and Table Configuration</h1>
	</div>
	
	
	<div id="updates">

		
		<%= db.CreateTable() %>
		<%= db.populate() %>
	
	</div>
	
	<div id="back">
		<a href= Index.jsp>Back to Homepage</a>
	</div>
	
</div>

</body>
</html>