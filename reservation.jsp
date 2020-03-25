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
        <title>Reservation Page</title>
        <!-- <meta name="description" content=""> -->
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
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
                    <!-- Start Atribute Navigation -->
                    

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
                        <div class="main_home text-center">
                        	<h1 class="text-white text-uppercase">Reservation</h1>
                                <ol class="breadcrumb">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="active"><a href="#">Reservation</a></li>
                                </ol>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->

            <!--Contact Us Section-->
            <section id="contact" class="contact fix">
                <div class="container">
                    <div class="row">
                        
                        <div class="main_contact p-top-100">
                            <div class="col-md-12">
                            	<div>
                        			<h3 class="text-uppercase" align="center">Reservation Status</h3><br>
                            	</div>
                           	</div>
                           	<br>
                        </div>
                        <div class="main_contact p-bottom-20">
                           	<div class="col-md-10" align="center">
                            <%
                                PreparedStatement pstmt = null;
                    			Statement stmt = null;
                    	   		Connection conn = null;
                    	   		ResultSet rs = null;
                    	   		String date = null;
                    	   		String time = null;
                    	   		String[][] table = new String[13][5];
                    	   		String year = null;
                    	   		String month = null;
                    	   		String day = null;
                    	   		String query;
                    	   		for (int i=0 ; i<13 ; i++) {
                    	   			for (int j=0 ; j<5 ; j++) {
                    	   				table[i][j] = ""; 
                    	   			}
                    	   		}
                    	   		try {
                    	   			String driver = "org.mariadb.jdbc.Driver";
                                	Class.forName(driver);
                                	String url = "jdbc:mariadb://booksys.ctvysxuvt8lv.ap-northeast-2.rds.amazonaws.com/";
                                	String userName = "admin";
                                	String userPw = "admin1234";
                                	String dbName = "seproject";
                       	  			conn = DriverManager.getConnection(
                                        url+dbName, userName, userPw);
                    	   			date = request.getParameter("date");
                    	   			if (date!=null) {
                    	   				for (int i=0 ; i<13 ; i++) {
                            	   			for (int j=0 ; j<5 ; j++) {
                            	   				table[i][j] = "O"; 
                            	   			}
                            	   		}
                    	   				year = date.substring(0, 4);
                    	   				month = date.substring(5, 7);
                    	   				day = date.substring(8).replace("0", "");
                        				stmt = conn.createStatement();
                        				query = "SELECT table_num, res_time FROM reservation WHERE res_year='"+year+"' AND res_month='"+month+"' AND res_day='"+day+"'";
                        				rs = stmt.executeQuery(query);
                        				while(rs.next()) {
                        					int tabletemp = rs.getInt("table_num")-1;
                        					int timetemp = rs.getInt("res_time");
                        					switch(timetemp) {
                        					case 12:
                        						table[tabletemp][0] = "X";
                        						break;
                        					case 14:
                        						table[tabletemp][1] = "X";
                        						break;
                        					case 16:
                        						table[tabletemp][2] = "X";
                        						break;
                        					case 18:
                        						table[tabletemp][3] = "X";
                        						break;
                        					case 20:
                        						table[tabletemp][4] = "X";
                        						break;
                        					}
                        				}
                    	   			}
                    	   		} catch (SQLException e) {
                    	   			e.printStackTrace();
                    	   		}
                            %>
                            	<table class="reservation_table" style="width:100%; height:600px; font-size:22px" align="center">
                            		<tr><th></th>
                            		<th>12:00 ~ 14:00</th><th>14:00 ~ 16:00</th><th>16:00 ~ 18:00</th>
                            		<th>18:00 ~ 20:00</th><th>20:00 ~ 22:00</th>
                            		</tr>
                            		<tr>
                            		<td>table1</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[0][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table2</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[1][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table3</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[2][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table4</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[3][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table5</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[4][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table6</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[5][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table7</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[6][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table8</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[7][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table9</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[8][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table10</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[9][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table11</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[10][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table12</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[11][i]%></td><%}%>
                            		</tr>
                            		<tr>
                            		<td>table13</td>
                            		<%for (int i=0 ; i<5 ; i++) {%><td><%=table[12][i]%></td><%}%>
                            		</tr>
                            	</table>
                            </div >
                            <div class="col-md-2" align="center">
                            	<form id="signup-form" class="" action="reservation.jsp" method="post">
                                    <div class="row">
                                    	<div><em class="reservation_menu">Select Date</em></div><br>
										<div><input type="date" id="userdate" name="date" style="width:180px;"></div><br>
										<div style="width:180px;" align="center"><input type="submit" style="height:50px;" class="btn btn-default text-uppercase" value="lookup"></div>
										<br><br>
										
                                    </div>
                                </form>
                                <% 
    									if (date!=null) {
    										%>
    										<form id="signup-form" class="" action="reservationck.jsp" method="post">
    											<div><em class="reservation_menu">Reservation</em></div><br>
    											<div><select style="width:180px;" name="time">
		   											<option value="">----time---</option>
		   											<option value="12">12:00~14:00</option>
		   											<option value="14">14:00~16:00</option>	
		   											<option value="16">16:00~18:00</option>
		   											<option value="18">18:00~20:00</option>
		   											<option value="20">20:00~22:00</option>
    											</select><br></div><br>
    											<div><select style="width:180px;" name="menu">
		   											<option value="">----menu---</option>
		   											<option value="1">랍스터(4인) 150000원</option>
		   											<option value="2">캐비어 구철판(4인) 150000원</option>	
		   											<option value="3">성게 구철판(4인) 65000원</option>
		   											<option value="4">맛있는 김밥(4인) 129000원</option>
		   											<option value="5">성게 비빔밥(4인) 60000원</option>
    											</select><br></div><br>
    											<div><select style="width:180px;" name="table">
		   											<option value="">---table---</option>
		   											<option value="1">table 1</option>
		   											<option value="2">table 2</option>
		   											<option value="3">table 3</option>
		   											<option value="4">table 4</option>
		   											<option value="5">table 5</option>
		   											<option value="6">table 6</option>
		   											<option value="7">table 7</option>
		   											<option value="8">table 8</option>
		   											<option value="9">table 9</option>
		   											<option value="10">table 10</option>
		   											<option value="11">table 11</option>
		   											<option value="12">table 12</option>
		   											<option value="13">table 13</option>
		   											
    											</select><br></div><br>
    											<div style="width:180px;" align="center"><input type="submit" style="height:50px;"class="btn btn-default text-uppercase" value="reservation"></div>
    											<input type="text" style="display: none;" class="hidden-value" name="date" value="<%=date%>">
    										</form>
    										<%
    									}
    									
    									%>
                            </div>
                        </div>
                        <hr>
                        <div class="main_contact p-top-50 p-bottom-100">
                        	<div class="col-md-12">
                        		<div>
                        			<h3 class="text-uppercase" align="center">Reservation UI</h3><br>
                        		</div>
                        	</div>
                            <div class="col-md-12">
                                <div class="reservation_UI">
                                	<div class="hall">
                                		<div class="row_1">
	                                		<input type="button" id="seat_9" class="seat_table" value="9">
	                                		<input type="button" id="seat_10" class="seat_table" value="10">
	                                		<input type="button" id="seat_11" class="seat_table" value="11">
	                                		<input type="button" id="seat_12" class="seat_table" value="12">
	                                		<input type="button" id="seat_13" class="seat_table" value="13">
                                		</div>
                                		<input type="button" id="seat_8" class="seat_table" value="8"><br>
	                                	<input type="button" id="seat_7" class="seat_table" value="7"><br>
                                		<input type="button" id="seat_6" class="seat_table" value="6"><br>
	                                	<input type="button" id="seat_5" class="seat_table" value="5"><br>
	                                	<input type="button" id="seat_4" class="seat_table" value="4"><br>
	                                	<input type="button" id="seat_3" class="seat_table" value="3">
	                                	<input type="button" id="seat_2" class="seat_table" value="2">
	                                	<input type="button" id="seat_1" class="seat_table" value="1">
                                	</div>
                                	<div class="kitchen"><div class="kitchen_text">Kitchen</div></div>
                                	<div class="center_invalid selector"><img src="./Resources/images/UI/invalid.jpg" alt=""></div>
                                	<div class="counter"><div class="counter_text">Counter</div></div>
                                	<div class="door"><div class="door_text">Door</div></div>
                                </div>
                            </div>
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


        <script src="./Resources/js/plugins.js"></script>
        <script src="./Resources/js/main.js"></script>

    </body>
</html>
