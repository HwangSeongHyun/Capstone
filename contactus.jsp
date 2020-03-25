<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Contact us page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Fonts link-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">


        <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">


        <link rel="stylesheet" href="./Resources/css/slick.css">
        <link rel="stylesheet" href="./Resources/css/slick-theme.css">
        <link rel="stylesheet" href="./Resources/css/animate.css">
        <link rel="stylesheet" href="./Resources/css/fonticons.css">
        <link rel="stylesheet" href="./Resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="./Resources/css/bootstrap.css">
        <link rel="stylesheet" href="./Resources/css/magnific-popup.css">
        <link rel="stylesheet" href="./Resources/css/bootsnav.css">


        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="./Resources/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="./Resources/css/style.css">
        <!--<link rel="stylesheet" href="./Resources/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="./Resources/css/responsive.css" />

        <script src="./Resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">


        <!-- Preloader -->

        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                    <div class="object"></div>
                </div>
            </div>
        </div>

        <!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->


            <nav class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">
                <!-- Start Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                    </div>
                </div>
                <!-- End Top Search -->

                <div class="container">    
                    
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                      	<%
		            	String userid = (String)request.getSession().getAttribute("sid");
		            	if (userid == "" || userid == null) {
	            		%>
                        	<li><a href="login.jsp">login</a></li>
							<li><a href="signup.jsp">signup</a></li>
						<%
		            	}
						else {
						%>
						<li><a href=""><%=userid %>님 환영합니다.</a></li>
						<li><a href="mypage.jsp">mypage</a></li>
						<li><a href="logout.jsp">logout</a></li>
						<%
						}
						%>
                            <li><a href="index.jsp">home</a></li>
                            <li><a href="reservationIntro.jsp">reservation</a></li>
							<li><a href="aboutus.jsp">about</a></li>
                            <li><a href="contactus.jsp">contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>  


            </nav>


            <!--Home Sections-->

            <section id="hello" class="contact-banner">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="contact_text">
                                <h1 class="text-white text-uppercase">Contact Us</h1>
                                <ol class="breadcrumb">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="active"><a href="#">Contact Us</a></li>
                                </ol>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


            <!--Call To Action Section-->

            <section id="action" class="action roomy-100">
                <div class="container">
                    <div class="row">
                        <div class="main_action text-center">
                            <div class="col-md-4">
                                <div class="action_item">
                                    <i class="fa fa-map-marker"></i>
                                    <h4 class="text-uppercase m-top-20">Address</h4>
                                    <p>경기도 수원시 영통구 광교산로 154-42 8507<br /> Korea - UK</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="action_item">
                                    <i class="fa fa-headphones"></i>
                                    <h4 class="text-uppercase m-top-20">phone</h4>
                                    <p>(+82) - 010 - 7296 - 0512</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="action_item">
                                    <i class="fa fa-envelope-o"></i>
                                    <h4 class="text-uppercase m-top-20">Email</h4>
                                    <p>tjdgus9505@naver.com<br />
                                        tjdgus9505@gmail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!-- map section-->
            <div id="map" class="map">
                <div class="ourmap"></div>
            </div><!-- End off Map section-->

            <!--Company section-->

            <section id="company" class="company bg-light">
                <div class="container">
                    <div class="row">
                        <div class="main_company roomy-100 text-center">
                            <h3 class="text-uppercase">pouseidon.</h3>
                            <p>7th floor - Palace Building - 221b Walk of Fame - London- United Kingdom</p>
                            <p>(+84). 123. 456. 789  -  info@poiseidon.lnk</p>
                        </div>
                    </div>
                </div>
            </section>


            <!-- scroll up-->
            <div class="scrollup">
                <a href="#"><i class="fa fa-chevron-up"></i></a>
            </div><!-- End off scroll up -->


            <footer id="footer" class="footer bg-mega">
                <div class="container">
                    <div class="row">
                        <div class="main_footer p-top-40 p-bottom-30">
                            <div class="col-md-6 text-left sm-text-center">
                                <p class="wow fadeInRight" data-wow-duration="1s">
                                    Made with 
				    <a target="_blank"> SE Project Team</a>
                                    2016. All Rights Reserved
                                </p>
                            </div>
                            <div class="col-md-6 text-right sm-text-center sm-m-top-20">
                                <ul class="list-inline">
                                    <li><a href="">Facebook</a></li>
                                    <li><a href="">Twitter</a></li>
                                    <li><a href="">Instagram</a></li>
                                    <li><a href="">Pinterest</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>




        </div>

        <!-- JS includes -->

        <script src="./Resources/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="./Resources/js/vendor/bootstrap.min.js"></script>

        <script src="./Resources/js/isotope.min.js"></script>
        <script src="./Resources/js/jquery.magnific-popup.js"></script>
        <script src="./Resources/js/jquery.easing.1.3.js"></script>
        <script src="./Resources/js/slick.min.js"></script>
        <script src="./Resources/js/jquery.collapse.js"></script>
        <script src="./Resources/js/bootsnav.js"></script>


        <!-- paradise slider js -->

        <script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
        <script src="./Resources/js/gmaps.min.js"></script>
        <script>
            var map = new GMaps({
                el: '.ourmap',
                lat: 37.300659,
                lng: 127.039268,
                scrollwheel: false,
                zoom: 15,
                zoomControl: true,
                panControl: false,
                
                streetViewControl: false,
                mapTypeControl: false,
                overviewMapControl: false,
                clickable: false,
                styles: [{'stylers': [{'hue': 'gray'}, {saturation: -100},
                            {gamma: 0.80}]}]
            
            });

        </script>





        <script src="./Resources/js/plugins.js"></script>
        <script src="./Resources/js/main.js"></script>

    </body>
</html>
