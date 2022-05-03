package com.example.webapplicationgta;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ApplicationDBUtil {

    private static DataSource dataSource;

    public ApplicationDBUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }
    public List<Application> getApplications() throws Exception {

        List<Application> applications = new ArrayList<>();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // get a connection
//            conn = dataSource.getConnection();
            conn = DatabaseConnection.initializeDatabase();

            // create sql statement
            String sql = "select * from student_submission order by studentApplicationID DESC";
            stmt = conn.createStatement();

            // execute query
            rs = stmt.executeQuery(sql);

            // process result set
            while (rs.next()){
                // retrieve data from result set row
                int studentApplicationID = rs.getInt("studentApplicationID");
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                int studentID = rs.getInt("studentID");
                String studentEmail = rs.getString("studentEmail");
                String studentLevel = rs.getString("studentLevel");
                String gradSem = rs.getString("gradSem");
                float cumulativeGPA = rs.getFloat("cumulativeGPA");
                int studentHours = rs.getInt("studentHours");
                String studentResearchAd = rs.getString("studentResearchAd");
                String studentMajor = rs.getString("studentMajor");
                String studentCourses = rs.getString("studentCourses");
                String studentIntDom = rs.getString("studentIntDom");
                String studentGTACert= rs.getString("studentGTACert");

                // create new User object
                Application tempApplication = new Application(studentApplicationID, firstName, lastName, studentID,
                        studentEmail, studentLevel, gradSem, cumulativeGPA, studentHours, studentResearchAd,
                        studentMajor, studentCourses, studentIntDom, studentGTACert);

                // add it to the list of Applications
                applications.add(tempApplication);
            }
            // close JDBC objects
        }
        finally{
            close(conn, stmt, rs);
        }
        return applications;
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