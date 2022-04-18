package com.example.webapplicationgta;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {

    private static DataSource dataSource;

    public UserDBUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }
    public List<User> getUsers() throws Exception {

        List<User> users = new ArrayList<>();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // get a connection
//            conn = dataSource.getConnection();
            conn = DatabaseConnection.initializeDatabase();

            // create sql statement
            String sql = "select * from users order by last_name";
            stmt = conn.createStatement();

            // execute query
            rs = stmt.executeQuery(sql);

            // process result set
            while (rs.next()){
                // retrieve data from result set row
                int id = rs.getInt("id");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                int isAdmin = rs.getInt("is_admin");

                // create new User object
                User tempUser = new User(id, firstName, lastName, email, password, isAdmin);

                // add it to the list of Users
                users.add(tempUser);
            }
            // close JDBC objects
        }
        finally{
            close(conn, stmt, rs);
        }
        return users;
    }

    // close connection, statement, and result set
    private void close(Connection conn, Statement stmt, ResultSet rs){
        try{
            if(rs != null){rs.close();}
            if(stmt != null){stmt.close();}
            if(conn != null){conn.close();}
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
    }
}