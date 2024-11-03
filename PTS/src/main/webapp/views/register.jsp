<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        /* Styling for the body to center the container */
        body {
            display: flex;
            justify-content: center;  /* Center horizontally */
            align-items: center;      /* Center vertically */
            height: 100vh;           /* Full viewport height */
            margin: 0;               /* Remove default margin */
            background-color: #f0f0f0; /* Optional background color */
            background-image: url('<%= request.getContextPath() %>/images/careercounselling.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        /* Compact styling for the registration form */
        .register-container {
            max-width: 400px;
            margin: 20px;            /* Margin around the container */
            padding: 15px;
            border: none;            /* No border for full transparency */
            background-color: rgba(255, 255, 255, 0); /* Fully transparent background */
            box-shadow: none;        /* No shadow for full transparency */
        }
        .register-container h2 {
            text-align: center;
            color: #333;
            font-size: 15px;
            margin-bottom: 15px;
        }
        .form-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .form-group {
            flex: 1;
            margin-right: 10px;
        }
        .form-group:last-child {
            margin-right: 0;
        }
        label {
            display: block;
            font-weight: bold;
            font-size: 12px;
            color: white;
            margin-bottom: 3px;
        }
        input[type="text"], input[type="email"], input[type="tel"], input[type="password"], select {
            width: 100%;
            padding: 5px;
            font-size: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque input fields for visibility */
        }
        .register-button {
            width: 100%;
            padding: 8px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            margin-top: 10px;
        }
        .register-button:hover {
            background-color: #45a049;
        }
        .login-link {
            text-align: center;
            margin-top: 15px;
            font-size: 12px;
            color: #333;
        }
        .login-link a {
            color: #4CAF50; /* Green color for the link */
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Student Registration</h2>
        <form action="${pageContext.request.contextPath}/registerStudent" method="post">

            <!-- First Row: Name and Email -->
            <div class="form-row">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
            </div>

            <!-- Second Row: Phone and Password -->
            <div class="form-row">
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" minlength="8" required>
                </div>
            </div>

            <!-- Third Row: Course and Year of Study -->
            <div class="form-row">
                <div class="form-group">
                    <label for="course">Course:</label>
                    <input type="text" id="course" name="course" required>
                </div>
                <div class="form-group">
                    <label for="year">Year of Study:</label>
                    <select id="year" name="year" required>
                        <option value="">Select Year</option>
                        <option value="1">1st Year</option>
                        <option value="2">2nd Year</option>
                        <option value="3">3rd Year</option>
                        <option value="4">4th Year</option>
                    </select>
                </div>
            </div>

            <!-- Register Button -->
            <button type="submit" class="register-button">Register</button>
        </form>

        <!-- Login Link -->
        <div class="login-link">
            <p>Already have an account? <a href="${pageContext.request.contextPath}/login">Login here</a>.</p>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp"></jsp:include>
</body>
</html>
