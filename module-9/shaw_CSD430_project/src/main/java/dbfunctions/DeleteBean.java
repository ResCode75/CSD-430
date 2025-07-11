//Rachel Shaw - CSD-340 - Database Project

package dbfunctions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DeleteBean implements java.io.Serializable {
	private static final long serialVersionUID = 1l;
	private static String url = "jdbc:mysql://localhost:3306/CSD430";
	private static String user = "student1";
	private static String pass = "pass";
	Connection conn;
	Statement stmt;
	
	//connect to database
	public DeleteBean() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			stmt = conn.createStatement();
			
		}
		catch(Exception e) {
			System.out.println(e);
			
		}
		
	}
	
	//display dropdown
	public String deleteOptions() {
		
		StringBuilder op = new StringBuilder();
		ResultSet rs = null;
		
		try {
			rs = stmt.executeQuery("SELECT * FROM rachel_library_data");
			
		}catch (SQLException e) {
			System.out.println(e);
		}
		
		op.append("<form method = 'post' action= 'DeleteResults.jsp'>");
		op.append("<select name= 'select'>");
		
		try {
			while(rs.next()) {
				op.append("<option id = '" + rs.getString(1) + "'" + "value ='" + rs.getString(1) + "'>");
				op.append("<label for=' " + rs.getString(1) + "'>" + "Book " + rs.getString(1) + "</label>");
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
		
		op.append("</select>");
		op.append("<input type= 'submit' value='submit'>");
		op.append("</form>");
		
		return op.toString();
	}
	
	//delete selected record
	public void deleteRecord(String selected) {
		try {
			stmt.execute("DELETE FROM rachel_library_data WHERE ID =" + selected);
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
			
}



