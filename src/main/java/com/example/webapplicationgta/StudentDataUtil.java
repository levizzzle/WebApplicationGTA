package com.example.webapplicationgta;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

    private static DataSource dataSource;

    public StudentDataUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }
    public static List<Student> getStudents() {

        List<Student> students = new ArrayList<>();

        Connection conn;
        Statement stmt;
        ResultSet rs;

        try {
            // get a connection
            conn = dataSource.getConnection();

            // create sql statement
            String sql = "select * from students order by last_name";
            stmt = conn.createStatement();

            // execute query
            rs = stmt.executeQuery(sql);

            // process result set
            while (rs.next()){

            }
            // close JDBC objects
        } catch (SQLException e) {
            e.printStackTrace();
        } finally{

        }

        students.add(new Student(1,"Levi", "Davison", "jldh2w@umsystem.edu", "password"));
        students.add(new Student(2,"Parker", "Revelle", "pgrg93@umsystem.edu", "password"));
        students.add(new Student(3,"Jared", "Rogers", "jwrcfg@umsystem.edu", "password"));

        return students;
    }
}
