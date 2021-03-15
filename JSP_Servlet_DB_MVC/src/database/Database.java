package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DOMAIN_NAME = "localhost";
    static final String DB_NAME = "jspservletdb"; 
    static final String DB_URL = "jdbc:mysql://" + DOMAIN_NAME + "/" + DB_NAME + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    static final String USER = "root";
    static final String PASS = "1234";

    public static Connection connection = null;

    public static Connection startDB() {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
            
        } catch (SQLException se) {
            System.out.println("startdb - sqlexception");
            return null;
        } catch (Exception e) {
            System.out.println("startdb - exception");
            return null;
        }
        
        return connection;
        
    }

  
}
