package com.example.ims.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/institute_management";
        String user = "root";
        String password = "123456";
        return DriverManager.getConnection(url, user, password);
    }
}
