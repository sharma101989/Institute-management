<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mark Attendance</title>
</head>
<body>
    <form action="Attendance" method="post">
        Student ID: <input type="text" name="studentId"><br>
        Date: <input type="date" name="date"><br>
        Status: <input type="text" name="status"><br>
        <input type="submit" value="Mark Attendance">
    </form>
</body>
</html>
