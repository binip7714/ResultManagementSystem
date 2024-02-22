package Project;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:8080/project1","root","");
			return connection;
		}catch(Exception e) {
			System.out.println(e);
			return null;
			
		}
	}

}
