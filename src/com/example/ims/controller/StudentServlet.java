package com.example.ims.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.example.ims.dao.StudentDAO;
import com.example.ims.model.Student;

@WebServlet("/registerStudent")
public class StudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        Student student = new Student(name, email);
        StudentDAO dao = new StudentDAO();
        dao.registerStudent(student);

        response.sendRedirect("student/success.jsp");
    }
}
