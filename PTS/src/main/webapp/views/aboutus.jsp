<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>About Us</title>
    <style>
        body {
            background-image: url('<%= request.getContextPath() %>/images/about.jpg');
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
        .about-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.1); /* Highly transparent background */
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #4CAF50; /* Green color for the heading */
        }
        .description {
            margin-bottom: 20px;
            line-height: 1.6;
        }
        .admin-images {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .admin-images img {
            border-radius: 8px;
            width: 150px; /* Set a fixed width for the images */
            height: auto; /* Maintain aspect ratio */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        .admin-names {
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="about-container">
        <h2>About Us</h2>
        <div class="description">
            <p>Welcome to our Placement Portal! We are committed to bridging the gap between students and potential employers. Our goal is to create a seamless platform that enhances the recruitment process and facilitates career growth for students.</p>
            <p>Our dedicated team works tirelessly to ensure that our services are not only user-friendly but also effective in meeting the diverse needs of our users. We harness the power of technology to provide innovative solutions for job seekers and recruiters alike.</p>
            <p>At the heart of our operations is a strong belief in the value of education and career development. We strive to empower students by offering resources, guidance, and a supportive community that encourages their professional aspirations.</p>
            <p>We take pride in our transparent approach, fostering trust and collaboration among our users. Our platform is designed to provide valuable insights and facilitate connections that lead to meaningful career opportunities.</p>
            <p>Join us on this journey to success! Together, we can shape the future of career development and create pathways to employment that benefit everyone.</p>
        </div>
        
        <h3>Meet Our Admins</h3>
        <div class="admin-images">
            <div>
                <img src="<%= request.getContextPath() %>/images/a3.jpeg" alt="Admin 1">
                <div class="admin-names">Admin 1</div>
            </div>
            <div>
                <img src="<%= request.getContextPath() %>/images/a2.jpeg" alt="Admin 2">
                <div class="admin-names">Admin 2</div>
            </div>
            <div>
                <img src="<%= request.getContextPath() %>/images/a1.jpeg" alt="Admin 3">
                <div class="admin-names">Admin 3</div>
            </div>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp" />
</body>
</html>
