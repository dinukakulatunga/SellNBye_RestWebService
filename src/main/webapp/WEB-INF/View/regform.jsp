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
    <title>Supplier Registration Form</title>

    <link rel="icon" type="image/png" href="regimages/shopping-bag.png"/>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Supplier Registration Form</h2>
                    <form method="POST" action="save-supplier">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Company Name</label>
                                    <input class="input--style-4" type="text" name="cmpName" value="${supplier.cmpName}">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Agent name</label>
                                    <input class="input--style-4" type="text" name="agt_name" value="${supplier.agt_name}">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group" >
                                    <label class="label">Company Address</label>
                                    <textarea rows="5" cols="70" name="cmp_address" value="${supplier.cmp_address}"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Country</label>
                                    <input class="input--style-4" type="text" name="cmp_country" value="${supplier.cmp_country}">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Company Website</label>
                                    <input class="input--style-4" type="text" name="cmp_website" value="${supplier.cmp_website}">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="cmp_email" value="${supplier.cmp_email}">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="cmp_phnumber" value="${supplier.cmp_phnumber}">
                                </div>
                            </div>
                        </div>
                        <div class="input-group" >
                            <label class="label">Main Product Category</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="prod_category" >
                                    <option disabled="disabled" selected="selected" value="${supplier.prod_category}">Choose option</option>
                                    <option>Women's Clothing</option>
                                    <option>Men's Clothing</option>
                                    <option>Cell Phones and Accessories</option>
                                    <option>Computers and Accessories</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <input class="input--style-4" type="password" name="password" value="${supplier.password}">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Confirm Password</label>
                                    <input class="input--style-4" type="text" name="confpw">
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                        <input type="submit" class="btn btn--radius-2 btn--blue" value="Register"/>
                            <!-- <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->