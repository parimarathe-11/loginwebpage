<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 100px;
        }
        a {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%
    String username = (String) session.getAttribute("username");

    if (username == null) {
        request.setAttribute("error", "Session expired! Please login again.");
        RequestDispatcher rd = request.getRequestDispatcher("loginpari.html");
        rd.forward(request, response);
        return;
    }
%>

<h2>Welcome, <%= username %>!</h2>
<p>You are successfully logged in.</p>

<a href="logout">Logout</a>

</body>
</html>
