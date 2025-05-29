<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basic JSP file</title>
</head>
<body>
	
	<h2>1.2 Assignment - JSP file test</h2> 
	<h3>Rachel Shaw - 5/28/2025</h3> 
	
	Here's some basic math using a scriptlet :) <br/>
	
	<%
		for(int i = 1; i <= 10; i++){
			int sum = i + i;
			out.println("<br/>" + i + " + " + i + " = " + sum); 
		}

	%>
	


	
</body>
</html>