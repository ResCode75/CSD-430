//Rachel Shaw - CSD430 - database project
package dbfunctions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateBean implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	Connection conn;
	Statement stmt;
	private static String url= "jdbc:mysql://localhost:3306/CSD430";
	private static String user= "student1";
	private static String pass = "pass";
	
	private String ID;
	private String title;
	private String fname;
	private String lname;
	private String genre;
	private String format;
	
	public CreateBean(){
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			stmt = conn.createStatement();
			
		}
		catch (Exception e) {
			System.out.println(e);

		}
	}

	//Setters and getters
	public void setTitle(String title){
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
	
	public String getAuthorLast() {
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
	
	//method for generating ID
	private void createID() {
		try {
			ResultSet rs = stmt.executeQuery("SELECT ID FROM rachel_library_data WHERE ID=(select max(id) from rachel_library_data)");
			
			while (rs.next()) {
				int genID = rs.getInt("ID");
				genID++;
				this.ID = String.valueOf(genID);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
	}
	
	public String getID() {
		return this.ID;
	}
	
	//create record in table
	public String createRecord(){
		createID();
		
		String statement = "INSERT INTO rachel_library_data (ID, Title, AuthorFirst, AuthorLast, Genre, Format) VALUES(" + "'" + this.ID + "'" + "," + "'" + this.title + "'" + "," + "'" + this.fname + "'" + "," + "'" + this.lname + "'" +"," + "'" +this.genre + "'"+ "," + "'" +this.format + "'" + ")";
		
		try {
			stmt.execute(statement);
			return "Table Updated Sucessfully";
		} catch (SQLException e) {
			
			System.out.println(e);
			return "Table Update failed";
		}
		
		
	}
	
}
