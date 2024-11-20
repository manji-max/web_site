<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign In Form by Colorlib</title>


<!-- Inline CSS -->
<style>

 
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

    .sign-in {
        background: #ffffff;
        width: 70%;
        margin: 0 auto;
        padding: 50px 25px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
    }

    .signin-content {
        display: flex;
        justify-content: space-between;
    }

    .signin-form {
        width: 55%;
    }

    .signin-image {
        width: 40%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .signin-image img {
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

    .signup-image-link,
    .social-label {
        color: #666;
        text-decoration: none;
        font-size: 16px;
    }

    .signup-image-link:hover,
    .term-service:hover {
        color: #4CAF50;
    }

    .label-agree-term {
        font-size: 14px;
        color: #666;
    }

    .socials {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }

    .socials li {
        list-style: none;
        margin: 0 10px;
    }

    .socials a {
        color: #666;
        font-size: 24px;
        text-decoration: none;
    }
</style>
</head>
<body>

	<div class="main">

		<!-- Sign in Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="https://t3.ftcdn.net/jpg/08/13/07/68/240_F_813076845_e89B90SWDXbKiUPxRk8bcwmb4IcP62We.jpg" alt="sign in image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign In</h2>
						<form method="POST" action="login" class="register-form" id="login-form">
							<div class="form-group">
								<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
								<input type="text" name="username" id="username" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label>
								<input type="password" name="password" id="password" placeholder="Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
								<label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- Inline JavaScript -->
	<script>
		document.getElementById('login-form').addEventListener('submit', function(event) {
			event.preventDefault();
			validateLogin();
		});

		function validateLogin() {
			const username = document.getElementById('username').value.trim();
			const password = document.getElementById('password').value;

			if (!username || !password) {
				alert("Please fill out both username and password.");
				
				return false;
			}

			else if 
			{	
			alert("Login successful!");
			document.getElementById('login-form').submit();
			}
		}
	</script>
</body>
<!-- This template was made by Colorlib (https://colorlib.com) -->
</html>
