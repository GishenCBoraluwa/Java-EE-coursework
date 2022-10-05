<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="shortcut icon" href="static/img/logo.png">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/60a0e84f8a.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <div class="center">
    <div class="flex-container">
        <div><img src="static/pic/logo.png" alt="logo"></div>
        <!-- <div><h2>Phoenix Airline</h2></div> -->
      </div>


      <h1>Welcome</h1>

    <form action="AddPassenger" method="post">
        <div class="txt_field">
            <input type="email" name="email" required>
            <label>Email address</label>
        </div>
        <div class="txt_field">
            <input type="password" name="password" required>
            <label>Password</label>
        </div>
        
        <div class="signup_link">
            Dont have account? <a href="signup.jsp">Signup</a> 
        </div>
        <div class="radio_btn">
            <input type="radio" name="grade" id="grade1">
            <label for="grade1">Grade 1</label>
            <input type="radio" name="grade" id="grade2">
            <label for="grade2">Grade 2</label>
        </div>
        
        <input type="submit" value="Login">
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