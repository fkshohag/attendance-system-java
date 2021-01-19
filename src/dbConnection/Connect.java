package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    public static Connection getConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String database = "attendance";
            String user = "admin";
            String password = "attendance@shohag";
            String port = "1106";
            String url = "jdbc:mysql://localhost:"+port+"/"+database+"?characterEncoding=latin1";
            return DriverManager.getConnection(url, user, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

}

