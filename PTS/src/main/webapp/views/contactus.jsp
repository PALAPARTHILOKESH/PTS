<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
        body {
            background-image: url('<%= request.getContextPath() %>/images/contact.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-color: #f0f0f0; /* Light background color */
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .contact-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #4CAF50; /* Green color for the heading */
        }
        .admin-info {
            margin-bottom: 20px;
        }
        .admin-info p {
            margin: 5px 0; /* Space between admin info lines */
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            height: 100px; /* Set a default height */
            resize: vertical; /* Allow vertical resizing only */
        }
        .submit-button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="contact-container">
        <h2>Contact Us</h2>
        
        <div class="admin-info">
            <h3>Admin Contact Information</h3>
            <p>Email: admin1@example.com | Mobile: 123-456-7890</p>
            <p>Email: admin2@example.com | Mobile: 098-765-4321</p>
            <p>Email: admin3@example.com | Mobile: 567-890-1234</p>
        </div>

        <form action="${pageContext.request.contextPath}/submitFeedback" method="post">
            <div class="form-group">
                <label for="feedback">Your Feedback:</label>
                <textarea id="feedback" name="feedback" required></textarea>
            </div>
            <button type="submit" class="submit-button">Submit Feedback</button>
        </form>
    </div>
    <jsp:include page="/views/footer.jsp" />
</body>
</html>
