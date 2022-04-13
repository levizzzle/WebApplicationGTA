package com.example.webapplicationgta;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page = (request.getParameter("username").equals("admin") ? "admin.jsp": "student.jsp");

        // get students from data util class
        List<Student> students = StudentDataUtil.getStudents();

        // add students to request object
        request.setAttribute("student_list", students);

        // get request dispatcher
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);

        // forward to JSP
        dispatcher.forward(request, response);

//        // set the content type
//        response.setContentType("text/html");
//
//        // get the printwriter
//        PrintWriter out = response.getWriter();
//
//        //generate HTML content
//        out.println("<html><body>");
//        out.println("<h2>Username: " + request.getParameter("username"));
//        out.println("<h2>Password: " + request.getParameter("password"));
//        out.println("<hr>");
//        out.println("Time on the server is: " + new java.util.Date());
//        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
