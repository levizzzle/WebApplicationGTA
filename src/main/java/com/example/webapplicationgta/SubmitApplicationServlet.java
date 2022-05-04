package com.example.webapplicationgta;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "SubmitApplicationServlet", value = "/SubmitApplicationServlet")
public class SubmitApplicationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDBUtil userDBUtil;

    @Resource(name = "jdbc/student_submission")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        try{
            userDBUtil = new UserDBUtil(dataSource);
        }
        catch (Exception ex){
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            storeApplication(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void storeApplication(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String[] params = request.getParameterValues("gtaForm");
        int appID = 0;

        List<String> values = Arrays.asList(request.getParameterValues("gtaForm"));
        request.setAttribute("APPLICATION", params);

        Connection conn = null;
        PreparedStatement stmt = null;

        String end = "')";
        try {
            // get a connection
            conn = DatabaseConnection.initializeDatabase();

            // create sql statement
            String sql = "INSERT INTO student_submission " +
                    "(firstName, lastName, studentID, studentEmail, studentLevel, gradSem, cumulativeGPA, " +
                    "studentHours, studentResearchAd, studentMajor, studentCourses, studentIntDom, studentGTACert) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            // set sql params
            for (int i = 0; i < 13; i++) {
                if (((Object) params[i]).getClass().getSimpleName() == "Integer") {
                    stmt.setInt(i + 1, Integer.parseInt(params[i]));
                }
                else if(((Object) params[i]).getClass().getSimpleName() == "Float"){
                    stmt.setFloat(i + 1, Integer.parseInt(params[i]));
                }
                else
                    stmt.setString(i + 1, params[i]);
            }

            // execute insert statement
            stmt.execute();

            // send to JSP page
            RequestDispatcher dispatcher = request.getRequestDispatcher("/student.jsp");
            dispatcher.forward(request, response);
        }
        finally{
            close(conn, stmt, null);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {myRs.close();}
            if (myStmt != null) {myStmt.close();}
            if (myConn != null) {myConn.close();}
        }
        catch (Exception exc) {
            exc.printStackTrace();
        }
    }
}