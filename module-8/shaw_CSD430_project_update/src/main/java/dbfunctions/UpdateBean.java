//Rachel Shaw - CSD430 - Database Project   

package dbfunctions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateBean implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private static String url = "jdbc:mysql://localhost:3306/CSD430";
	private static String user = "student1";
	private static String pass = "pass";
	Connection conn;
	Statement stmt;
	private String ID;
	private String title;
	private String fname; 
	private String lname;
	private String genre;
	private String format;
	
	
	public UpdateBean() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			stmt = conn.createStatement();
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//getters and setters
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getID() {
		return this.ID;
	}
	public void setTitle(String title) {
		this.title = title;		
	}
	public String getTitle() {
		return this.title;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFname() {
		return this.fname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getLname() {
		return this.lname;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getGenre() {
		return this.genre;
	}
	public void setFormat(String format) {
		this.format = format;
	}
	public String getFormat() {
		return this.format;
	}
	
	//display dropdown
	public String updateOptions() {
		
		StringBuilder options = new StringBuilder();
		ResultSet rs = null;
		
		try { 
			rs = stmt.executeQuery("SELECT * FROM rachel_library_data");
		}
		catch (SQLException e) {
			System.out.println(e);
		}
		
		options.append("<form method= 'post' action= 'UpdateRecord.jsp'>");
		options.append("<select name= 'select'>");
		
		//create dropdown of table IDs
		try {
			
			while (rs.next()) {
				options.append("<option id = '" + rs.getString(1) + "'" + "value ='" + rs.getString(1) + "'>");
				options.append("<label for=' " + rs.getString(1) + "'>" + "Book " + rs.getString(1) + "</label>");
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
		
		options.append("</select>");
		options.append("<input type= 'submit' value='submit'>");
		options.append("</form>");
		
		return options.toString();
		
	}
	
	//display fields for editing records
	public String editRecords(String request) {
		
		StringBuilder data = new StringBuilder();
		ResultSet rs = null;
		
		try {
			rs = stmt.executeQuery("SELECT * FROM rachel_library_data WHERE ID= " + request);
			
			while (rs.next()) {
				this.ID = String.valueOf(rs.getInt("ID"));
				this.title = rs.getString("Title");
				this.fname = rs.getString("AuthorFirst");
				this.lname = rs.getString("AuthorLast");
				this.genre = rs.getString("Genre");
				this.format = rs.getString("Format");
			}
		} catch(SQLException e) {
			System.out.println(e);
		}
		
		//create and place form in a table
	data.append("<form method = 'post' action= 'UpdateResults.jsp'>");
		data.append("<table border= 1>");
		data.append("<tr>");
		data.append("<th> ID </th> <td> <input type= 'text' id= 'ID' name= 'id' value = '" + this.ID + "'" + "readonly> </td>");
		data.append("</tr>");
		
		data.append("<tr>");
		data.append("<th> Title </th> <td> <input type= 'text' id= 'title' name= 'title' value = '" + this.title + "'" + "readonly> </td>");
		data.append("</tr>");
		
		data.append("<tr>");
		data.append("<th> AuthorFirst </th> <td> <input type = 'text' id= 'fname' name= 'fname' value= '" + this.fname + "' </td>");
		data.append("</tr>");
		
		data.append("<tr>");
		data.append("<th>AuthorLast</th> <td> <input type = 'text' id= 'lname' name= 'lname' value= '" + this.lname + "' </td>");
		data.append("</tr>");
		
		data.append("<tr>");
		data.append("<th> Genre </th> <td> <input type = 'text' id= 'genre' name= 'genre' value= '" + this.genre + "' </td>");
		data.append("</tr>");
		
		data.append("<tr>");
		data.append("<th>Format</th> <td> <input type = 'text' id= 'format' name= 'format' value= '" + this.format + "' </td>");
		data.append("</tr>");
		
		data.append("</table>");
		
		data.append("<input type= 'submit' value='submit changes'>");
		
	data.append("</form>");
	
		return data.toString();
	}
	

//update table in database
	public void updateTable() {
		try {
			String statement = "UPDATE rachel_library_data SET Title= '"+ this.title +"', AuthorFirst= '" + this.fname + "', AuthorLast = '" + this.lname +"', Genre= '" + this.genre + "', Format= '" + this.format + "' WHERE ID= " + this.ID;
			System.out.println(statement);
			stmt.execute(statement);
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	
	}
}