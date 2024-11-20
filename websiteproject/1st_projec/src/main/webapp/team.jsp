<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Image Grid with Text, Animations, and Dark Overlay</title>

    <style>
        /* Reset margin and padding for all elements */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Main section with the background animation */
        .banner {
            width: 100%;
            height: 100vh;
            overflow: hidden;
            position: relative;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            animation: changeBg 20s infinite ease-in-out; /* Animates the background images */
        }

        /* Keyframes for changing background images */
        @keyframes changeBg {
            0% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391200/391255.jpg');
            }
            50% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391100/391196.jpg');
            }
            100% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391200/391255.jpg');
            }
        }

        /* Add a dark overlay using the ::before pseudo-element */
        .banner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75));
            z-index: 1;
            pointer-events: none;
        }

        .navbar {
            width: 90%;
            margin: auto;
            padding: 20px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            z-index: 10;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
        }

        .navbar ul {
            display: flex;
            list-style: none;
        }

        .navbar ul li {
            margin: 0 15px;
            position: relative;
        }

        .navbar ul li a {
            text-decoration: none;
            color: #fff;
            text-transform: uppercase;
            font-weight: bold;
        }

        .navbar ul li::after {
            content: '';
            height: 3px;
            width: 0;
            background: #009688;
            position: absolute;
            left: 0;
            bottom: -5px;
            transition: 0.5s;
        }

        .navbar ul li:hover::after {
            width: 100%;
        }

        /* Centered content */
        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: #fff;
            z-index: 2;
        }

        /* Animated Text */
        .animated-text {
            font-size: 3rem;
            font-weight: bold;
            color: #fff;
            text-transform: uppercase;
            animation: slideIn 2s ease-out forwards;
            opacity: 0;
            margin-top: 150px; /* Adjusts the vertical position */
        }

        /* Animation for the text */
        @keyframes slideIn {
            0% {
                transform: translateY(-50px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Image Grid Layout */
        .image-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
            margin-top: 100px;
        }

        .image-container {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        /* Dark overlay on hover */
        .image-container::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark background */
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .image-container:hover::after {
            opacity: 1;
        }

        /* Image scaling and text visibility on hover */
        .image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .image-container:hover img {
            transform: scale(1.05); /* Slightly zoom the image */
        }

        /* Text on images */
        .image-container .image-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 2rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            opacity: 0;
            transition: opacity 0.5s ease-in-out;
        }

        .image-container:hover .image-text {
            opacity: 1;
        }

        /* Animating the text and image scaling */
        .image-container {
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
 .footer {
            background-color: #1c1c1c;
            color: #fff;
            padding: 30px 0;
            text-align: center;
        }

        .footer .social-links {
            margin: 20px 0;
        }

        .footer .social-links a {
            margin: 0 10px;
            text-decoration: none;
            color: #009688;
            font-size: 1.2rem;
            transition: color 0.3s;
        }

        .footer .social-links a:hover {
            color: #fff;
        }

        .footer .contact-info {
            margin: 20px 0;
        }

        .footer .contact-info p {
            font-size: 1rem;
            margin: 5px 0;
        }

        .footer .contact-info a {
            text-decoration: none;
            color: #009688;
        }

        .footer .contact-info a:hover {
            color: #fff;
        }

        .footer p {
            font-size: 0.9rem;
            margin-top: 10px;
            color: #aaa;
        }
    </style>
</head>
<body>

    <!-- Banner Section with background animation -->
    <div class="banner">
        <!-- Navbar -->
        <div class="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="team.jps">Teams</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="news.jsp">ICC News</a></li>
                <li><a href="photo.jsp">Photos</a></li>
            </ul>
        </div>
    </div>

    <!-- Animated Text "World Cricket Teams" -->
    <div class="content">
        <div class="animated-text">World Cricket Teams</div>
    </div>

    <!-- Image Grid Section with Text and Animations -->
    <div class="image-grid">
        <!-- Image 1 -->
        <div class="image-container">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391100/391162.jpg" alt="Image 1">
            <div class="image-text">NEW ZELEAND</div>
        </div>
        <!-- Image 2 -->
        <div class="image-container">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391100/391182.jpg" alt="Image 2">
            <div class="image-text">AUSTRALIA</div>
        </div>
        <!-- Image 3 -->
        <div class="image-container">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391100/391138.jpg" alt="Image 3">
            <div class="image-text">SRI LANKA</div>
        </div>
        <!-- Image 4 -->
        <div class="image-container">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391100/391172.jpg" alt="Image 4">
            <div class="image-text">WEST INDIES</div>
        </div>
        <!-- Image 5 -->
        <div class="image-container">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391100/391118.jpg" alt="Image 5">
            <div class="image-text">ENGLEND</div>
        </div>
        <div class="image-container">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/391000/391063.jpg" alt="Image 5">
            <div class="image-text">INDIA</div>
        </div>
    </div>

<div class="footer">
        <div class="social-links">
            <a href="" target="_blank">Facebook</a>
            <a href="#" target="_blank">Twitter</a>
            <a href="#" target="_blank">Instagram</a>
            <a href="#" target="_blank">LinkedIn</a>
        </div>
        <div class="contact-info">
            <p><strong>Page Name:</strong> King of Cricket</p>
            <p><strong>Contact Number:</strong> 0764687979</p>
            <p><strong>Email:</strong> <a href="mailto:kingofcricket272@gmail.com" style="color: #009688;">kingofcricket272@gmail.com</a></p>
        </div>
        <p>&copy; 2024 King of Cricket. All rights reserved.</p>
    </div>

</body>
</html>
