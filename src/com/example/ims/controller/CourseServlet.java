package com.example.ims.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.example.ims.dao.CourseDAO;
import com.example.ims.model.Course;

@WebServlet("/addCourse")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courseName = request.getParameter("courseName");
        String courseCode = request.getParameter("courseCode");

        Course course = new Course(courseName, courseCode);
        CourseDAO dao = new CourseDAO();
        dao.addCourse(course);

        response.sendRedirect("course/success.jsp");
    }
}
