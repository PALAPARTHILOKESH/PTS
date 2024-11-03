<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        /* Basic styling for the login page */
        body {
            background-image: url('<%= request.getContextPath() %>/images/employer.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .login-container {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            border: none;  /* Remove border for full transparency */
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0); /* Fully transparent background */
            box-shadow: none;  /* Remove shadow for full transparency */
        }
        .login-container h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        select, input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque for better visibility */
        }
        .login-button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .login-button:hover {
            background-color: #45a049;
        }
        .register-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        .register-link a {
            color: #4CAF50; /* Green color for the link */
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login To Your Portal</h2>
        <form action="${pageContext.request.contextPath}/authenticate" method="post">
            <!-- Role Selector -->
            <div class="form-group">
                <label for="role">Select Role:</label>
                <select id="role" name="role" required>
                    <option value="Trainer">Trainer</option>
                    <option value="Admin">Admin</option>
                    <option value="Officer">Officer</option>
                </select>
            </div>

            <!-- Username Field -->
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <!-- Login Button -->
            <button type="submit" class="login-button">Login</button>
        </form>

        <!-- Register Link -->
        <div class="register-link">
            <p>If you don't have an account, <a href="${pageContext.request.contextPath}/register">register here</a>.</p>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp" />
</body>
</html>
