<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Navbar</title>
    <!-- Link to CSS and any required material libraries -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* CSS from React component */
        .navbar {
            background-color: grey;
            display: flex;
            align-items: center;
            padding: 10px;
        }
        .logo {
            height: 60px;
            margin-right: 10px;
        }
        .logo-text {
            display: flex;
            align-items: center;
            font-size: 24px;
            color: white;
        }
        .navbar-button {
            font-size: 16px;
            margin-left: 10px;
            color: white;
            text-decoration: none;
        }
        .spacer {
            flex-grow: 1;
        }
    </style>
</head>
<body>
    <div class="navbar">
        
        <div class="spacer"></div>
        <a href="${pageContext.request.contextPath}/home" class="navbar-button">Home</a>
        <a href="${pageContext.request.contextPath}/login" class="navbar-button">Login</a>
        <a href="${pageContext.request.contextPath}/register" class="navbar-button">Register</a>
        <a href="${pageContext.request.contextPath}/aboutus" class="navbar-button">About Us</a>
        <a href="${pageContext.request.contextPath}/contactus" class="navbar-button">Contact Us</a>
    </div>
</body>
</html>
