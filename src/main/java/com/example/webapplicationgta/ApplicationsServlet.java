package com.example.webapplicationgta;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ApplicationsServlet", value = "/ApplicationsServlet")
public class ApplicationsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ApplicationDBUtil applicationDBUtil;
    String command, sort = null;

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
            command = request.getParameter("command");
            sort = request.getParameter("sort");

            if (command == null || command.equals("all")) {
                getApplications(request, response);
            }
            else{
                getApplications(request, response, command);
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void getApplications(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String page = "/admin.jsp";

        // get applications from db util
        List<Application> applications = applicationDBUtil.getApplications(null);

        // add applications to the request
        request.setAttribute("APPLICATION_LIST", applications);

        // send to JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    private void getApplications(HttpServletRequest request, HttpServletResponse response, String command) throws Exception {
        String page = "/admin.jsp";

        // get applications from db util
        List<Application> temp = new ArrayList<Application>();
        List<Application> applications = applicationDBUtil.getApplications(command);

        // add applications to the request
        request.setAttribute("APPLICATION_LIST", applications);

        // send to JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
