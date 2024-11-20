<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>King of Cricket</title>
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

        .content h1 {
            font-size: 4rem;
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            .content h1 {
                font-size: 2.5rem;
            }
            .navbar ul li {
                margin: 0 10px;
            }
        }

        /* Button styling */
        .button {
            display: inline-block;
        }

        .button button {
            width: 200px;
            padding: 15px 0;
            text-align: center;
            margin: 20px 10px;
            border-radius: 25px;
            font-weight: bold;
            border: 2px solid #009688;
            background: transparent;
            color: #fff;
            cursor: pointer;
            transition: 0.3s;
        }

        .button button:hover {
            background: #009688;
            color: #fff;
        }

        /* Card area styling */
        .wrapper {
            padding: 2% 2%;
        }

        #card-area {
            padding: 40px 0;
        }

        .box-area {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-top: 50px;
        }

        .box {
            border-radius: 10px;
            position: relative;
            overflow: hidden;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .box img {
            width: 100%;
            border-radius: 10px;
            display: block;
            transition: transform 0.5s ease-in-out;
        }

        .box:hover {
            transform: scale(1.02);
            box-shadow: 5px 10px 20px rgba(0, 0, 0, 0.6);
        }

        .overlay {
            height: 0;
            width: 100%;
            background: linear-gradient(transparent, #1c1c1c 58%);
            border-radius: 10px;
            position: absolute;
            left: 0;
            bottom: 0;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 20px;
            text-align: center;
            font-size: 14px;
            transition: height 0.5s ease-in-out;
            color: #fff;
        }

        .overlay h3 {
            font-weight: 500;
            margin-bottom: 10px;
            font-size: 24px;
            letter-spacing: 1px;
        }

        .overlay p {
            margin-top: 10px;
            font-size: 13px;
        }

        .box:hover .overlay {
            height: 100%;
        }

        /* Footer styling */
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
                <li><a href="login.jsp">Home</a></li>
                <li><a href="login.jsp">Teams</a></li>
                <li><a href="login.jsp">History</a></li>
                <li><a href="login.jsp">ICC News</a></li>
                <li><a href="login.jsp">Photos</a></li>
            </ul>
        </div>

        <!-- Centered content with title and buttons -->
        <div class="content">
            <h1>KING OF CRICKET</h1>
            <p><b>The Best Site in the World. Join us and increase your cricket knowledge.</b></p>
            <div class="button">
                <a href="login.jsp"><button type="button">Login</button></a>
                <a href="registration.jsp"><button type="button">Register</button></a>
            </div>
        </div>
        
        
    </div>

    <!-- Card Area with cricket stats -->
    <div id="card-area">
        <div class="wrapper">
            <div class="box-area">
                <div class="box">
                    <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/390900/390901.jpg">
                    <div class="overlay">
                        <h3>Kusal Mendis RUNS 143</h3>
                        <p>Kusal Mendis’ career-best 128-ball 143 containing 17 boundaries and 2 sixes was the highest by a Sri Lankan batsman against New Zealand.</p>
                    </div>
                </div>
                <div class="box">
                    <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/390900/390902.jpg">
                    <div class="overlay">
                        <h3>Avishka Fernando RUNS 100</h3>
                        <p>Avishka Fernando marked a perfect century comeback to form hitting 9 boundaries and 2 sixes in his 115-ball 100.</p>
                    </div>
                </div>
                <div class="box">
                    <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/377800/377806.jpg">
                    <div class="overlay">
                        <h3>Dilshan Madushanka</h3>
                        <p>Dilshan Madushanka's bowling dazzled fans with precision and skill.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer with social links and contact info -->
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
