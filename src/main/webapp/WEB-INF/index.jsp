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
<title>Login</title>
</head>
<body>
    <div class="container">
        <div id="top">
            <div class="header">
                <h1>Book Club</h1>
                <h5>A place for friends to share thoughts on books</h5>
        </div>
        <div id="left">
            <div class="form">
                <div class="header">
                    <h1>Register</h1>
                </div>
                <form:form action="/register" modelAttribute="newUser">
                    <div class="form-group">
                        <label for="userName">Username</label>
                        <form:input path="userName" type="text" class="form-control" id="userName" placeholder="Username" />
                        <form:errors path="userName" cssClass="alert alert-danger" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <form:input path="email" type="email" class="form-control" id="email" placeholder="Email" />
                        <form:errors path="email" cssClass="alert alert-danger" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <form:input path="password" type="password" class="form-control" id="password" placeholder="Password" />
                        <form:errors path="password" cssClass="alert alert-danger" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="confirm">Confirm Password</label>
                        <form:input path="confirm" type="password" class="form-control" id="confirm" placeholder="Confirm Password" />
                        <form:errors path="confirm" cssClass="alert alert-danger" element="div" />
                    </div>
                    <div class="text-center mt-4">
                        <input type="submit" value="Create Account" class="btn btn-primary" />
                    </div>
                </form:form>
            </div>
        </div>
        <div id="right">
            <div class="form">
                <div class="header">
                    <h1>Login</h1>
                </div>
                <form:form action="/login" modelAttribute="newLogin">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <form:input path="email" type="email" class="form-control" id="email" placeholder="Email" />
                        <form:errors path="email" cssClass="alert alert-danger" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <form:input path="password" type="password" class="form-control" id="password" placeholder="Password" />
                        <form:errors path="password" cssClass="alert alert-danger" element="div" />
                    </div>
                    <div class="text-center mt-4">
                        <input type="submit" value="Login" class="btn btn-primary" />
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
