package Login;

import Classes.User;
import dbConnection.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;

public class LoginModel {
    private static User logged; // new teacher to store the logged one in
    // get connection
    private Connection con = Connect.getConnect();

    public static User getLogged() {
        return logged;
    }

    private static void setLogged(ResultSet set) throws SQLException {
        // store the logged in user details in an object for later use

        logged = new User(set.getInt("id"), set.getString("first_name"),
                set.getString("last_name"), set.getString("email"), set.getString("phone"),
                set.getString("gender"));
    }


    // check login details
    boolean isCorrect(String email, String pass) throws SQLException {

        // if connection is closed get it again
        if (con.isClosed()) {
            con = Connect.getConnect();
        }
        PreparedStatement statement;
        ResultSet set;
        String query = "select * from users where email = ? and password = ?";
        statement = Objects.requireNonNull(con).prepareStatement(query);
        statement.setString(1, email);
        statement.setString(2, pass);
        set = statement.executeQuery();
        if (set.next()) { // only store the logged in user if its correct
            setLogged(set);
            statement.close(); // this line literally fixed all my database issues
            con.close();
            return true;
        } else return false;
    }
}
