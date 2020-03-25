import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class DBcon {
	public Connection getConnection() {
    		String driver = "org.mariadb.jdbc.Driver";
		Connection con=null;
		try {
	                Class.forName(driver);
//      	        End Point : booksys.ctvysxuvt8lv.ap-northeast-2.rds.amazonaws.com
        	        String url = "jdbc:mariadb://booksys.ctvysxuvt8lv.ap-northeast-2.rds.amazonaws.com/";
        	        String userName = "admin";
        	        String userPw = "admin1234";
        	        String dbName = "seproject";
                
        	        con = DriverManager.getConnection(url+dbName, userName, userPw);
        	        
                	if( con != null ) {
				//Success
        	        }
                
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
        	} catch (SQLException e) {
	                e.printStackTrace();
	        }
    		return con;
	}	
}
