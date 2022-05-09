package com.example.webapplicationgta;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;

@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    String command;
    int appID;
    private ApplicationDBUtil applicationDBUtil;

    @Resource(name = "jdbc/db")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        try{
            applicationDBUtil = new ApplicationDBUtil(dataSource);
        }
        catch (Exception ex){
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            command = request.getParameter("apply");
            appID = Integer.parseInt(request.getParameter("appID"));
            applicationDBUtil.updateApplication(appID,command);
            applicationDBUtil.getApplications("all");
        } catch (Exception e) {
            throw new ServletException(e);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("ApplicationsServlet");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
