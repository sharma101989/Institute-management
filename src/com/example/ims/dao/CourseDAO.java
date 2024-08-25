package com.example.ims.dao;

import com.example.ims.model.Course;
import com.example.ims.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CourseDAO {
    public void addCourse(Course course) {
        try (Connection connection = DBConnection.getConnection()) {
            String sql = "INSERT INTO courses (course_name, course_code) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, course.getCourseName());
            statement.setString(2, course.getCourseCode());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
