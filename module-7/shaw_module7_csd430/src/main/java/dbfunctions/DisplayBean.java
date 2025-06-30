//Rachel Shaw - CSD430 - Database project

package dbfunctions;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DisplayBean implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private static String url= "jdbc:mysql://localhost:3306/CSD430";
	private static String user= "student1";
	private static String pass = "pass";
	Connection conn;
	Statement stmt;
	

	//connect to database  
	public DisplayBean(){
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			stmt = conn.createStatement();
			
		}
		catch (Exception e) {
			System.out.println(e);

		}
		
		
	}
	
	//display primary keys in a dropdown list
	public String displayOptions() {
		
		StringBuilder data = new StringBuilder();
		ResultSet rs = null;
		
		try {
			rs = stmt.executeQuery("SELECT * FROM rachel_library_data");
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		data.append("<form method = 'post' action='ViewDataResults.jsp'>");
		data.append("<select  name= 'select'>");
		
		
		try {
			while(rs.next()) {
				data.append("<option id = '" + rs.getString(1) + "'" + "value ='" + rs.getString(1) + "'>");
				data.append("<label for=' " + rs.getString(1) + "'>" + "Book " + rs.getString(1) + "</label>");
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
		
		data.append("<option id = 'DisplayAll' value= 'DisplayAll'>");
		data.append("<label for='DisplayAll'>Display All Records</label>");
		
		data.append("</select>");
		data.append("<input type= 'submit' value='submit'>");
		data.append("</form>");
		
		return data.toString();
		
	}
	
	public String displayResults(String request) {
		
		int ID = 0;
		String title = null;
		String authorFirst = null;
		String authorLast= null;
		String genre= null;
		String format= null;
		
		StringBuilder data = new StringBuilder();
		ResultSet rs = null;
		
	
		
		//call another method to display all records in the table 
		if(request.equals( "DisplayAll")) {
			
			data.append(displayAll());
			
		}
		else {	
			
				try {
					rs = stmt.executeQuery("SELECT * FROM rachel_library_data WHERE ID= " + request);
					//assign each value in the table to a variable for organization purposes.
					while (rs.next()){
						ID = rs.getInt("ID");
						title= rs.getString("Title");
						authorFirst = rs.getString("AuthorFirst");
						authorLast = rs.getString("AuthorLast");
						genre = rs.getString("Genre");
						format = rs.getString("Format");
						
					}
				} catch (SQLException e) {
					System.out.println(e);
				}
			//create table on jsp page
			data.append("<table border= 1>");
			data.append("<tr>");
			data.append("<th> ID </th> <th> Title </th> <th> Author First Name </th> <th> Author Last Name </th> <th> Genre </th> <th> Format </th>");
			data.append("</tr>");
			data.append("<tr>");
			data.append("<td>" + String.valueOf(ID) + "</td>");
			data.append("<td>" + title +"</td>");
			data.append("<td>" + authorFirst + "</td>");
			data.append("<td>" + authorLast + "</td>");
			data.append("<td>" + genre + "</td>");
			data.append("<td>" + format + "</td>");
			data.append("</tr>");
			data.append("</table>");
			
			
			
		}
		return data.toString();
		
	}
	
	//Display all of the records in the table using SELECT * 
	public String displayAll() {
		StringBuilder data = new StringBuilder();
		ResultSet rs = null;
		
		int ID = 0;
		String title = null;
		String authorFirst = null;
		String authorLast = null;
		String genre = null;
		String format = null;
		
		//create table and table headers
		data.append("<table border= 1>");
		data.append("<tr>");
		data.append("<th> ID </th> <th> Title </th> <th> Author First Name </th> <th> Author Last Name </th> <th> Genre </th> <th> Format </th>");
		data.append("</tr>");
		
		//add data to the table
		try {
			rs= stmt.executeQuery("SELECT * FROM rachel_library_data");
			
			while (rs.next()){
				ID = rs.getInt("ID");
				title= rs.getString("Title");
				authorFirst = rs.getString("AuthorFirst");
				authorLast = rs.getString("AuthorLast");
				genre = rs.getString("Genre");
				format = rs.getString("Format");
				

				data.append("<tr>");
				data.append("<td>" + String.valueOf(ID) + "</td>");
				data.append("<td>" + title +"</td>");
				data.append("<td>" + authorFirst + "</td>");
				data.append("<td>" + authorLast + "</td>");
				data.append("<td>" + genre + "</td>");
				data.append("<td>" + format + "</td>");
				data.append("</tr>");
	
			}
			data.append("</table>");
						
		} 
		catch (SQLException e) {
			
			System.out.println(e);
		}
		return data.toString();
	}
	
}


