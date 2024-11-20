<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Changing Background</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Main section with the background animation */
        .section_top {
            width: 100%;
            height: 100vh;
            overflow: hidden;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-size: cover;
            background-position: center;
            animation: changeBg 20s infinite ease-in-out; /* Animates the background images */
        }

        /* Add a dark overlay using the ::before pseudo-element */
        .section_top::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75));
            z-index: 1; /* Ensure the overlay stays above the background but below the content */
            pointer-events: none; /* Makes sure the overlay doesn't interfere with interactions */
        }

        /* Define keyframes for background changes */
        @keyframes changeBg {
            0% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/389400/389469.jpg');
            }
            25% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/385700/385704.jpg');
            }
            50% {
                background-image: url('https://c.ndtvimg.com/2023-10/vdarkphg_kusal-mendis-afp_625x300_15_October_23.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605');
            }
            75% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/382300/382343.jpg');
            }
            100% {
                background-image: url('https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/375900/375995.jpg');
            }
        }

        /* Navbar styling */
        .navbar {
            width: 90%;
            margin: auto;
            padding: 20px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            z-index: 10; /* Keeps the navbar on top of the background */
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

        /* Section content */
        h1 {
            color: #fff;
            font-size: 3rem;
            text-shadow: 0 0 10px rgba(0, 0, 0, 0.7);
            z-index: 2; /* Ensure text stays above the overlay */
            opacity: 0; /* Initially hidden */
            transform: translateY(50px); /* Start below */
            animation: fadeInUp 2s ease-out forwards; /* Animation applied */
        }

        /* Fade-in and slide-up effect */
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(50px); /* Start from below */
            }
            100% {
                opacity: 1;
                transform: translateY(0); /* End at normal position */
            }
        }

        /* Footer Styling */
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
    <div class="section_top">
        <!-- Navbar -->
        <div class="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="team.jsp">Teams</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="news.jsp">ICC News</a></li>
                <li><a href="photo.jsp">Photos</a></li>
            </ul>
        </div>
        <!-- Centered content -->
        <h1>Welcome to Cricket World</h1>
    </div>
    
    <div class="footer">
        <!-- Social Media Links -->
        <div class="social-links">
            <a href="#" target="_blank">Facebook</a>
            <a href="#" target="_blank">Twitter</a>
            <a href="#" target="_blank">Instagram</a>
            <a href="#" target="_blank">LinkedIn</a>
        </div>

        <!-- Contact Information -->
        <div class="contact-info">
            <p><strong>Page Name:</strong> King of Cricket</p>
            <p><strong>Contact Number:</strong> 0764687979</p>
            <p><strong>Email:</strong> <a href="mailto:kingofcricket272@gmail.com" style="color: #009688;">kingofcricket272@gmail.com</a></p>
        </div>

        <!-- Footer Bottom -->
        <p>&copy; 2024 King of Cricket. All rights reserved.</p>
    </div>
</body>
</html>
