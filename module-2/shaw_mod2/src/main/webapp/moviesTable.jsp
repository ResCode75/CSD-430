<!-- Rachel Shaw - 2.2 Assignment 5/30/2025 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel= "stylesheet" href= "Style.css" type = "text/css">
        <title>Shaw 2.2 Assignment </title>
    </head>
    <body>
    
    	<%! 
       
       		String getData(int index1, int index2){
    	   		//multidimensional Array holding data on movies I enjoy
    	   		String[][] tableData = {
      				{"Movie", "Director", "Genre"},
      				{"Nope", "Jordan Peele", "Science Fiction"},
      				{"Barbie", "Greta Gerwig", "Comedy/drama"},
      				{"Nosferatu", "Reobert Eggers", "Fantasy/Horror"},
      				{"Poor Things", "Yorgos Lanthimos", "Comedy"},
      				{"Hereditary", "Ari Aster", "Horror"}
      			};
    	   		
    	   		//return value at given indexes
    	   		return tableData[index1][index2];
    	   		
       		}
      	%>
      	
   		<div id = container>
   		
   		
   			<div id = titleStuff>
		    	<h1>Movies I Enjoy</h1>
		        <h3>Rachel Shaw - 2.2 Assignment - 5/30/2025</h3>
	    	</div>
       
            
		    <div id = tableDiv>
		    	
		    	<table border="1">
		    	   
		       		
		        <%
		        //Loop to generate table
		            for(int i = 0; i < 6; ++i){
		                
		                out.println("<tr>");
		                
		                for(int j = 0; j < 3; ++j){
		                	//table heading for the first row
		                	if(i == 0){
		                		//retrieve data from matrix
		                		out.println("<th>" + getData(i, j) + "</th>");
		                	}
		                	else{
		                    	out.println("<td>" + getData(i,j) + "</td>");
		                	}
		                    
		                }
		
		            out.println("</tr>");
		        }
		
		    	%>
		    </table>
		    
		    </div>
   		</div>
	    
        
    </body>
</html>