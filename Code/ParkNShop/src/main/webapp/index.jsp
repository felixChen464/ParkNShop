<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="M_Adnan" />
<!-- Document Title -->
<title>Home</title>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

<!-- StyleSheets -->
<link rel="stylesheet" href="css2/ionicons.min.css">
<link rel="stylesheet" href="css2/bootstrap.min.css">
<link rel="stylesheet" href="css2/font-awesome.min.css">
<link rel="stylesheet" href="css2/main.css">
<link rel="stylesheet" href="css2/style.css">
<link rel="stylesheet" href="css2/responsive.css">

<!-- Fonts Online -->
<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">


<!-- JavaScripts -->
<script src="js/vendors/modernizr.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
    <!--<style type="text/css">-->
        <!--.right-sec ul li ul li{-->
            <!--float:none;-->
            <!--width:100px;-->
            <!--margin:0;-->
        <!--}-->
        <!--.right-sec ul li ul{ display:none;  width:100px;}-->
        <!--.right-sec ul li.listshow ul{ display:block;}-->

        <!--.right-sec ul li ul li{-->
            <!--float:none;-->
            <!--width:100px;-->
            <!--margin:0;-->
        <!--}-->
        <!--.right-sec ul li ul li a{-->
            <!--background: none;-->
                <!--width:100px;-->

        <!--}-->
        <!--.right-sec ul li ul li a:hover{-->
            <!--background: #000000;-->
            <!--color: #FFFFFF;-->
        <!--}-->
    <!--</style>-->
    <!--<script type="text/javascript">-->
        <!--function menuFix(){-->
            <!--var sfEles =document.getElementsByClassName("right-sec").getElementsByTagName("li");-->
            <!--for(var i=0;i<sfEles.length;i++){-->
                <!--sfEles[i].onmouseover=function(){-->
                    <!--this.className+=(this.className.length>0?"":"")+"listshow";-->
                <!--}-->
                <!--sfEles[i].onmouseout=function(){-->
                    <!--this.className=this.className.replace("listshow","");-->
                <!--}-->
            <!--}-->
        <!--}-->
        <!--window.onload=menuFix;-->
    <!--</script>-->

</head>
<body>

<!-- Page Wrapper -->
<div id="wrap" class="layout-1"> 
  
  <!-- Top bar -->
  <div class="top-bar">
    <div class="container">
      <p>Welcome to ParkNShop!</p>
      <div class="right-sec">

        <ul>
          <%
            try{
              String user = (String)session.getAttribute( "Buyer" );

              if ( user == null )
              {
          %>
          <ul>
            <li><a href="/BuyerLogin">Login</a></li>
            <li><a href="/BuyerRegister">Register</a></li>
          </ul>
          <%
            }
          }catch(Exception e){
          %>
          <li>${ sessionScope.Buyer.buyerAccount}</li>


          <%
              out.println( "<a href = '/buyerLogout' >Logout</a>" );

            }
          %>
          <li><a href="#.">My Account</a></li>
          <li><a href="/sellerLogin">Seller Center</a></li>
          <li><a href="/contactManager">Contact Manager</a></li>
          <li><a href="#.">FAQ </a></li>
        </ul>
       </div>
    </div>
  </div>
  
  <!-- Header -->
  <header>
    <div class="container">
      <div class="logo"> <a href="index.jsp"><img src="images/logo.png" alt="" ></a> </div>
      <div class="search-cate">
        <select class="selectpicker">
          <option> All Categories</option>
          <option> TV& Home Theater</option>
          <option> Computers & Tablets</option>
          <option> Cell Phones</option>
          <option> Cameras & Camcorders</option>
          <option> Audio</option>
          <option> Car Electronics & GPS</option>
          <option> Video, Games, Movies & Music </option>
          <option> Health, Fitness & Sports</option>
          <option> Home & Office</option>
        </select>
        <input type="search" placeholder="Search entire store here...">
        <button class="submit" type="submit"><a href="/SearchProducts"><i class="icon-magnifier"></i></a></button>
      </div>

      <!-- Cart Part -->
      <ul class="nav navbar-right cart-pop">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="itm-cont">3</span> <i class="flaticon-shopping-bag"></i> <strong>My Cart</strong> <br>
          <span>3 item(s) - $500.00</span></a>
          <ul class="dropdown-menu">
            <li>
              <div class="media-left"> <a href="#." class="thumb"> <img src="images/item-img-1-1.jpg" class="img-responsive" alt="" > </a> </div>
              <div class="media-body"> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> <span>250 x 1</span> </div>
            </li>
            <li>
              <div class="media-left"> <a href="#." class="thumb"> <img src="images/item-img-1-2.jpg" class="img-responsive" alt="" > </a> </div>
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
                  <li><a href="#."> TV& Home Theater</a></li>
                  <li><a href="#."> Computers & Tablets</a></li>
                  <li><a href="#."> Cell Phones</a></li>
                  <li class="sub-menu"><a href="#.">Cameras & Camcorders</a>
                    <!--<ul>-->
                      <!--<li><a href="#."> TV & Video</a></li>-->
                      <!--<li><a href="#."> Camera, Photo & Video</a></li>-->
                      <!--<li><a href="#."> Cell Phones & Accessories</a>-->
                    <!--</ul>-->
                  </li>
                  <li><a href="#."> Audio</a></li>
                  <li><a href="#."> Car Electronics & GPS</a></li>
                  <li class="sub-menu"><a href="#.">Video, Games, Movies & Music</a>
                    <!--<ul>-->
                      <!--<li><a href="#."> TV & Video</a></li>-->
                      <!--<li><a href="#."> Camera, Photo & Video</a></li>-->
                      <!--<li><a href="#."> Cell Phones & Accessories</a>-->
                    <!--</ul>-->
                  </li>
                  <li class="sub-menu"><a href="#.">Health, Fitness & Sports</a>
                    <!--<ul>-->
                      <!--<li><a href="#."> TV & Video</a></li>-->
                      <!--<li><a href="#."> Camera, Photo & Video</a></li>-->
                      <!--<li><a href="#."> Cell Phones & Accessories</a>-->
                    <!--</ul>-->
                  </li>
                  <li><a href="#."> Home & Office</a></li>
                </ul>
            </div>
          </div>
        </div>

        <!-- Navbar Header -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-open-btn" aria-expanded="false"> <span><i class="fa fa-navicon"></i></span> </button>
        </div>
        <!-- NAV -->
        <div class="collapse navbar-collapse" id="nav-open-btn">
          <ul class="nav">
            <li><a href="index.jsp">Home </a></li>
			<li><a href="WEB-INF/views/Buyer/About.jsp"> About </a></li>
			<li><a href="WEB-INF/views/Buyer/ListProducts.jsp"> List Products </a></li>
            <li><a href="WEB-INF/views/Buyer/Product-Details.jsp"> Product Details </a></li>
            <li><a href="WEB-INF/views/Buyer/contact.jsp"> Contact </a></li>
          </ul>
        </div>
        
        <!-- NAV RIGHT -->
        <div class="nav-right"> <span class="call-mun"><i class="fa fa-phone"></i> <strong>Hotline:</strong> (+100) 123 456 7890</span> </div>
      </div>
    </nav>
  </header>
  
  <!-- Slid Sec -->
  <section class="slid-sec">
    <div class="container">
      <div class="container-fluid">
        <div class="row"> 
          
          <!-- Main Slider  -->
          <div class="col-md-9 no-padding"> 
            
            <!-- Main Slider Start -->
            <div class="tp-banner-container">
              <div class="tp-banner">
                <ul>
                  
                  <!-- SLIDE  -->
                  <li data-transition="random" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" > 
                    <!-- MAIN IMAGE --> 
                    <img src="images/slider-img-1.jpg"  alt="slider"  data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption sfl tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="-110" 
                                     data-speed="800" 
                                     data-start="800" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.4" 
                                     data-endspeed="300"
                                     style="z-index: 5; font-size:30px; font-weight:500; color:#888888;  max-width: auto; max-height: auto; white-space: nowrap;">High Quality VR Glasses </div>
                    
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption sfr tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="-60" 
                                     data-speed="800" 
                                     data-start="1000" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     style="z-index: 6; font-size:50px; color:#0088cc; font-weight:800; white-space: nowrap;">3D Daydream View </div>
                    
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption sfl tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="10" 
                                     data-speed="800" 
                                     data-start="1200" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="none" 
                                     data-splitout="none" 
                                     data-elementdelay="0.1" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     style="z-index: 7;  font-size:24px; color:#888888; font-weight:500; max-width: auto; max-height: auto; white-space: nowrap;">Starting at </div>
                    
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption sfr tp-resizeme" 
                                     data-x="left" data-hoffset="210" 
                                     data-y="center" data-voffset="5" 
                                     data-speed="800" 
                                     data-start="1300" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.4" 
                                     data-endspeed="300"
                                     style="z-index: 5; font-size:36px; font-weight:800; color:#000;  max-width: auto; max-height: auto; white-space: nowrap;">$49.99 </div>
                    
                    <!-- LAYER NR. 4 -->
                    <div class="tp-caption lfb tp-resizeme scroll" 
                                      data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="80"
                                     data-speed="800" 
                                     data-start="1300"
                                     data-easing="Power3.easeInOut" 
                                     data-elementdelay="0.1" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     data-scrolloffset="0"
                                     style="z-index: 8;"><a href="#." class="btn-round big">Shop Now</a> </div>
                  </li>
                  
                  <!-- SLIDE  -->
                  <li data-transition="random" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" > 
                    <!-- MAIN IMAGE --> 
                    <img src="images/slider-img-2.jpg"  alt="slider"  data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption sfl tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="-110" 
                                     data-speed="800" 
                                     data-start="800" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.4" 
                                     data-endspeed="300"
                                     style="z-index: 5; font-size:30px; font-weight:500; color:#888888;  max-width: auto; max-height: auto; white-space: nowrap;">No restocking fee ($35 savings)</div>
                    
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption sfr tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="-60" 
                                     data-speed="800" 
                                     data-start="1000" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     style="z-index: 6; font-size:50px; color:#0088cc; font-weight:800; white-space: nowrap;">M75 Sport Watch </div>
                    
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption sfl tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="10" 
                                     data-speed="800" 
                                     data-start="1200" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="none" 
                                     data-splitout="none" 
                                     data-elementdelay="0.1" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     style="z-index: 7;  font-size:24px; color:#888888; font-weight:500; max-width: auto; max-height: auto; white-space: nowrap;">Now Only </div>
                    
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption sfr tp-resizeme" 
                                     data-x="left" data-hoffset="210" 
                                     data-y="center" data-voffset="5" 
                                     data-speed="800" 
                                     data-start="1300" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.4" 
                                     data-endspeed="300"
                                     style="z-index: 5; font-size:36px; font-weight:800; color:#000;  max-width: auto; max-height: auto; white-space: nowrap;">$320.99 </div>
                    
                    <!-- LAYER NR. 4 -->
                    <div class="tp-caption lfb tp-resizeme scroll" 
                                      data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="80"
                                     data-speed="800" 
                                     data-start="1300"
                                     data-easing="Power3.easeInOut" 
                                     data-elementdelay="0.1" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     data-scrolloffset="0"
                                     style="z-index: 8;"><a href="#." class="btn-round big">Shop Now</a> </div>
                  </li>
                  
                  <!-- SLIDE  -->
                  <li data-transition="random" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" > 
                    <!-- MAIN IMAGE --> 
                    <img src="images/slider-img-3.jpg"  alt="slider"  data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption sfl tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="-110" 
                                     data-speed="800" 
                                     data-start="800" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.4" 
                                     data-endspeed="300"
                                     style="z-index: 5; font-size:30px; font-weight:500; color:#888888;  max-width: auto; max-height: auto; white-space: nowrap;">Get Free Bluetooth when buy </div>
                    
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption sfr tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="-60" 
                                     data-speed="800" 
                                     data-start="1000" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     style="z-index: 6; font-size:50px; color:#0088cc; font-weight:800; white-space: nowrap;">Flat SmartWatch </div>
                    
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption sfl tp-resizeme" 
                                     data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="0" 
                                     data-speed="800" 
                                     data-start="1200" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="none" 
                                     data-splitout="none" 
                                     data-elementdelay="0.1" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     style="z-index: 7;  font-size:24px; color:#888888; font-weight:500; max-width: auto; max-height: auto; white-space: nowrap;">Combo Only:</div>
                    
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption sfr tp-resizeme" 
                                     data-x="left" data-hoffset="240" 
                                     data-y="center" data-voffset=" -5" 
                                     data-speed="800" 
                                     data-start="1300" 
                                     data-easing="Power3.easeInOut" 
                                     data-splitin="chars" 
                                     data-splitout="none" 
                                     data-elementdelay="0.03" 
                                     data-endelementdelay="0.4" 
                                     data-endspeed="300"
                                     style="z-index: 5; font-size:36px; font-weight:800; color:#000;  max-width: auto; max-height: auto; white-space: nowrap;">$590.00 </div>
                    
                    <!-- LAYER NR. 4 -->
                    <div class="tp-caption lfb tp-resizeme scroll" 
                                      data-x="left" data-hoffset="60" 
                                     data-y="center" data-voffset="80"
                                     data-speed="800" 
                                     data-start="1300"
                                     data-easing="Power3.easeInOut" 
                                     data-elementdelay="0.1" 
                                     data-endelementdelay="0.1" 
                                     data-endspeed="300" 
                                     data-scrolloffset="0"
                                     style="z-index: 8;"><a href="#." class="btn-round big">Shop Now</a> </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          
          <!-- Main Slider  -->
          <div class="col-md-3 no-padding"> 
            
            <!-- New line required  -->
            <div class="product">
              <div class="like-bnr">
                <div class="position-center-center">
                  <h5>New line required</h5>
                  <h4>Smartphone s7</h4>
                  <span class="price">$259.99</span> </div>
              </div>
            </div>
            
            <!-- Weekly Slaes  -->
            <div class="week-sale-bnr">
              <h4>Weekly <span>Sale!</span></h4>
              <p>Saving up to 50% off all online
                store items this week.</p>
              <a href="#." class="btn-round">Shop now</a> </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- Content -->
  <div id="content"> 
    
    <!-- Shipping Info -->
    <section class="shipping-info">
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
    
    <!-- tab Section -->
    <section class="featur-tabs padding-top-60 padding-bottom-60">
      <div class="container"> 
        
        <!-- Nav tabs -->
        <ul class="nav nav-tabs nav-pills margin-bottom-40" role="tablist">
          <li role="presentation" class="active"><a href="#featur" aria-controls="featur" role="tab" data-toggle="tab">Featured</a></li>
          <li role="presentation"><a href="#special" aria-controls="special" role="tab" data-toggle="tab">Special</a></li>
          <li role="presentation"><a href="#on-sal" aria-controls="on-sal" role="tab" data-toggle="tab">Onsale</a></li>
        </ul>
        
        <!-- Tab panes -->
        <div class="tab-content"> 
          <!-- Featured -->
          <div role="tabpanel" class="tab-pane active fade in" id="featur"> 
            <!-- Items Slider -->
            <div class="item-slide-5 with-nav"> 
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-1.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Latop</span> <a href="#." class="tittle">Laptop Alienware 15 i7 Perfect For Playing Game</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 </div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-2.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-3.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-4.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-5.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-6.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-7.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-8.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          
          <!-- Special -->
          <div role="tabpanel" class="tab-pane fade" id="special"> 
            <!-- Items Slider -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-11.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Latop</span> <a href="#." class="tittle">Laptop Alienware 15 i7 Perfect For Playing Game</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 </div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-9.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-8.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-7.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-6.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          
          <!-- on sale -->
          <div role="tabpanel" class="tab-pane fade" id="on-sal"> 
            <!-- Items Slider -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-3.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Latop</span> <a href="#." class="tittle">Laptop Alienware 15 i7 Perfect For Playing Game</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 </div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-1.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-2.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-5.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-4.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Top Selling Week -->
    <section class="light-gry-bg padding-top-60 padding-bottom-30">
      <div class="container"> 
        
        <!-- heading -->
        <div class="heading">
          <h2>Top Selling of the Week</h2>
          <hr>
        </div>
        
        <!-- Items -->
        <div class="item-col-5"> 
          
          <!-- Product -->
          <div class="product col-2x">
            <div class="like-bnr">
              <div class="position-center-center">
                <h5>Smart Watch 2.0</h5>
                <p>Space Gray Aluminum Case
                  with Black/Volt Real Sport Band <span>38mm | 42mm</span> </p>
                <a href="#." class="btn-round">View Detail</a> </div>
            </div>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-6.jpg" alt="" > <span class="sale-tag">-25%</span> 
              
              <!-- Content --> 
              <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00 <span>$200.00</span></div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-7.jpg" alt="" > 
              <!-- Content --> 
              <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-8.jpg" alt="" > <span class="new-tag">New</span> 
              
              <!-- Content --> 
              <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-9.jpg" alt="" > 
              <!-- Content --> 
              <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-10.jpg" alt="" > 
              <!-- Content --> 
              <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-11.jpg" alt="" > <span class="new-tag">New</span> 
              
              <!-- Content --> 
              <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-12.jpg" alt="" > 
              <!-- Content --> 
              <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
          
          <!-- Product -->
          <div class="product">
            <article> <img class="img-responsive" src="images/item-img-1-13.jpg" alt="" > 
              <!-- Content --> 
              <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
              <!-- Reviews -->
              <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
              <div class="price">$350.00</div>
              <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Main Tabs Sec -->
    <section class="main-tabs-sec padding-top-60 padding-bottom-0">
      <div class="container">
        <ul class="nav margin-bottom-40" role="tablist">
          <li role="presentation" class="active"><a href="#tv-au" aria-controls="featur" role="tab" data-toggle="tab"> <i class="flaticon-computer"></i> TV & Audios <span>236 item(s)</span></a></li>
          <li role="presentation"><a href="#smart" aria-controls="special" role="tab" data-toggle="tab"><i class="flaticon-smartphone"></i>Smartphones <span>150 item(s)</span></a></li>
          <li role="presentation"><a href="#deks-lap" aria-controls="on-sal" role="tab" data-toggle="tab"><i class="flaticon-laptop"></i>Desk & Laptop <span>268 item(s)</span></a></li>
          <li role="presentation"><a href="#game-com" aria-controls="special" role="tab" data-toggle="tab"><i class="flaticon-gamepad-1"></i>Game Console <span>79 item(s)</span></a></li>
          <li role="presentation"><a href="#watches" aria-controls="on-sal" role="tab" data-toggle="tab"><i class="flaticon-computer-1"></i>Watches <span>105 item(s)</span></a></li>
          <li role="presentation"><a href="#access" aria-controls="on-sal" role="tab" data-toggle="tab"><i class="flaticon-keyboard"></i>Accessories <span>816 item(s)</span></a></li>
        </ul>
        
        <!-- Tab panes -->
        <div class="tab-content"> 
          <!-- TV & Audios -->
          <div role="tabpanel" class="tab-pane active fade in" id="tv-au"> 
            
            <!-- Items -->
            <div class="item-slide-5 with-bullet no-nav"> 
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-1.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Latop</span> <a href="#." class="tittle">Laptop Alienware 15 i7 Perfect For Playing Game</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 </div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-2.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-3.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-4.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-5.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-6.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-7.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-8.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-9.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Tablets</span> <a href="#." class="tittle">Mp3 Sumergible Deportivo Slim Con 8GB</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00 <span>$200.00</span></div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-10.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-11.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          
          <!-- Smartphones -->
          <div role="tabpanel" class="tab-pane fade" id="smart"> 
            <!-- Items -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-11.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-8.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-5.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-17.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-15.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          <!-- Desk & Laptop -->
          <div role="tabpanel" class="tab-pane fade" id="deks-lap"> 
            
            <!-- Items -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-2.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-3.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-4.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-13.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-15.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          <!-- Game Console -->
          <div role="tabpanel" class="tab-pane fade" id="game-com"> 
            
            <!-- Items -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-9.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-1.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-5.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-3.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-2.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          <!-- Watches -->
          <div role="tabpanel" class="tab-pane fade" id="watches"> 
            
            <!-- Items -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-8.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-9.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-17.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-16.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-12.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
          <!-- Accessories -->
          <div role="tabpanel" class="tab-pane fade" id="access"> 
            
            <!-- Items -->
            <div class="item-col-5"> 
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-11.jpg" alt="" > <span class="sale-tag">-25%</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-12.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-16.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Reloj Inteligente Smart Watch M26 Touch Bluetooh </a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-15.jpg" alt="" > <span class="new-tag">New</span> 
                  
                  <!-- Content --> 
                  <span class="tag">Accessories</span> <a href="#." class="tittle">Teclado Inalambrico Bluetooth Con Air Mouse</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
              
              <!-- Product -->
              <div class="product">
                <article> <img class="img-responsive" src="images/item-img-1-14.jpg" alt="" > 
                  <!-- Content --> 
                  <span class="tag">Appliances</span> <a href="#." class="tittle">Funda Para Ebook 7" 128GB full HD</a> 
                  <!-- Reviews -->
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="margin-left-10">5 Review(s)</span></p>
                  <div class="price">$350.00</div>
                  <a href="#." class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!-- Newslatter -->
    <section class="newslatter">
      <div class="container">
        <div class="row">
        </div>
      </div>
    </section>
  </div>
  <!-- End Content --> 
  
  <!-- Footer -->
  <footer>
    <div class="container"> 
      
      <!-- Footer Upside Links -->

      <div class="row"> 
        
        <!-- Contact -->
        <div class="col-md-4">
          <h4>Contact SmartTech!</h4>
          <p>Address: 45 Grand Central Terminal New York, NY 1017
            United State USA</p>
          <p>Phone: (+100) 123 456 7890</p>
          <p>Email: Support@smarttech.com</p>
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
  

  
  <!-- End Footer --> 
  
  <!-- GO TO TOP  --> 
  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> 
  <!-- GO TO TOP End --> 
</div>
<!-- End Page Wrapper --> 

<!-- JavaScripts --> 
<script src="js2/vendors/jquery/jquery.min.js"></script>
<script src="js2/vendors/wow.min.js"></script>
<script src="js2/vendors/bootstrap.min.js"></script>
<script src="js2/vendors/own-menu.js"></script>
<script src="js2/vendors/jquery.sticky.js"></script>
<script src="js2/vendors/owl.carousel.min.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="rs-plugin/js/jquery.tp.t.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.tp.min.js"></script>
<script src="js2/main.js"></script>
</body>
</html>
