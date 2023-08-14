<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta viewport="width=device-width, initial-scale=1.0">
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <title>Home</title>
</head>
<body>
    <div class="container">
        <div class="form">
            <div class="header">
                <h1>Welcome ${userName}</h1>
                <p>Nothing to see here...</p>
            </div>
            <div class="text-center mt-4">
                <a href="/logout" class="btn btn-primary">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>
