<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pheonix</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/742d2d79da.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="static/css/index_style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/742d2d79da.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="static/css/nav.css">
	<link rel="stylesheet" href="static/css/footer.css">
	<link rel="shortcut icon" href="static/img/logo.png">

   

    

</head>
<body>
   
    <!--navigation-->
  
    <nav class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="navbar">
      <div class="container-fluid">

        <a class="navbar-brand" href="#"><img src="static/img/logo.png" alt="" id="logo_nav"></a>

        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="navbar">
          <span class="navbar-toggler-icon"></span>
        </button>
  
        <div class="navbar-collapse justify-content-sm-center collapse" id="navbar">
          <ul class="navbar-nav ">
            <li class="nav-item">
              <a class="nav-link active" href="main.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Schedule</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="myBooking.jsp">My Booking</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="#">About Us</a>
            </li>
              </ul>
            </li>
          </ul>
        </div>

        <form class="d-flex" role="search">
          <button class="btn" type="submit"><i class="fa-solid fa-circle-user" id="user_si"></i></button>
        </form>

        
      </div>
    </nav>
    
    
    
   

    <!--main body-->
    <div class="container-fluid" id="part">
        <div class="row">
            <div class="col">
                <div class="container" id="place1">
                    <h1>Discover our paradise world<br>Travel Anywhere Now!</h1>
                </div>
                <div class="container" id="place">
                    <div class="row justify-content-center">
                        <div class="col-12 text-center">
                            <form action="" method="get">
                                <input type="radio" class="form-check-input radio_btn_trip" name="trip" id="one_trip">
                                <label class="form-check-label" for="one_trip">One way</label>
                                <input type="radio" class="form-check-input radio_btn_trip" name="trip" id="two_trip">
                                <label class="form-check-label" for="two_trip">Round way trip</label>
                                <input type="radio" class="form-check-input radio_btn_trip" name="trip" id="spec_trip">
                                <label class="form-check-label" for="spec_trip">Special Round way trip</label>
                                <hr>
                            </form>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-2 ">
                            <form action="" method="get">
                                <select class="form-select" aria-label="">
                                    <option selected>colombo</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                <p class="lbl_text"><i class="fa-solid fa-plane-departure"></i>  Flight from?</p>
                            </form>
                        </div>
                        <div class="col-2">
                            <form action="" method="get">
                                <select class="form-select" aria-label="">
                                    <option selected>United Kingdom</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                <p class="lbl_text"><i class="fa-solid fa-plane-arrival"></i> Where to?</p>
                            </form>
                        </div>
                        <div class="col-2 ">
                            <form action="" method="get">
                                <input type="date" id="" name="D_date" class="date">
                            </form>
                            <p class="lbl_text"><i class="fa-solid fa-calendar-days"></i> Depart</p>
                        </div>
                        <div class="col-2 ">
                            <form action="" method="get">
                                <input type="date" id="" name="A_date" class="date">
                            </form>
                            <p class="lbl_text"><i class="fa-solid fa-calendar-days"></i> Return</p>
                        </div>
                        <div class="col-2">
                            <form action="" method="get">
                                <select class="form-select" aria-label="">
                                    <option selected>Economy</option>
                                    <option value="1">Business</option>
                                    <option value="2">Platinum</option>
                                </select>
                            </form>
                            <p class="lbl_text">Passenger class</p>
                        </div>
                        <div class="col-2 text-center">
                            <form action="" method="get">
                                <button type="submit" class="btn_search"><i class="fa-solid fa-magnifying-glass"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!---->

    <!--footer-->
    <div class="container-fluid" id="foot-placeholder"></div>
    
    <div class="container-fluid">
        <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
          <div class="col mb-3">
            <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
                <img src="static/img/logo.png" alt="" id="logo_foot">
            </a>
            <p class="text-muted">© 2022</p>
          </div>
      
          <div class="col mb-3">
      
          </div>
      
          <div class="col mb-3">
            <h5 class="foot_Sub">Support</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted ">Help center</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Contact us</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Privacy policy</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Terms of service</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Trust and safty</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Accessibility</a></li>
            </ul>
          </div>
      
          <div class="col mb-3">
            <h5 class="foot_Sub">About</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About GooseFlight</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">How it works</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Blog</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Forum</a></li>
            </ul>
          </div>
      
          <div class="col mb-3">
            <h5 class="foot_Sub">Get the app</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Tripma for android</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Tripma for iOS</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Mobile site</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"><img src="../img/appStore.png" alt="" id="app_ios"></a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"><img src="../img/google.png" alt="" id="app_google"></a></li>
            </ul>
          </div>
        </footer>
      </div>
    
    
    
    <script src="static/css/index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
</body>
</html>