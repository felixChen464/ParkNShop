﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="M_Adnan" />
<!-- Document Title -->
<title></title>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="assets/rs-plugin/css/settings.css" media="screen" />

<!-- StyleSheets -->
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">

<!-- Fonts Online -->
<link href="https://fonts.googleapis.com/css?family=Lato:100i,300,400,700,900" rel="stylesheet">

<!-- JavaScripts -->
<script src="assets/js/vendors/modernizr.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>

<!-- Page Wrapper -->
<div id="wrap"> 
  
  <!-- Top bar -->
  <div class="top-bar">
    <div class="container">
      <p>Welcome to SmartTech center!</p>
      <div class="right-sec">
        <ul>
          <li><a href="#.">Login/Register </a></li>
          <li><a href="#.">Store Location </a></li>
          <li><a href="#.">FAQ </a></li>
          <li><a href="#.">Newsletter </a></li>
          <li>
            <select class="selectpicker">
              <option>French</option>
              <option>German</option>
              <option>Italian</option>
              <option>Japanese</option>
            </select>
          </li>
          <li>
            <select class="selectpicker">
              <option>(USD)Dollar</option>
              <option>GBP</option>
              <option>Euro</option>
              <option>JPY</option>
            </select>
          </li>
        </ul>
        <div class="social-top"> <a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-twitter"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> <a href="#."><i class="fa fa-dribbble"></i></a> <a href="#."><i class="fa fa-pinterest"></i></a> </div>
      </div>
    </div>
  </div>
  
  <!-- Header -->
  <header>
    <div class="container">
      <div class="logo"> <a href="assets/index.jsp"><img src="assets/images/logo.png" alt="" ></a> </div>
      <div class="search-cate">
        <select class="selectpicker">
          <option> All Categories</option>
          <option> Home Audio & Theater</option>
          <option> TV & Video</option>
          <option> Camera, Photo & Video</option>
          <option> Cell Phones & Accessories</option>
          <option> Headphones</option>
          <option> Video Games</option>
          <option> Bluetooth & Wireless </option>
          <option> Gaming Console</option>
          <option> Computers & Tablets</option>
          <option> Monitors </option>
        </select>
        <input type="search" placeholder="Search entire store here...">
        <button class="submit" type="submit"><i class="icon-magnifier"></i></button>
      </div>
      
      <!-- Cart Part -->
      <ul class="nav navbar-right cart-pop">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="itm-cont">3</span> <i class="flaticon-shopping-bag"></i> <strong>My Cart</strong> <br>
          <span>3 item(s) - $500.00</span></a>
          <ul class="dropdown-menu">
            <li>
              <div class="media-left"> <a href="#." class="thumb"> <img src="assets/images/item-img-1-1.jpg" class="img-responsive" alt="" > </a> </div>
              <div class="media-body"> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> <span>250 x 1</span> </div>
            </li>
            <li>
              <div class="media-left"> <a href="#." class="thumb"> <img src="assets/images/item-img-1-2.jpg" class="img-responsive" alt="" > </a> </div>
              <div class="media-body"> <a href="#." class="tittle">Funda Para Ebook 7" full HD</a> <span>250 x 1</span> </div>
            </li>
            <li class="btn-cart"> <a href="#." class="btn-round">View Cart</a> </li>
          </ul>
        </li>
      </ul>
    </div>
    
    <!-- Nav -->
    <nav class="navbar ownmenu">
      <div class="container"> 
        
        <!-- Categories -->
        <div class="cate-lst"> <a  data-toggle="collapse" class="cate-style" href="#cater"><i class="fa fa-list-ul"></i> Our Categories </a>
          <div class="cate-bar-in">
            <div id="cater" class="collapse">
              <ul>
                  <li><a href="#."> Home Audio & Theater</a></li>
                  <li><a href="#."> TV & Video</a></li>
                  <li><a href="#."> Camera, Photo & Video</a></li>
                  <li class="sub-menu"><a href="#."> Cell Phones & Accessories</a>
                    <ul>
                      <li><a href="#."> TV & Video</a></li>
                      <li><a href="#."> Camera, Photo & Video</a></li>
                      <li><a href="#."> Cell Phones & Accessories</a>
                    </ul>
                  </li>
                  <li><a href="#."> Headphones</a></li>
                  <li><a href="#."> Video Games</a></li>
                  <li class="sub-menu"><a href="#."> Bluetooth & Wireless Speakers</a>
                    <ul>
                      <li><a href="#."> TV & Video</a></li>
                      <li><a href="#."> Camera, Photo & Video</a></li>
                      <li><a href="#."> Cell Phones & Accessories</a>
                    </ul>
                  </li>
                  <li class="sub-menu"><a href="#."> Gaming Console</a>
                    <ul>
                      <li><a href="#."> TV & Video</a></li>
                      <li><a href="#."> Camera, Photo & Video</a></li>
                      <li><a href="#."> Cell Phones & Accessories</a>
                    </ul>
                  </li>
                  <li><a href="#."> Computers & Tablets</a></li>
                  <li><a href="#."> Monitors</a></li>
                  <li><a href="#."> Home Appliances</a></li>
                  <li><a href="#."> Office Supplies</a></li>
                </ul>
            </div>
          </div>
        </div>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-open-btn" aria-expanded="false"> <span><i class="fa fa-navicon"></i></span> </button>
        </div>
        
        <!-- NAV -->
        <div class="collapse navbar-collapse" id="nav-open-btn">
          <ul class="nav">
            <li><a href="assets/index.jsp">Home </a></li>
			<li><a href="About.jsp"> About </a></li>
			<li><a href="ListProducts.jsp"> List Products </a></li>
            <li><a href="BuyerProductDetail.jsp"> Product Details </a></li>
            <li><a href="contact.jsp"> Contact </a></li>
          </ul>
        </div>
        
        <!-- NAV RIGHT -->
        <div class="nav-right"> </div>
      </div>
    </nav>
  </header>
  
  <!-- Content -->
  <div id="content"> 
    
    <!-- Linking -->
    <div class="linking">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">About Us</li>
        </ol>
      </div>
    </div>
    
    <!-- About Sec -->
    <section class="about-sec padding-top-60 padding-bottom-60">
      <div class="container"> 
        
        <!-- About Adds -->
        <div class="about-adds">
          <div class="position-center-center">
            <h2>SmartTech <small> Digital & Electronic PSD Template!</small></h2>
            <a href="#." class="btn-round">Shop with Us</a> </div>
        </div>
      </div>
    </section>
    
    <!-- Shipping Info -->
    <section class="shipping-info padding-bottom-60">
      <div class="container">
        <ul>
          <!-- Free Shipping -->
          <li>
            <div class="media-left"> <i class="flaticon-delivery-truck-1"></i> </div>
            <div class="media-body">
              <h5>Free Shipping</h5>
              <span>On order over $99</span></div>
          </li>
          <!-- Money Return -->
          <li>
            <div class="media-left"> <i class="flaticon-arrows"></i> </div>
            <div class="media-body">
              <h5>Money Return</h5>
              <span>30 Days money return</span></div>
          </li>
          <!-- Support 24/7 -->
          <li>
            <div class="media-left"> <i class="flaticon-operator"></i> </div>
            <div class="media-body">
              <h5>Support 24/7</h5>
              <span>Hotline: (+100) 123 456 7890</span></div>
          </li>
          <!-- Safe Payment -->
          <li>
            <div class="media-left"> <i class="flaticon-business"></i> </div>
            <div class="media-body">
              <h5>Safe Payment</h5>
              <span>Protect online payment</span></div>
          </li>
        </ul>
      </div>
    </section>
    
    <!-- Skills -->
    <section class="skills padding-top-60">
      <div class="container"> 
        
        <!-- heading -->
        <div class="heading">
          <h2>Our Awesome Skills</h2>
          <hr>
        </div>
        
        <!-- progress-bars -->
        <div class="progress-bars"> 
          <!-- PHOTOSHOP -->
          <div class="bar">
            <div class="row">
              <div class="col-sm-2">
                <p>Adobe/Photoshop </p>
              </div>
              <div class="col-sm-10">
                <div class="progress" data-percent="90%">
                  <div class="progress-bar"> <span class="progress-bar-tooltip">90%</span></div>
                </div>
              </div>
            </div>
          </div>
          
          <!-- HTML -->
          <div class="bar">
            <div class="row">
              <div class="col-sm-2">
                <p>UI Design</p>
              </div>
              <div class="col-sm-10">
                <div class="progress" data-percent="70%">
                  <div class="progress-bar"><span class="progress-bar-tooltip">70%</span> </div>
                </div>
              </div>
            </div>
          </div>
          
          <!-- ILLUSTRATION -->
          <div class="bar">
            <div class="row">
              <div class="col-sm-2">
                <p>Layout & Frame</p>
              </div>
              <div class="col-sm-10">
                <div class="progress" data-percent="80%">
                  <div class="progress-bar"><span class="progress-bar-tooltip">80%</span> </div>
                </div>
              </div>
            </div>
          </div>
          
          <!-- ILLUSTRATION -->
          <div class="bar">
            <div class="row">
              <div class="col-sm-2">
                <p>Typography</p>
              </div>
              <div class="col-sm-10">
                <div class="progress" data-percent="80%">
                  <div class="progress-bar"><span class="progress-bar-tooltip">80%</span> </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Team -->
    <section class="padding-top-60 padding-bottom-60">
      <div class="container"> 
        
        <!-- heading -->
        <div class="heading">
          <h2>Meet Our Team</h2>
          <hr>
        </div>
        <div class="team">
          <div class="row">
            <div class="col-md-3"> <img class="img-responsive" src="assets/images/team-img-1.jpg" alt="" >
              <h3>Tom Doe</h3>
              <span>Ceo/Founder SmartTech</span> </div>
            <div class="col-md-3"> <img class="img-responsive" src="assets/images/team-img-2.jpg" alt="" >
              <h3>Tom Doe</h3>
              <span>Ceo/Founder SmartTech</span> </div>
            <div class="col-md-3"> <img class="img-responsive" src="assets/images/team-img-3.jpg" alt="" >
              <h3>Tom Doe</h3>
              <span>Ceo/Founder SmartTech</span> </div>
            <div class="col-md-3"> <img class="img-responsive" src="assets/images/team-img-4.jpg" alt="" >
              <h3>Tom Doe</h3>
              <span>Ceo/Founder SmartTech</span> </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Clients img -->
    <section class="light-gry-bg clients-img">
      <div class="container">
        <ul>
          <li><img src="assets/images/c-img-1.png" alt="" ></li>
          <li><img src="assets/images/c-img-2.png" alt="" ></li>
          <li><img src="assets/images/c-img-3.png" alt="" ></li>
          <li><img src="assets/images/c-img-4.png" alt="" ></li>
          <li><img src="assets/images/c-img-5.png" alt="" ></li>
        </ul>
      </div>
    </section>
    
    <!-- Newslatter -->
    <section class="newslatter">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h3>Subscribe our Newsletter <span>Get <strong>25% Off</strong> first purchase!</span></h3>
          </div>
          <div class="col-md-6">
            <form>
              <input type="email" placeholder="Your email address here...">
              <button type="submit">Subscribe!</button>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- End Content --> 
  
  <!-- Footer -->
  <footer>
    <div class="container"> 
      
      <!-- Footer Upside Links -->
      <div class="foot-link">
        <ul>
          <li><a href="#."> About us </a></li>
          <li><a href="#."> Customer Service </a></li>
          <li><a href="#."> Privacy Policy </a></li>
          <li><a href="#."> Site Map </a></li>
          <li><a href="#."> Search Terms </a></li>
          <li><a href="#."> Advanced Search </a></li>
          <li><a href="#."> Orders and Returns </a></li>
          <li><a href="#."> Contact Us</a></li>
        </ul>
      </div>
      <div class="row"> 
        
        <!-- Contact -->
        <div class="col-md-4">
          <h4>Contact SmartTech!</h4>
          <p>Address: 45 Grand Central Terminal New York, NY 1017
            United State USA</p>
          <p>Phone: (+100) 123 456 7890</p>
          <p>Email: Support@smarttech.com</p>
          <!-- Social Links -->
          <div class="social-links"> <a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-twitter"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> <a href="#."><i class="fa fa-pinterest"></i></a> <a href="#."><i class="fa fa-instagram"></i></a> <a href="#."><i class="fa fa-google"></i></a> </div>
        </div>
        
        <!-- Categories -->
        <div class="col-md-3">
          <h4>Categories</h4>
          <ul class="links-footer">
            <li><a href="#.">Home Audio & Theater</a></li>
            <li><a href="#."> TV & Video</a></li>
            <li><a href="#."> Camera, Photo & Video</a></li>
            <li><a href="#."> Cell Phones & Accessories</a></li>
            <li><a href="#."> Headphones</a></li>
            <li><a href="#."> Video Games</a></li>
            <li><a href="#."> Bluetooth & Wireless</a></li>
          </ul>
        </div>
        
        <!-- Categories -->
        <div class="col-md-3">
          <h4>Customer Services</h4>
          <ul class="links-footer">
            <li><a href="#.">Shipping & Returns</a></li>
            <li><a href="#."> Secure Shopping</a></li>
            <li><a href="#."> International Shipping</a></li>
            <li><a href="#."> Affiliates</a></li>
            <li><a href="#."> Contact </a></li>
          </ul>
        </div>
        
        <!-- Categories -->
        <div class="col-md-2">
          <h4>Information</h4>
          <ul class="links-footer">
            <li><a href="#.">Our Blog</a></li>
            <li><a href="#."> About Our Shop</a></li>
            <li><a href="#."> Secure Shopping</a></li>
            <li><a href="#."> Delivery infomation</a></li>
            <li><a href="#."> Store Locations</a></li>
            <li><a href="#."> FAQs</a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  
  <!-- Rights -->
  <div class="rights">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
        </div>
        <div class="col-sm-6 text-right"> <img src="assets/images/card-icon.png" alt=""> </div>
      </div>
    </div>
  </div>
  
  <!-- End Footer --> 
  
  <!-- GO TO TOP  --> 
  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> 
  <!-- GO TO TOP End --> 
</div>
<!-- End Page Wrapper --> 

<!-- JavaScripts --> 
<script src="assets/js/vendors/jquery/jquery.min.js"></script>
<script src="assets/js/vendors/wow.min.js"></script>
<script src="assets/js/vendors/bootstrap.min.js"></script>
<script src="assets/js/vendors/own-menu.js"></script>
<script src="assets/js/vendors/jquery.sticky.js"></script>
<script src="assets/js/vendors/owl.carousel.min.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="assets/rs-plugin/js/jquery.tp.t.min.js"></script>
<script type="text/javascript" src="assets/rs-plugin/js/jquery.tp.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/vendors/jquery.nouislider.min.js"></script>
<script>
jQuery(document).ready(function($) {
  
 
    $("#price-range").noUiSlider({
    range: {
      'min': [ 0 ],
      'max': [ 1000 ]
    },
    start: [40, 940],
        connect:true,
        serialization:{
            lower: [
        $.Link({
          target: $("#price-min")
        })
      ],
      upper: [
        $.Link({
          target: $("#price-max")
        })
      ],
      format: {
      
        decimals: 2,
        prefix: '$'
      }
        }
  })
})

</script>
</body>
</html>