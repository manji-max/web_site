<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Inline CSS -->
<style>
    /* Reset some basic styling */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Arial', sans-serif;
        background-color: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .main {
        width: 100%;
        padding: 50px 0;
    }

    .signup {
        background: url('your-image-url.jpg') no-repeat center center;
        background-size: cover;
        width: 70%;
        margin: 0 auto;
        padding: 50px 25px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
    }

    .signup-content {
        display: flex;
        justify-content: space-between;
    }

    .signup-form {
        width: 55%;
    }

    .signup-image {
        width: 40%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .signup-image img {
        max-width: 100%;
        height: auto;
        border-radius: 5px;
    }

    .form-title {
        font-size: 24px;
        color: #333;
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        position: relative;
        margin-bottom: 20px;
    }

    .form-group input[type="text"],
    .form-group input[type="email"],
    .form-group input[type="password"] {
        width: 100%;
        padding: 10px 15px;
        border-radius: 5px;
        border: 1px solid #ddd;
        font-size: 16px;
        color: #333;
    }

    .form-group label {
        position: absolute;
        top: 50%;
        left: 15px;
        transform: translateY(-50%);
        color: #666;
    }

    .form-group input[type="submit"] {
        width: 100%;
        padding: 10px 15px;
        font-size: 18px;
        color: #fff;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .form-group input[type="submit"]:hover {
        background-color: #45a049;
    }

    .signup-image-link {
        display: block;
        margin-top: 20px;
        text-align: center;
        color: #666;
        text-decoration: none;
        font-size: 16px;
    }

    .signup-image-link:hover {
        color: #4CAF50;
    }

    .label-agree-term {
        font-size: 14px;
        color: #666;
    }

    .term-service {
        color: #4CAF50;
        text-decoration: none;
    }

    .term-service:hover {
        text-decoration: underline;
    }

    /* Overlay for success message */
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.7);
        display: flex;
        justify-content: center;
        align-items: center;
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.5s ease, visibility 0.5s;
    }

    .overlay.show {
        opacity: 1;
        visibility: visible;
    }

    .overlay-content {
        background: #fff;
        padding: 20px 40px;
        border-radius: 5px;
        text-align: center;
        animation: popUp 0.5s ease forwards;
    }

    .overlay-content h2 {
        font-size: 24px;
        color: #4CAF50;
    }

    /* Animation for pop-up */
    @keyframes popUp {
        from { transform: scale(0.8); opacity: 0; }
        to { transform: scale(1); opacity: 1; }
    }
</style>
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                    
                        <form method="POST" action="RegistrationServlet" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" />
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
                            </div>
                            <div class="form-group">
                                <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="text" name="contact" id="contact" placeholder="Contact no" />
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>
                                    I agree all statements in <a href="#" class="term-service">Terms of service</a>
                                </label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img src="https://t4.ftcdn.net/jpg/05/35/82/25/240_F_535822553_DCntqQmn0cb8wp3Op6GP9KRfh3uPyhtr.jpg" alt="sign up image">
                            <img src="https://t4.ftcdn.net/jpg/05/35/82/25/240_F_535822553_DCntqQmn0cb8wp3Op6GP9KRfh3uPyhtr.jpg" alt="sign up image">
                        </figure>
                        <a href="login.jsp" class="signup-image-link">I am already a member</a>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- Success Overlay -->
    <div class="overlay" id="success-overlay">
        <div class="overlay-content">
            <h2>Account Created!</h2>
        </div>
    </div>

    <!-- Inline JavaScript -->
    <script>
        document.getElementById('register-form').addEventListener('submit', function(event) {
            event.preventDefault();
            validateForm();
        });

        function validateForm() {
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('pass').value;
            const repeatPassword = document.getElementById('re_pass').value;
            const contact = document.getElementById('contact').value.trim();
            const agreeTerms = document.getElementById('agree-term').checked;

            if (!name || !email || !password || !repeatPassword || !contact) {
                alert("Please fill out all fields.");
                return false;
            }

            if (password !== repeatPassword) {
                alert("Passwords do not match.");
                return false;
            }

            if (!agreeTerms) {
                alert("Please agree to the terms of service.");
                return false;
            }

            // Show success overlay
            document.getElementById('success-overlay').classList.add('show');
            
            // Simulate a form submission delay
            setTimeout(() => {
                document.getElementById('register-form').submit();
            }, 1500); // Adjust delay if necessary
        }
    </script>

</body>
<!-- This template was made by Colorlib (https://colorlib.com) -->
</html>  
