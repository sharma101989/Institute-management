package com.example.ims.dao;

import com.example.ims.model.Attendance;
import com.example.ims.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AttendanceDAO {
    public void markAttendance(Attendance attendance) {
        try (Connection connection = DBConnection.getConnection()) {
            String sql = "INSERT INTO attendance (student_id, date, status) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, attendance.getStudentId());
            statement.setString(2, attendance.getDate());
            statement.setString(3, attendance.getStatus());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
