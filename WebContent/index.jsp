<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Institute Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        nav {
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: auto;
            white-space: nowrap;
            width: 100%;
        }
        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-around;
        }
        nav ul li {
            display: inline;
        }
        nav ul li a {
            display: inline-block;
            color: #333;
            text-decoration: none;
            padding: 14px 20px;
            white-space: nowrap;
        }
        nav ul li a:hover {
            background-color: #ddd;
        }
        nav ul li a:active {
            background-color: #ccc;
        }
        .container {
            padding: 20px;
            text-align: center;
            width: 100%;
        }
        .search-bar {
            margin: 20px auto;
            width: 60%;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 25px;
            border: 1px solid #ccc;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        .search-bar input[type="text"] {
            width: 80%;
            padding: 10px 15px;
            border: none;
            border-radius: 25px 0 0 25px;
            outline: none;
            font-size: 16px;
        }
        .search-bar button {
            padding: 10px 15px;
            border: none;
            border-radius: 0 25px 25px 0;
            background-color: #4caf50;
            color: white;
            cursor: pointer;
            outline: none;
        }
        .search-bar button:hover {
            background-color: #45a049;
        }
        .buttons {
            margin-top: 20px;
        }
        .buttons .course-button {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: #f1f1f1;
            cursor: pointer;
            font-size: 16px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .buttons .course-button:hover {
            background-color: #ddd;
        }
        .courses {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px 0;
        }
        .course-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 10px;
            width: 300px;
            padding: 20px;
            text-align: left;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .course-card img {
            width: 100%;
            border-radius: 8px;
        }
        .course-card h3 {
            font-size: 1.2em;
            margin: 10px 0;
        }
        .course-card p {
            font-size: 0.9em;
            color: #666;
        }
        .course-card .details {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }
        .course-card .details span {
            font-size: 0.8em;
            color: #333;
        }
        .course-card .details a {
            color: #4caf50;
            text-decoration: none;
            font-weight: bold;
        }
        .course-card .details a:hover {
            text-decoration: underline;
        }
        .course-card .refund {
            background-color: #ff5722;
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            font-size: 0.9em;
            margin-top: 10px;
        }
        video {
            margin-top: 20px;
            width: 80%;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="trending.jsp">Trending Now</a></li>
            <li><a href="dsa.jsp">DSA</a></li>
            <li><a href="webtech.jsp">Web Tech</a></li>
            <li><a href="foundational.jsp">Foundational Courses</a></li>
            <li><a href="datascience.jsp">Data Science</a></li>
            <li><a href="practice.jsp">Practice Problem</a></li>
            <li><a href="python.jsp">Python</a></li>
            <li><a href="machinelearning.jsp">Machine Learning</a></li>
            <li><a href="javascript.jsp">JavaScript</a></li>
            <li><a href="systemdesign.jsp">System Design</a></li>
            <li><a href="django.jsp">Django</a></li>
            <li><a href="devops.jsp">DevOps Tutorial</a></li>
            <li><a href="java.jsp">Java</a></li>
            <li><a href="c.jsp">C</a></li>
            <li><a href="cpp.jsp">C++</a></li>
            <li><a href="react.jsp">ReactJS</a></li>
            <li><a href="node.jsp">NodeJS</a></li>
            <li><a href="cplive.jsp">CP Live</a></li>
            <li><a href="aptitude.jsp">Aptitude</a></li>
            <li><a href="puzzles.jsp">Puzzles</a></li>
            <li><a href="projects.jsp">Projects</a></li>
        </ul>
    </nav>
    <div class="container">
        <h1>Institute Management System</h1>
        <div class="search-bar">
            <input type="text" placeholder="Data Structures and Algo">
            <button type="submit"><i class="fa fa-search"></i></button>
        </div>
        <div class="buttons">
            <button class="course-button">DSA: Basic To Advanced Course</button>
            <button class="course-button">Applied Data Science</button>
            <button class="course-button">Full Stack Live Classes</button>
        </div>
        <div class="courses">
            <div class="course-card">
                <h3>DSA to Development: A Complete Guide</h3>
                <p>Beginner to Advance</p>
                <div class="details">
                    <span>310k+ interested Geeks</span>
                    <a href="#">Explore now</a>
                </div>
                <div class="refund">Get 90% Course Fee Refund!</div>
            </div>
            <div class="course-card">
                <h3>JAVA Backend Development - Live</h3>
                <p>Intermediate and Advance</p>
                <div class="details">
                    <span>210k+ interested Geeks</span>
                    <a href="#">Explore now</a>
                </div>
                <div class="refund">Get 90% Course Fee Refund!</div>
            </div>
            <div class="course-card">
                <h3>Tech Interview 101 - From DSA to System Design for Working Professionals</h3>
                <p>Beginner to Advance</p>
                <div class="details">
                    <span>293k+ interested Geeks</span>
                    <a href="#">Explore now</a>
                </div>
                <div class="refund">Get 90% Course Fee Refund!</div>
            </div>
            <div class="course-card">
                <h3>Manual to Automation Testing: A QA Engineer's Guide</h3>
                <p>Beginner to Advance</p>
                <div class="details">
                    <span>29k+ interested Geeks</span>
                    <a href="#">Explore now</a>
                </div>
                <div class="refund">Get 90% Course Fee
