<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Login page</title>
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
        <link rel="stylesheet" href="./Resources/css/my.css">


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

            <section id="hello" class="contact-banner bg-mega">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home_login text-center">
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->
            <%
            PreparedStatement pstmt = null;
			Statement stmt = null;
	   		Connection conn = null;
	   		ResultSet rs = null;
	   		String pw = null;
	   		String name = null;
	   		String phone = null;
	   		int mem_num = 0;
	   		try {
	            String driver = "org.mariadb.jdbc.Driver";
	        	Class.forName(driver);
	        	String url = "jdbc:mariadb://booksys.ctvysxuvt8lv.ap-northeast-2.rds.amazonaws.com/";
	        	String userName = "admin";
	        	String userPw = "admin1234";
	        	String dbName = "seproject";
	  			conn = DriverManager.getConnection(
	               url+dbName, userName, userPw);
	  			String query = "SELECT * FROM member WHERE id='"+userid+"'";
	  			stmt = conn.createStatement();
	  			rs = stmt.executeQuery(query);
	  			rs.next();
	  			mem_num = rs.getInt("num");
	  			pw = rs.getString("pw");
	  			name = rs.getString("NAME");
	  			phone = rs.getString("phone");
	   		} catch (SQLException e) {
	   			
	   		}
            %>

            <!--Contact Us Section-->
            <section id="contact" class="contact fix">
                <div class="container">
                    <div class="row">
                        <div class="main_contact p-top-100">
                        	<div class="col-md-12 sm-m-top-30 p-bottom-30" align="center">
                        	<h3><%=userid%>'s MyPage</h3>
                        	</div>
							<div class="col-md-3 sm-m-top-30"></div>
                            <div class="col-md-6 sm-m-top-30">
                                <form id="signup-form" class="" action="modify.jsp">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Your ID</label>
                                                <input id="email" name="id" type="text" class="form-control" disabled="" value="<%=userid%>">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Your Password</label>
                                                <input id="email" name="pw" type="password" class="form-control" disabled="" value="<%=pw%>">
                                            </div>
                                        </div>
										<div class="col-sm-12">
                                            <div class="form-group"> 
                                                <label>Your Name</label>
                                                <input id="first_name" name="nm" type="text" class="form-control" disabled="" value="<%=name%>">
                                            </div>
                                            
                                        </div>
										<div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Your Phone</label>
                                                <input id="email" name="ph" type="text" class="form-control" disabled="" value="<%=phone%>">
                                            </div>
                                        </div>
                                        <br><br>
                                        <div class="form-group" align="center">
                                            <input class="btn btn-default text-uppercase" type="submit" value="modify information">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                        <div class="main_contact p-top-100 p-bottom-100">
                        	<div class="col-md-3 sm-m-top-30"></div>
                            <hr>
                            <div class="col-md-2 sm-m-top-30"></div>
                            <div class="col-md-8 sm-m-top-30" align="center">
                            <form id="signup-form" class="" action="reservationcancel.jsp" method="post">
	                            	<h3><%=userid%>'s Reservation</h3>
	                            	<table class="reservation_table" style="height:100px;width:100%;">
	                            		<tr>
	                            			<th style="border-bottom:0.3px solid black;">번호</th>
	                            			<th style="border-bottom:0.3px solid black;">날짜</th>
	                            			<th style="border-bottom:0.3px solid black;">좌석 번호</th>
	                            			<th style="border-bottom:0.3px solid black;">메뉴</th>
	                            			<th style="border-bottom:0.3px solid black;">체크</th>
	                            		</tr>
	                            	<%
		                            	String query = "SELECT * FROM reservation WHERE mem_num='"+mem_num+"'";
		                	  			stmt = conn.createStatement();
		                	  			rs = stmt.executeQuery(query);
		                		   		String date = null;
		                		   		int index = 1;
		                	  			while(rs.next()) {
		                	  				String year = Integer.toString(rs.getInt("res_year"));
		                	  				String month = Integer.toString(rs.getInt("res_month"));
		                	  				String day = Integer.toString(rs.getInt("res_day"));
		                	  				date = year+"년 "+month+"월 "+day+"일";
		                	  				int menu_num = rs.getInt("menu_num");
		                	  				int table_num = rs.getInt("table_num");
		                	  				String menu = "";
		                	  				String checkbox = year+"/"+month+"/"+day+"/"+menu_num+"/"+table_num;
		                	  				switch(menu_num) {
		                	  				case 1:
		                	  					menu = "랍스터";
		                	  					break;
		                	  				case 2:
		                	  					menu = "캐비어 구절판";
		                	  					break;
		                	  				case 3:
		                	  					menu = "성게 구절판";
		                	  					break;
		                	  				case 4:
		                	  					menu = "맛있는 김밥";
		                	  					break;
		                	  				case 5:
		                	  					menu = "성게 비빔밥";
		                	  					break;
		                	  				}
		                	  				%>
		                	  				<tr>
		                	  					<td style="border-bottom:0.3px solid black;"><%=index%></td>
		                	  					<td style="border-bottom:0.3px solid black;"><%=date%></td>
		                	  					<td style="border-bottom:0.3px solid black;"><%=table_num%></td>
		                	  					<td style="border-bottom:0.3px solid black;"><%=menu%></td>
		                	  					<td style="border-bottom:0.3px solid black;"><input type="checkbox" value="<%=checkbox%>" name="checked"></td>
		                	  				</tr>
		                	  				<%
		                	  				index++;
		                	  			}
	                            	%>
	                            	</table>
	                            	<br><br>
	                            	<div class="form-group" align="center">
                                    	<input class="btn btn-default text-uppercase" type="submit" value="cancel reservation">
                                    </div>
	                            </form>
                            </div>
                            <div class="col-md-2 sm-m-top-30"></div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!--End off Contact Section-->


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
                                    by 
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
                lat: -12.043333,
                lng: -77.028333,
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
