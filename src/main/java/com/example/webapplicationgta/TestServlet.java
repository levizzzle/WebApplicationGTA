package com.example.webapplicationgta;

import com.mysql.cj.jdbc.MysqlDataSource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "TestServlet", value = "/TestServlet")
public class TestServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // define datasource/connection pool for resource injection
    @Resource(name = "jbdc/web_student_tracker")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // set up the print writer
        PrintWriter out = response.getWriter();
        response.setContentType("text/plain");

        // get connection to the database
        Connection conn;
        Statement stmt;
        ResultSet rs;

        try {
//            conn = dataSource.getConnection();
            conn = DatabaseConnection.initializeDatabase();


            // create a SQL statement
            String sql = "select * from student";
            stmt = conn.createStatement();

            // execute SQL query
            rs = stmt.executeQuery(sql);

            // process the result set
            while(rs.next()){
                String email = rs.getString("email");
                out.println(email);
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
