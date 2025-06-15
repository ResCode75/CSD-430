<!-- Rachel Shaw - 4.2 assignment - 6/14/2025 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "beanpackage.FormBean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href= "resultstyle.css">
<link href="https://fonts.googleapis.com/css2?family=Imperial+Script&display=swap" rel="stylesheet">
<title>Results Page</title>
</head>

<header>
		<img src="images/baratie-Picsart-BackgroundRemover.jpg" alt="BaratieLogo"  width="150" >
        <h1>Cafe Baratie</h1>

        
        <div class="navbar">
            <a> Locations</a>
            <a> Menu</a>
            <a> About us</a>
            <a href= "index.jsp"> Feedback </a>
        </div>
</header>

<body>

	<jsp:useBean id="FormBean" class ="beanpackage.FormBean"/>
	<jsp:setProperty name="FormBean" property= "*"/>
	
	<%
		//setproperty wasn't working for checkboxe inputs so I had to improvise..
		String [] reasoning = request.getParameterValues("reasons");
		FormBean.setReasons(reasoning);
	%>
	
	<h1>Thank you!</h1>
	<div id= "message">
		We appreciate your feedback! The following review will be sent to our guest relations team:
	</div>
	
<div id= results>
				<!-- retrieve data from java bean -->
				<div id = "date">
					<label>Time of visit: </label> 
					<jsp:getProperty name= "FormBean" property= "date"/>
					at
					<jsp:getProperty name= "FormBean" property= "time"/>
				</div>
				
				<div id = "satisfaction"> 
					<label> Guest Satisfaction: </label> 
					<jsp:getProperty name= "FormBean" property= "satisfaction"/>
				</div> 
				
				
				<div id= "reasoning">
					<label> Reasoning: </label>
					<!-- had to call getReasons in a servlet as getProperty kept raising an error -->
					
					<%= FormBean.getReasons() %>
	
				</div>
				
				<div id= "comments">
					<label> Additional comments: </label> <br>
					 <jsp:getProperty name= "FormBean" property= "comments"/>
				</div>
				
				
	
</div>
		
				
		

	
</body>
</html>