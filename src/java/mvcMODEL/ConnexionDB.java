package mvcMODEL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionDB {
    
    public String
    DATABASE = "ratiodb",
    HOSTNAME = "localhost",
    PORT     = "3308",
    USERNAME = "root",
    PASSWORD = "147896325878910Paz";
    
    public String 
    URL = "jdbc:mysql://" + HOSTNAME + ":" + PORT + "/" + DATABASE + "?useSSL=false";
    
    public Connection coneccionRatioDB() throws SQLException {
        
        Connection conn = null;
        
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            
        } catch (ClassNotFoundException | SQLException e){}
        
        return conn;
    }
    
    
    
}
