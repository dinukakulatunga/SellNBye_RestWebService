<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Seller</title>
    <meta charset="UTF-8">
    <meta name="description" content=" Divisima | eCommerce Template">
    <meta name="keywords" content="divisima, eCommerce, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="static/img/shopping-bag.png" rel="shortcut icon"/>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


    <!-- Stylesheets -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="static/css/flaticon.css"/>
    <link rel="stylesheet" href="static/css/slicknav.min.css"/>
    <link rel="stylesheet" href="static/css/jquery-ui.min.css"/>
    <link rel="stylesheet" href="static/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="static/css/animate.css"/>
    <link rel="stylesheet" href="static/css/style.css"/>


    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header section -->
<header class="header-section">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 text-center text-lg-left">
                    <!-- logo -->
                    <a href="/show-suppliers" class="site-logo">
                        <img src="static/img/sellnbyeLogo.png" alt="">
                    </a>
                </div>
                <div class="col-xl-6 col-lg-5">
                    <form class="header-search-form" action="search-supplier">
                        <input type="text" placeholder="Search supplier.." name="cmpName">
                        <button><i class="flaticon-search"></i></button>
                        </a>
                    </form>
                </div>
                <div class="col-xl-4 col-lg-5">
                    <div class="user-panel">
                        <div class="up-item">
                            <i class="flaticon-profile"></i>
                            <a href="/Logout">Sign out</a>
                        </div>
                        <!--<div class="up-item">-->
                            <!--<div class="shopping-card">-->
                                <!--<i class="flaticon-bag"></i>-->
                                <!--<span>0</span>-->
                            <!--</div>-->
                            <!--<a href="#">Shopping Cart</a>-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="main-navbar">
        <div class="container">
            <!-- menu -->
            <ul class="main-menu">
                <li><a href="/admin">Home</a></li>
                <li><a href="../category.html">Category</a></li>
                <li><a href="#">Suppliers</a></li>
                <li><a href="/regform">Add Supplier
                    <!--<span class="new">New</span>-->
                </a></li>
                <!--<li><a href="#">Shoes</a>-->
                    <!--<ul class="sub-menu">-->
                        <!--<li><a href="#">Sneakers</a></li>-->
                        <!--<li><a href="#">Sandals</a></li>-->
                        <!--<li><a href="#">Formal Shoes</a></li>-->
                        <!--<li><a href="#">Boots</a></li>-->
                        <!--<li><a href="#">Flip Flops</a></li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li><a href="#">Pages</a>-->
                    <!--<ul class="sub-menu">-->
                        <!--<li><a href="./product.html">Product Page</a></li>-->
                        <!--<li><a href="./category.html">Category Page</a></li>-->
                        <!--<li><a href="./cart.html">Cart Page</a></li>-->
                        <!--<li><a href="./checkout.html">Checkout Page</a></li>-->
                        <!--<li><a href="./contact.html">Contact Page</a></li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li><a href="#">Blog</a></li>-->
            </ul>
        </div>
    </nav>
</header>
<!-- Header section end -->


<!-- Page info -->
<div class="page-top-info">
    <div class="container">
        <h4>Suppliers</h4>
        <!--<div class="site-pagination">-->
            <!--<a href="">Home</a> /-->
            <!--<a href="">Your cart</a>-->
        <!--</div>-->
    </div>
</div>
<!-- Page info end -->

<!-- Data Table area Start-->
<div class="data-table-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="data-table-list">
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped">
                            <thead>
                            <tr>
                            	<th>Company ID</th>
                                <th>Company Name</th>
                                <th>Company Address</th>
                                <th>Company Country</th>
                                <th>Company Email</th>
                                <th>Company PhNumber</th>
                                <th>Company Website</th>
                                <th>Agent Name</th>
                                <th>Product Category</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="supplier" items="${suppliers}">
                            <tr>
                                <td>${supplier.id}</td>
                                <td>${supplier.cmpName}</td>
                                <td>${supplier.cmp_address}</td>
                                <td>${supplier.cmp_country}</td>
                                <td>${supplier.cmp_email}</td>
                                <td>${supplier.cmp_phnumber}</td>
                                <td>${supplier.cmp_website}</td>
                                <td>${supplier.agt_name}</td>
                                <td>${supplier.prod_category}</td>                            
                                <td>
                                    <a href="/edit-supplier?id=${supplier.id}">
                                        <button type='button' class='btn btn-warning btn-sm'>
                                            <span class='glyphicon glyphicon-edit' aria-hidden='true'></span></button>
                                    </a>
                                    <a href="/delete-supplier?id=${supplier.id}">
                                        <button type='button' class='btn btn-danger btn-sm'>
                                            <span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button>
                                    </a>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Data Table area End-->



<!-- Footer section -->
<section class="footer-section">
    <div class="container">
        <div class="footer-logo text-center">
            <a href="/show-suppliers"><img src="static/img/sellnbyeLogo.png" alt=""></a>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="footer-widget about-widget">
                    <h2>About</h2>
                    <p>Donec vitae purus nunc. Morbi faucibus erat sit amet congue mattis. Nullam frin-gilla faucibus urna, id dapibus erat iaculis ut. Integer ac sem.</p>
                    <img src="../img/cards.png" alt="">
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="footer-widget about-widget">
                    <h2>Questions</h2>
                    <ul>
                        <li><a href="">About Us</a></li>
                        <li><a href="">Track Orders</a></li>
                        <li><a href="">Returns</a></li>
                        <li><a href="">Jobs</a></li>
                        <li><a href="">Shipping</a></li>
                        <li><a href="">Blog</a></li>
                    </ul>
                    <ul>
                        <li><a href="">Partners</a></li>
                        <li><a href="">Bloggers</a></li>
                        <li><a href="">Support</a></li>
                        <li><a href="">Terms of Use</a></li>
                        <li><a href="">Press</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="footer-widget about-widget">
                    <h2>Questions</h2>
                    <div class="fw-latest-post-widget">
                        <div class="lp-item">
                            <div class="lp-thumb set-bg" data-setbg="img/blog-thumbs/1.jpg"></div>
                            <div class="lp-content">
                                <h6>what shoes to wear</h6>
                                <span>Oct 21, 2018</span>
                                <a href="#" class="readmore">Read More</a>
                            </div>
                        </div>
                        <div class="lp-item">
                            <div class="lp-thumb set-bg" data-setbg="img/blog-thumbs/2.jpg"></div>
                            <div class="lp-content">
                                <h6>trends this year</h6>
                                <span>Oct 21, 2018</span>
                                <a href="#" class="readmore">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="footer-widget contact-widget">
                    <h2>Questions</h2>
                    <div class="con-info">
                        <span>C.</span>
                        <p>Your Company Ltd </p>
                    </div>
                    <div class="con-info">
                        <span>B.</span>
                        <p>1481 Creekside Lane  Avila Beach, CA 93424, P.O. BOX 68 </p>
                    </div>
                    <div class="con-info">
                        <span>T.</span>
                        <p>+53 345 7953 32453</p>
                    </div>
                    <div class="con-info">
                        <span>E.</span>
                        <p>office@youremail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="social-links-warp">
        <div class="container">
            <div class="social-links">
                <a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
                <a href="" class="google-plus"><i class="fa fa-google-plus"></i><span>g+plus</span></a>
                <a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
                <a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
                <a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>
                <a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>
                <a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>
            </div>

            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            <p class="text-white text-center mt-5">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

        </div>
    </div>
</section>
<!-- Footer section end -->



<!--====== Javascripts & Jquery ======-->
<script src="static/js/jquery-3.2.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/jquery.slicknav.min.js"></script>
<script src="static/js/owl.carousel.min.js"></script>
<script src="static/js/jquery.nicescroll.min.js"></script>
<script src="static/js/jquery.zoom.min.js"></script>
<script src="static/js/jquery-ui.min.js"></script>
<script src="static/js/main.js"></script>

</body>
</html>
