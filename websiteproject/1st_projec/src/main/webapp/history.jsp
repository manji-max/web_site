<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>History of Cricket</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
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
    .container {
        width: 80%;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1, h2 {
        color: #007bc7;
    }

    .image-container {
        text-align: center;
        margin-bottom: 20px;
    }

    .image-container img {
        width: 70%;
        height: auto;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    p {
        line-height: 1.6;
        margin-bottom: 20px;
    }

    hr {
        border: 1px solid #ddd;
        margin: 20px 0;
    }

    .section-header {
        margin-top: 40px;
        font-size: 1.5em;
        font-weight: bold;
        color: #333;
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
        <span>The World Cricket</span> History
    </div>
</div>
<div class="container">
    <h1>Early Cricket</h1>
    <p><strong>Main article: History of cricket to 1725</strong></p>

    <div class="image-container">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/First_Grand_Match_of_Cricket_Played_by_Members_of_the_Royal_Amateur_Society_on_Hampton_Court_Green%2C_..._-_Google_Art_Project.jpg/500px-First_Grand_Match_of_Cricket_Played_by_Members_of_the_Royal_Amateur_Society_on_Hampton_Court_Green%2C_..._-_Google_Art_Project.jpg" alt="Cricket History Image">
    </div>

    <h2>Origin</h2>
    <p>Cricket was created during Saxon or Norman times by children living in the Weald, an area of dense woodlands and clearings in south-east England that lies across Kent and Sussex. The first definite written reference is from the end of the 16th century.</p>
    
    <hr>

    <p>There have been several speculations about the game's origins, including some that it was created in France or Flanders. The earliest of these speculative references is from 1300 and concerns the future King Edward II playing at "creag and other games" in both Westminster and Newenden. It has been suggested that "creag" was an Old English word for cricket, but expert opinion is that it was an early spelling of "craic", meaning "fun and games in general".</p>

    <hr>

    <p>It is generally believed that cricket survived as a children's game for many generations before it was increasingly taken up by adults around the beginning of the 17th century. Possibly cricket was derived from bowls, assuming bowls is the older sport, by the intervention of a batsman trying to stop the ball from reaching its target by hitting it away. Playing on sheep-grazed land or in clearings, the original implements may have been a matted lump of sheep's wool (or even a stone or a small lump of wood) as the ball; a stick or a crook or another farm tool as the bat; and a stool or a tree stump or a gate (e.g., a wicket gate) as the wicket.</p>

    <div class="section-header">First definite reference</div>

    <p>John Derrick was a pupil at the Royal Grammar School, then the Free School, in Guildford when he and his friends played creckett circa 1550.</p>

    <div class="image-container">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/A_Front_View_of_Dartmouth_College_%281793%29.jpg/321px-A_Front_View_of_Dartmouth_College_%281793%29.jpg" alt="John Derrick Cricket Image">
    </div>

    <p>In 1597 (Old Style – 1598 New Style) a court case in England concerning an ownership dispute over a plot of common land in Guildford, Surrey, mentions the game of creckett. A 59-year-old coroner, John Derrick, testified that he and his school friends had played creckett on the site fifty years earlier when they attended the Free School. Derrick's account proves beyond reasonable doubt that the game was being played in Surrey circa 1550, and is the earliest universally accepted reference to the game.</p>

    <hr>

    <p>The first reference to cricket being played as an adult sport was in 1611, when two men in Sussex were prosecuted for playing cricket on Sunday instead of going to church. In the same year, a dictionary defined cricket as a boys' game, and this suggests that adult participation was a recent development. In an account of a case brought before the King's Bench in 1640, it is recorded that a cricket match "between the Weald & Upland" took place "about 30 yeares [sic]" previously.</p>
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
