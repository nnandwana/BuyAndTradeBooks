package books.dao.copy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BookDao {
	Connection bookDbConn;
	public Connection getDbConnection() throws SQLException {
		String url="jdbc:mysql://localhost:3306/books";
		String user="root";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			bookDbConn=DriverManager.getConnection(url,user,user);
			System.out.println("i got connection");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return bookDbConn;
	}
	public void dbClose()
    {
	         try
	           {
	        	 if(bookDbConn!=null)
	        		 bookDbConn.close();
	           }
	         catch (SQLException e) {
	        	 e.printStackTrace();
			}
    }
}
