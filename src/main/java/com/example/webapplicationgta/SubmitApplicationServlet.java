package com.example.webapplicationgta;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
//        for (String param : params){
//            System.out.println(param);
//        }
        List<String> values = Arrays.asList(request.getParameterValues("gtaForm"));
//        String fname = "", sname, studentid, mail, level, gradyear, gpa, hours, advisor, major, courses, status, certificate;
        request.setAttribute("APPLICATION", params);

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // get a connection
            conn = DatabaseConnection.initializeDatabase();

            // create sql statement
            String sqlQuery = "INSERT INTO student_submission " +
                    "VALUES (1235+" +params[0]+"', '"+params[1]+"', "+Integer.parseInt(params[2])+", '"+params[3]+"', '"+params[4]+"'," +
                    " '"+params[5]+"', '"+Float.parseFloat(params[6])+"', "+Integer.parseInt(params[7])+", '"+params[8]+"', '"+params[9]+"', '"+params[10]+"','" +
                    " '"+params[11]+"', '"+params[12]+"');";

            String sql = "INSERT INTO student_submission VALUES (12345, 'Jawn', 'Dough', 1712345," +
                    "'jdough@umsystem.edu', 'MS', 'Spring 2022', 3.9, 160, 'Lavy', 'IT', 'CS 101', 'International', 'Yes');";
            stmt = conn.createStatement();
            // execute query
            stmt.executeUpdate(sql);


        // send to JSP page
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/show-application.jsp");
//        dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

//        @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}
}

