<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <head>
        <meta charset="utf-8">
        <title>SW Team Projcet_Reasturant Reservation System</title>
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

            <section id="hello" class="home bg-mega">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="home_text">
                                <h1 class="text-white text-uppercase">Reasturant Reservation System</h1>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


            <!--About Sections-->
            <section id="feature" class="feature p-top-100">
                <div class="container">
                    <div class="row">
                        <div class="main_feature">

                            <div class="col-md-6 m-top-120">
                                <!-- Head Title -->
                                <div class="head_title">
                                    <h2>Our Restruant</h2>
                                    <div class="separator_left"></div>
                                </div><!-- End off Head Title -->
                                <div class="feature_content wow fadeIn m-top-40">
                                    <p> 우리 식당은 서울과 뉴욕을 기반으로 현대적이고 독창적인 새로운 한식을 선보이고 있습니다. 우리가 만든 전통한식의 친숙한 한식재료를 이용하여 획기적으로 재탄생시킨 뉴코리안(New Korean)이라는 새로운 장르를 만들었습니다. 뉴코리안 파인다이닝(New Korean Fine Dining)은 한국과 더불어 파인다이닝 업계의 메카인 뉴욕에서도 사랑받는 새로운 음식 문화입니다. </p>
									<P> Our Reastrant is a two-Michelin starred restaurant in Seoul and New York, serving contemporary, creative Korean Cuisine. Owner Chef reinvents Korean cuisine using traditional and familiar ingredients, creating a brand-new genre of food: New Korean Fine Dining.
								</div>
                            </div>
                            <div class="col-md-6">
                                <div class="feature_photo wow fadeIn sm-m-top-40">
                                    <div class="photo_border"></div>
                                    <div class="feature_img">
                                        <img src="./Resources/images/002.jpg" alt="" /> <!-- 메인 이미지 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
                <br />
                <br />
                <br />
                <br />
                <hr />
                <br />
                <br />

                <div class="container">
                    <div class="row">
                        <div class="main_counter text-center">
                            <div class="col-md-3">
                                <div class="counter_item">
                                    <h2 class="statistic-counter"><em> 30 </em></h2>
                                    <div class="separator_small"></div>
                                    <h5> 전국 매장 개수 </h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="counter_item sm-m-top-40">
                                    <h2 class="statistic-counter"><em>15</em></h2>
                                    <div class="separator_small"></div>
                                    <h5>음식 메뉴 개수 </h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="counter_item sm-m-top-40">
                                    <h2 class="statistic-counter"><em>5</em></h2>
                                    <div class="separator_small"></div>
                                    <h5>오늘 예약 횟수</h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="counter_item sm-m-top-40">
                                    <h2 class="statistic-counter"><em>14</em> </h2>
                                    <div class="separator_small"></div>
                                    <h5>오늘 방문 수 </h5>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->

                <br />
                <br />
                <br />
                <hr />
                <br />
                <br />
                <br />

            </section> <!--End off About section -->
            <!-- scroll up-->
            <div class="scrollup">
                <a href="#"><i class="fa fa-chevron-up"></i></a>
            </div>
			
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
        <script src="./Resources/js/plugins.js"></script>
        <script src="./Resources/js/main.js"></script>

    </body>
</html>
