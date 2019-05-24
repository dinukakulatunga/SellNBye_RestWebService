<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Update Supplier</title>
    
    <!-- Validation -->
    <script type="text/javascript" src="static/js/validation.js"></script>

    <link rel="icon" type="image/png" href="regimages/shopping-bag.png"/>

    <!-- Icons font CSS-->
    <link href="static/Seller/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="static/Seller/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="static/Seller/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="static/Seller/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="static/Seller/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Update Supplier Details</h2>
                    <form method="POST" action="save-supplier" name="regform">
                    <input type="hidden" name="id" value="${supplier.id}"/>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Company Name</label>
                                    <input class="input--style-4" type="text" name="cmpName" value="${supplier.cmpName}" id="cmpName">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Agent name</label>
                                    <input class="input--style-4" type="text" name="agt_name" value="${supplier.agt_name}" id="agt_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Company Address</label>
                                    <textarea rows="5" cols="70" name="cmp_address" value="${supplier.cmp_address}" id="cmp_address"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Country</label>
                                    <input class="input--style-4" type="text" name="cmp_country" value="${supplier.cmp_country}" id="cmp_country">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Company Website</label>
                                    <input class="input--style-4" type="text" name="cmp_website" value="${supplier.cmp_website}" id="cmp_website">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="cmp_email" value="${supplier.cmp_email}" id="cmp_email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="cmp_phnumber" value="${supplier.cmp_phnumber}" id="cmp_phnumber">
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">Main Product Category</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="prod_category">
                                    <option disabled="disabled" value="${supplier.prod_category}"></option>
                                    <option>Women's Clothing</option>
                                    <option>Men's Clothing</option>
                                    <option>Cell Phones and Accessories</option>
                                    <option>Computers and Accessories</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <!--<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Confirm Password</label>
                                    <input class="input--style-4" type="password" name="confpw">
                                </div>
                            </div>
                        </div>-->
                        <div class="p-t-15">
                        <input type="submit" class="btn btn--radius-2 btn--blue" value="Update" onclick="return validateForm();"/>
                            <!-- <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="static/Seller/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="static/Seller/vendor/select2/select2.min.js"></script>
    <script src="static/Seller/vendor/datepicker/moment.min.js"></script>
    <script src="static/Seller/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="static/Seller/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->