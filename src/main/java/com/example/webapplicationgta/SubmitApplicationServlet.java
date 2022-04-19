package com.example.webapplicationgta;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "SubmitApplicationServlet", value = "/SubmitApplicationServlet")
public class SubmitApplicationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDBUtil userDBUtil;

    @Resource(name = "jdbc/web_User_tracker")
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

        request.setAttribute("APPLICATION", params);

        // send to JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/show-application.jsp");
        dispatcher.forward(request, response);
    }

    private void validateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String page = null;
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // get Users from db util
        List<User> users = userDBUtil.getUsers();

        // add Users to the request
        request.setAttribute("USER_LIST", users);

        for (User user: users){
            if (user.getUsername().equals(username) && user.getPassword().equals(password)){
                page = (user.getIsAdmin() ? "/admin.jsp" : "/student.jsp");
                break;
            }
            else {
                page = "/login-failed.jsp";
            }
        }

        // send to JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

