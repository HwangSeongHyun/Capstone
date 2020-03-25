<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>About Us Page</title>
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
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->


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

            <section id="hello" class="about-banner bg-mega">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="about_text">
                                <h1 class="text-white text-uppercase">About Us</h1>
                                <ol class="breadcrumb">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="active"><a href="#">About Us</a></li>
                                </ol>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


            <!--Information Sections-->
            <section id="feature" class="ab_feature roomy-100">
                <div class="container">
                    <div class="row">
                        <div class="main_ab_feature">

                            <div class="col-md-6">
                                <!-- Head Title -->
                                <div class="head_title">
                                    <h2><em>Information</em></h2>
                                    <div class="separator_left"></div>
                                </div><!-- End off Head Title -->

                                <div class="ab_feature_content wow fadeIn m-top-40">
                                    <p> 요리 중심, 전통적인 음식의 고찰과 연구를 통한 의미나 스토리 부여, 다양한 재료와 양념 등의 유기적 결합, 원활한 결합을 위한 테크닉을 이용하여 세프가 표현하고자 하는 맛과 감성을 음식으로서 표현합니다. </p>
									<p> Through studies on traditional food, various interpretations and meanings are invested in the dishes. Through the organic union of various ingredients and condiments made possible by the seasoned expertise of the chef, Ours cuisine expresses the taste and sensibility that the chef has been insired with. </p>
									
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="ab_feature_photo wow fadeIn sm-m-top-40">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-6">
                                            <div class="ab_feature_item sm-m-top-20">
                                                <img src="./Resources/images/007.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
                                            <div class="ab_feature_item sm-m-top-20">
                                                <img src="./Resources/images/008.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
                                            <div class="ab_feature_item sm-m-top-20">
                                                <img src="./Resources/images/009.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
                                            <div class="ab_feature_item m-top-20">
                                                <img src="./Resources/images/0010.jpg" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section>


            <!--Menu section-->
            <section id="teams" class="teams roomy-80">
                <div class="container">
                    <div class="row">
                        <div class="main_teams">
                            <div class="col-md-12">
                                <div class="head_title text-left sm-text-center wow fadeInDown">
                                    <h2><em>Menu</em></h2>
                                    <div class="separator_left"></div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6">
                                <div class="team_item m-top-30">
                                    <div class="team_img">
                                        <img src="./Resources/images/004.jpg" alt="" />
                                        <div class="team_caption">
                                            <h4 class="">구절판</h4>
                                            <h7>구절판은 찬합에 담아 먹는 한국 고유 음식이다. 둘레의 여덟 칸에 각각 여덟 가지 음식을 담고, 가운데 둥근 칸에는 밀전병을 담아 둘레의 음식을 골고루 조금씩 집어 밀전병에 싸서 먹는다.</h7>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-4 col-sm-6">
                                <div class="team_item m-top-30">
                                    <div class="team_img">
                                        <img src="./Resources/images/005.png" alt="" />
                                        <div class="team_caption">
                                            <h4 class="">전복 요리</h4>
                                            <h7>바다의 명품 전복은 비타민과 미네랄이 풍부한 식품입니다. 맛과 영양이 뛰어나 전복으로 요리를 하게되면 명품요리가 됩니다.</h7>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-4 col-sm-6">
                                <div class="team_item m-top-30">
                                    <div class="team_img">
                                        <img src="./Resources/images/006.jpg" alt="" />
                                        <div class="team_caption">
                                            <h4 class="">신선로</h4>
                                            <h7>한국의 요리 중 하나이자 궁중음식에 속하는 요리. </h7>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-3 -->
                        </div>
                    </div>
                </div>
            </section>





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


            <!-- End off scroll up-->
            <footer id="footer" class="footer bg-mega">
                <div class="container">
                    <div class="row">
                        <div class="main_footer p-top-40 p-bottom-30">
                            <div class="col-md-6 text-left sm-text-center">
                                <p class="wow fadeInRight" data-wow-duration="1s">
                                    Made with 
                                    <a target="_blank"> SE Project Team </a> 
                                    2019. All Rights Reserved
                                </p>
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

        <!--
                <script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
                <script src="./Resources/js/gmaps.min.js"></script>
        
                <script>
                    function showmap() {
                        var mapOptions = {
                            zoom: 8,
                            scrollwheel: false,
                            center: new google.maps.LatLng(-34.397, 150.644),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
                        $('.mapheight').css('height', '350');
                        $('.maps_text h3').hide();
                    }
        
                </script>-->


        <script src="./Resources/js/plugins.js"></script>
        <script src="./Resources/js/main.js"></script>

    </body>
</html>
