<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        /* Inline CSS for the Home Page */

        body {
            background-image: url('<%= request.getContextPath() %>/images/bg.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .home-container {
            padding: 20px;
            text-align: center;
        }

        .hero {
            padding: 40px 0;
            background: rgba(255, 255, 255, 0.8);
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 2.5em;
            margin: 0;
        }

        .info-section {
            margin: 20px auto;
            padding: 10px;
            max-width: 800px;
            font-size: 1.2em;
            background: rgba(255, 255, 255, 0.8);
        }

        .image-gallery {
            margin: 40px 0;
        }

        .image-gallery h2 {
            font-size: 2em;
            margin-bottom: 20px;
        }

        .image-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .image-item {
            background: rgba(255, 255, 255, 0.9);
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            width: 300px;
        }

        .image-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .service-descriptions {
            max-width: 800px;
            margin: 0 auto;
            text-align: left;
        }

        .service {
            background: rgba(255, 255, 255, 0.8);
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 5px;
        }

        .service h3 {
            font-size: 1.5em;
            margin-top: 0;
        }
    </style>
</head>
<body>
    <jsp:include page="/views/navbar.jsp" /> <!-- Include Navbar -->
    <div class="home-container">
        <header class="hero">
            <h1>Welcome to the Placement Portal</h1>
            <p>Your gateway to exciting job opportunities!</p>
        </header>

        <section class="info-section">
            <p>We connect students with employers to facilitate successful placements. Our platform provides resources for skill development and career guidance.</p>
        </section>

        <section class="image-gallery">
            <h2>Our Services</h2>
            <div class="image-grid">
                <div class="image-item">
                    <img src="<%= request.getContextPath() %>/images/careercounselling.jpg" alt="Career Counseling">
                    <p><b>Career Counseling</b></p>
                </div>
                <div class="image-item">
                    <img src="<%= request.getContextPath() %>/images/resumebuilding.jpg" alt="Resume Building">
                    <p><b>Resume Building</b></p>
                </div>
                <div class="image-item">
                    <img src="<%= request.getContextPath() %>/images/interview.jpg" alt="Interview Preparation">
                    <p><b>Interview Preparation</b></p>
                </div>
                <div class="image-item">
                    <img src="<%= request.getContextPath() %>/images/job.jpg" alt="Job Fairs">
                    <p><b>Job Fairs</b></p>
                </div>
                <div class="image-item">
                    <img src="<%= request.getContextPath() %>/images/skill.jpg" alt="Skill Development">
                    <p><b>Skill Development</b></p>
                </div>
            </div>
        </section>

        <section class="service-descriptions">
            <h2>About Our Services</h2>
            <div class="service">
                <h3>Career Counseling</h3>
                <p>Our Career Counseling service helps students identify their career paths, offering personalized guidance tailored to their strengths and interests.</p>
            </div>
            <div class="service">
                <h3>Resume Building</h3>
                <p>We assist students in crafting impactful resumes that showcase their skills, experiences, and achievements.</p>
            </div>
            <div class="service">
                <h3>Interview Preparation</h3>
                <p>Our Interview Preparation service offers mock interviews and feedback sessions to help students refine their interviewing skills.</p>
            </div>
            <div class="service">
                <h3>Job Fairs</h3>
                <p>We organize job fairs that connect students with potential employers.</p>
            </div>
            <div class="service">
                <h3>Skill Development</h3>
                <p>Our Skill Development programs focus on enhancing students' skills through workshops and training sessions.</p>
            </div>
        </section>
    </div>
    <jsp:include page="/views/footer.jsp" />
</body>
</html>
