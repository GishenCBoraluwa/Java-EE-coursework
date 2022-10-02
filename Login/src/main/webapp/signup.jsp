<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="static/css/signup.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/60a0e84f8a.js" crossorigin="anonymous"></script>
    <title>SignUp</title>
</head>
<body>
    <div class="center">

    <div class="flex-container">
        <div><img src="static\pic\logo.png" alt="logo"></div>
        <!-- <div><h2>Phoenix Airline</h2></div> -->
    </div>    

    <h1>SignUp</h1>
    <form action="Register" method="post">
        <div class="txt_field">
            <input type="email" name="email" required>
            <label>Email</label>
        </div>
        <div class="txt_field">
            <input type="password" name="password" required>
            <label>Password</label>
        </div>
        <input type="submit" value="Get started">
        <div class="signup_link">
            Already have an account? <a href="/Login/AddPassenger">Login</a>
        </div>
    </form>

    <div class="divider1">
        <div class="line">
            <span></span>
        </div>
        <span>or</span>
        <div class="line">
            <span></span>
        </div>
    </div>



    <div class="icon">
    <i class="fa-brands fa-google"></i>
    </div>
    </div>
</body>
</html>