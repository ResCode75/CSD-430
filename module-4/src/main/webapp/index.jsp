<!-- Rachel Shaw - 4.2 Assignment - 6/14/2025 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href= "style.css">
<link href="https://fonts.googleapis.com/css2?family=Imperial+Script&display=swap" rel="stylesheet">
<title>simple form practice</title>
</head>
<!-- Header because I wanted it to look pretty :) -->
<header>
		 <img src="images/baratie-Picsart-BackgroundRemover.jpg" alt="BaratieLogo"  width="150" >
        <h1>Cafe Baratie</h1>
        
        <div class="navbar">
            <a> Locations</a>
            <a> Menu</a>
            <a> About us</a>
            <a id= "feedback"> Feedback </a>
        </div>
</header>
<body>


	<h1>Guest Feedback Form</h1>
	<div id= "message">
		Our customers are our top priority at Cafe Baratie and we value your feedback! Let us know how your visit went by filling out the form below!
	</div>
	
	
	<!-- Create form -->
	<div id= "form">
			<form name= "simpleForm" action= "results.jsp" method = "post">
			
				<div id = dateandtime>
					<label for="date">Select the date and time of your visit:</label> <BR>
  					<input type="date" id="date" name="date">
  					
  					 <input type="time" id="time" name="time"><BR>
					
				</div>

				<div id= "field1">
					Please rate your experience at Cafe Baratie:<BR>
					<input type= "radio" id= "vdissatisfied" name= "satisfaction" value= "very dissatisfied">
						<label id= "vdissatisfiedlabel" for="vdissatisfied">very dissatisfied</label>
						
					<input type= "radio" id= "dissatisfied" name= "satisfaction" value= "dissatisfied">
						<label id= "dissatisfiedlabel" for= "dissatisfied">dissatisfied</label>
						
					<input type= "radio" id= "satisfied" name= "satisfaction" value= "satisfied">
						<label id= "satisfiedlabel" for="satisfied">satisfied</label>
						
					<input type= "radio" id= "vsatisfied" name= "satisfaction" value= "very satisfied">
						<label id= "vsatisfiedlabel" for="vsatisfied">very satisfied</label>
						
				</div>
				<!-- HTML code for the checkboxes -->
				<div id= "field2">
					What is the reason behind your selection? (select all that apply) <br>
					<input type= "checkbox" name= "reasons" value= "staff/service"> staff/service<br>
					<input type= "checkbox" name= "reasons" value= "food flavor/quality"> food flavor and/or quality <br>
					<input type= "checkbox" name="reasons" value= "pricing"> pricing <br> 
					<input type= "checkbox" name= "reasons" value= "environment/entertainment"> environment and/or entertainment<br>
					<input type= "checkbox" name= "reasons" value= "other"> other <br>
				</div>
				
				<div id= field3>
					
					Please provide any additional comments you may have about your experience: <br>
					<textarea id="comments" name="comments"></textarea>
				</div>
			
				<input type= "submit" value= "submit" id= "submit">
			</form>
		</div>
	
	

</body>
</html>