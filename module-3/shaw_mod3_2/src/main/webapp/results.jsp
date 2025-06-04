<!-- Rachel Shaw - 3.2 assignment - 6/4/2025 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<%
		//scriptlet for parsing information from index file
		String satisfaction = request.getParameter("experience");
		String reasons[] = request.getParameterValues("reason");
		String comments = request.getParameter("comments");
	%>
	
<body>
	<h1>Thank you!</h1>
	<div id= "message">
		We appreciate your feedback! The following review will be sent to our guest relations team:
	</div>
	
<div id= results>
				<div id = "satisfaction"> 
					<label> Guest Satisfaction: </label> <%= satisfaction %> 
				</div> 
				<div id= "reasoning">
					<label> Reasoning: </label>
				
				<% 
					//displays values of checked boxes
					for(int i = 0; i < reasons.length; i++){
						if (i == (reasons.length - 1)){
							out.println(" " + reasons[i]);
						}
						else{
							out.println(" " + reasons[i] + ",");
						}
					}
				
				%>
				
				</div>
				<div id= "comments">
					<label> Additional comments: </label> <br>
					 "<%=comments%>"
				</div>
				
				
	
</div>
		
				
		

	
</body>
</html>