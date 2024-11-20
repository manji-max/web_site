<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Results in Photos</title>
<style>

* {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .banner {
        width: 100%;
        height: 100vh;
        overflow: hidden;
        position: relative;
        background-size: cover;
        background-position: center;
        animation: changeBg 20s infinite ease-in-out;
    }

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

    /* Text Styling */
    .banner-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        color: #fff;
        font-size: 3rem;
        font-family: 'Poppins', sans-serif;
        text-transform: uppercase;
        z-index: 2;
        animation: fadeIn 3s ease-in-out;
    }
    body {
        font-family: Arial, sans-serif;
    }

    /* Section header */
    .section-header {
        font-size: 1.5em;
        font-weight: bold;
        margin: 20px 0;
        border-bottom: 2px solid #ddd;
        padding-bottom: 10px;
        color: #333;
    }

    .photo-gallery {
        display: flex;
        gap: 20px;
        overflow-x: auto;
        padding: 10px 0;
    }

    /* Individual photo item */
    .photo-item {
        flex: 0 0 300px;
        display: flex;
        flex-direction: column;
        align-items: start;
    }

    .photo-item img {
        width: 100%;
        height: 200px;
        object-fit: cover;
        border-radius: 5px;
    }

    .photo-caption {
        margin-top: 8px;
        font-size: 0.9em;
        color: #666;
    }

    .photo-caption span {
        font-weight: bold;
        color: #333;
    }

    /* All link */
    .all-link {
        color: #007bff;
        font-weight: bold;
        text-decoration: none;
        float: right;
    }

    .all-link:hover {
        text-decoration: underline;
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
<div class="banner">
    <div class="navbar">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="team.jsp">Teams</a></li>
            <li><a href="history.jsp">History</a></li>
            <li><a href="news.jsp">ICC News</a></li>
            <li><a href="photo.jsp">Photos</a></li>
        </ul>
    </div>
    <div class="banner-text">
        <span>The World Cricket</span> News
    </div>
</div>
<div class="content">
    <div class="section-header">
        RESULTS IN PHOTOS
        <a href="allnews.jsp" class="all-link">ALL &rarr;</a>
    </div>

    <div class="photo-gallery">
        <div class="photo-item">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/391100/391161.jpg" alt="Photo 1">
            <div class="photo-caption">
                <span>Oct 18, 2024</span> Pakistan await the good news as Joe Root reviews his lbw verdict © Getty Images
            </div>
        </div>

        <div class="photo-item">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/391100/391163.jpg" alt="Photo 2">
            <div class="photo-caption">
                <span>Nov 25, 2023</span> That's that - the umpires break the news to the two captains © Getty Images
            </div>
        </div>

        <div class="photo-item">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/391100/391159.jpg" alt="Photo 3">
            <div class="photo-caption">
                <span>Oct 9, 2023</span> The outfield in Dharamsala has been making the news © ICC via Getty Images
            </div>
        </div>
        <div class="photo-item">
            <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/391100/391159.jpg" alt="Photo 3">
            <div class="photo-caption">
                <span>Oct 9, 2023</span> The outfield in Dharamsala has been making the news © ICC via Getty Images
            </div>
        </div>
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
