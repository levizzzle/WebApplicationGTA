package com.example.webapplicationgta;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDBUtil userDBUtil;

    @Resource(name = "jdbc/db")
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
            validateUser(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
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
            // check with database
            if (user.getUsername().equals(username) && user.getPassword().equals(password)){
                page = (user.getIsAdmin() ? "/ApplicationsServlet" : "/student.jsp");
                break;
            }
            // check username, have to contain @umsystem.edu
            else if (!(username.contains("@umsystem.edu"))) {
                System.out.println("Please enter a vaid UMKC mail.");
                page = "/login.jsp";
//                page = "/warning.jsp";
            }
            else {
                page = "/login-failed.jsp";
            }
        }

        // send to JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // get Users from db util
        List<User> users = userDBUtil.getUsers();

        // add Users to the request
        request.setAttribute("USER_LIST", users);

        // send to JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list-users.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
