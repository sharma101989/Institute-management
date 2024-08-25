package com.example.ims.controller;

import com.example.ims.model.Student;
import com.example.ims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registerStudent")
public class StudentServlet extends HttpServlet {

    private StudentService studentService;

    public void init() {
        studentService = new StudentService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        Student student = new Student(name, email);
        try {
            studentService.registerStudent(student);
            response.sendRedirect("student/success.jsp");
        } catch (Exception e) {
            request.setAttribute("error", "Error registering student: " + e.getMessage());
            request.getRequestDispatcher("student/error.jsp").forward(request, response);
        }
    }
}
