//Rachel Shaw - CSD430 - Database project

package dbfunctions;
import java.sql.Connection;
import java.time.LocalTime;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class Configure implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	Connection conn;
	Statement stmt;
	private static String url= "jdbc:mysql://localhost:3306/CSD430";
	private static String user= "student1";
	private static String pass = "pass";
	
	
	//Allow connection to database
	public Configure() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			stmt = conn.createStatement();
			
			
		}
		catch (Exception e) {
			System.out.println(e);

		}
	}
	
	
	public String CreateTable() {
		
		StringBuilder message = new StringBuilder();
		//thought it would be cool to add the time each database activity was completed to the page
		LocalTime time = LocalTime.now();
		
		try {
			//drop table if it exists
			stmt.executeUpdate("DROP TABLE rachel_library_data");
			time = LocalTime.now();
			//display update on JSP page
			message.append(time.toString() + ": connected to database <br>");
			time = LocalTime.now();
			message.append(time.toString() + ": table dropped <br>");
		}
		catch(SQLException e) {
			time = LocalTime.now();
			message.append(time.toString()+ ": table 'rachel_library_data' does not exist yet <br>");
			System.out.println(e);
		}
		try { 
			//Create the table
			stmt.executeUpdate("CREATE TABLE rachel_library_data(ID int PRIMARY KEY, Title VARCHAR(25) NOT NULL, AuthorFirst VARCHAR(25) NOT NULL, AuthorLast VARCHAR(25) NOT NULL, Genre VARCHAR(25) NOT NULL, Format VARCHAR(25) NOT NULL)");
			time = LocalTime.now();
			message.append(time.toString() + ": table rachel_library_data created <br>");
		}
		catch(java.sql.SQLException e) {
			time = LocalTime.now();
			message.append(time.toString() + "table creation failed <br>");
			System.out.println(e);
			
		}
		
		return message.toString();
	}
	
	//populate the table with records
	public String populate() {
		StringBuilder message = new StringBuilder();
		LocalTime time = LocalTime.now();
		
			try {
				
				stmt.executeUpdate("INSERT INTO rachel_library_data(ID,Title,AuthorFirst,AuthorLast,Genre,Format) VALUES (1, 'Hyperion', 'Dan', 'Simmons', 'Sci-Fi', 'Audiobook'), (2, 'The King In Yelllow', 'Robert', 'Chambers', 'Horror', 'E-Book'), (3, 'The Apothecary Diaries', 'Natsu', 'Hyuga', 'Drama', 'E-Book'), (4, 'Dune', 'Frank','Herbert', 'Sci-Fi', 'E-book'), (5, 'Little Women', 'Louisa', 'Alcott', 'Drama', 'Hardcover'), (6, 'Wuthering Heights', 'Emily', 'Bronte', 'Tragedy', 'Hardcover'), (7, 'Ready Player One', 'Ernest', 'Cline', 'Adventure', 'Paperback'), (8, 'Look Back', 'Tatsuki', 'Fujimoto', 'Drama', 'Paperback'), (9, 'Circe', 'Madeline', 'Miller', 'Fantasy', 'Paperback'),(10, 'Fahrenheit 451', 'Ray', 'Bradbury', 'Fiction', 'Paperback');");
				time = LocalTime.now();
				message.append(time + ": table populated successfully <br>");
				
			} catch (SQLException e) {
				time = LocalTime.now();
				message.append( time.toString() + "table population failed <br>");
				System.out.println(e);
			}
			
		return message.toString();
	}

	
}

	