package com.example.webapplicationgta;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ApplicationDBUtil {

    private static DataSource dataSource;
    String sort = null;

    public ApplicationDBUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }

    public List<Application> getApplications(String filter) throws Exception {

        List<Application> applications = new ArrayList<>();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String sql;

        try {
            // get a connection
            conn = DatabaseConnection.initializeDatabase();

            // create sql statement
            if (filter == null || filter.equals("all")){
                sql = "select * from student_submission order by " + sort + " DESC";
            }
            else {
                sql = getFilter(filter);
            }
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

    public void updateApplication(int appID, String command) throws SQLException, ClassNotFoundException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql, choice;

        try {
            conn = DatabaseConnection.initializeDatabase();
            sql = "UPDATE student_application_status SET appPending = 0, "+ command +" = 1 WHERE (studentApplicationID = ?);";
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1,appID);
            stmt.execute();

        } finally {
            close(conn, stmt, rs);
        }
    }

    private String getFilter(String filter){
        String where = null;
        switch (filter) {
            case "pending":
                where = "appPending";
                break;
            case "bookmarked":
                where = "appBookmarked";
                break;
            case "denied":
                where = "appDenied";
                break;
            case "approved":
                where = "appApproved";
                break;
        }
        return "SELECT * FROM student_submission " +
                    "INNER JOIN student_application_status " +
                    "ON student_submission.studentApplicationID=student_application_status.studentApplicationID " +
                    "WHERE student_application_status."+ where +"=1;";
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

    private void close(Connection conn, PreparedStatement stmt, ResultSet rs){
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