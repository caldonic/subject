<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.orderMainFile.model.*"%>

<%
	OrderMainFileVO orderMainFileVO = (OrderMainFileVO) request.getAttribute("orderMainFileVO"); //EmpServlet.java (Concroller) 存入req的empVO物件 (包括幫忙取出的empVO, 也包括輸入資料錯誤時的empVO物件)
%>

<html lang="zxx">
<head>
  <meta charset="UTF-8" />
  <meta name="description" content="Ogani Template" />
  <meta name="keywords" content="Ogani, unica, creative, html" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Ogani | Template</title>

  <!-- Google Font -->
<link
  href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
  rel="stylesheet"
/>
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
  rel="stylesheet"
/>
<!--自然改-->

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
<link rel="stylesheet" href="css/nice-select.css" type="text/css" />
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />

<!-- Css orderlist datatables -->
    <link
      rel="stylesheet"
      href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.dataTables.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.min.css"
    />

<style>
  h6 {
    font-size: 28px;
  }

  h5 {
	font-size: 24px;
	color: #4e4c4c;
  }
</style>

</head>
<body>
 <!-- Page Preloder -->
 <div id="preloder">
     <div class="loader"></div>
 </div>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

 <!-- Header Section Begin -->
 <header class="header">
   <!-- Humberger Begin -->
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
     <div class="humberger__menu__logo">
       <a href="#"><img src="https://fakeimg.pl/150x60/" alt="" /></a
       ><!--自然改-->
     </div>
     <div class="humberger__menu__cart">
       <ul>
         <li>
           <a href="#"><i class="fa fa-heart"></i> </a>
         </li>
         <!--自然改-->
         <li>
           <a href="./index.html"><i class="fa-solid fa-house"></i> </a>
         </li>
         <!--自然改--><!--這個圖示用來做回首頁-->
         <li>
           <a href="./shoping-cart.html"
             ><i class="fa-solid fa-cart-shopping"></i>
           </a>
         </li>
         <!--自然改--><!--這個圖示用來做購物車-->
         <li>
           <a href="#"><i class="fa-solid fa-ticket"></i></a>
         </li>
         <!--自然改--><!--這個圖示用來做我的票券-->
         <li>
           <a href="#"><i class="fa-solid fa-person"></i></a>
         </li>
         <!--自然改--><!--這個圖示用來做登入-->
       </ul>
       <!-- <div class="header__cart__price">item: <span>$150.00</span></div> -->
     </div>
     <div class="humberger__menu__widget">
       <!-- <div class="header__top__right__language">
           <img src="img/language.png" alt="">
           <div>English</div>
           <span class="arrow_carrot-down"></span> -->
       <!-- <ul>
               <li><a href="#">Spanis</a></li>
               <li><a href="#">English</a></li>
           </ul> -->
       <!-- </div> -->
       <!-- <div class="header__top__right__auth">
           <a href="#"><i class="fa fa-user"></i> Login</a>
       </div> -->
     </div>
     <nav class="humberger__menu__nav mobile-menu">
       <ul>
         <!-- <li class="active"><a href="./index.html">Home</a></li>
           <li><a href="./shop-grid.html">Shop</a></li> -->
         <li>
           <a href="#">會員中心</a>
           <ul class="header__menu__dropdown">
             <li><a href="#">帳戶管理</a></li>
             <!--自然改-->
             <li><a href="#">訂單查詢</a></li>
             <!--自然改-->
             <li><a href="#">我的錢包</a></li>
             <!--自然改-->
             <li><a href="#">我的最愛</a></li>
             <!--自然改-->
             <li><a href="#">會員權益</a></li>
             <!--自然改-->
             <li><a href="./contact.html">聯繫客服</a></li>
             <!--自然改-->
             <li><a href="#">買家FAQ</a></li>
             <!--自然改-->
           </ul>
         </li>
         <li>
           <a href="#">賣家中心</a>
           <ul class="header__menu__dropdown">
             <li><a href="#">訂單管理</a></li>
             <!--自然改-->
             <li><a href="#">商品管理</a></li>
             <!--自然改-->
             <li><a href="#">財務管理</a></li>
             <!--自然改-->
             <li><a href="#">帳戶管理</a></li>
             <!--自然改-->
             <li><a href="#">我的報表</a></li>
             <!--自然改-->
             <li><a href="#">賣家FAQ</a></li>
             <!--自然改-->
           </ul>
         </li>
         <!-- <li><a href="./blog.html">Blog</a></li>
           <li><a href="./contact.html">Contact</a></li> -->
       </ul>
     </nav>
     <div id="mobile-menu-wrap"></div>
     <!-- <div class="header__top__right__social">
       <a href="#"><i class="fa fa-facebook"></i></a>
       <a href="#"><i class="fa fa-twitter"></i></a>
       <a href="#"><i class="fa fa-linkedin"></i></a>
       <a href="#"><i class="fa fa-pinterest-p"></i></a>
   </div> -->
     <!-- <div class="humberger__menu__contact">
       <ul>
           <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
           <li>Free Shipping for all Order of $99</li>
       </ul>
   </div> -->
   </div>
   <!-- Humberger End -->

   <!-- <div class="header__top">
       <div class="container">
           <div class="row">
               <div class="col-lg-6 col-md-6">
                   <div class="header__top__left">
                       <ul>
                           <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                           <li>Free Shipping for all Order of $99</li>
                       </ul>
                   </div>
               </div>
               <div class="col-lg-6 col-md-6">
                   <div class="header__top__right">
                       <div class="header__top__right__social">
                           <a href="#"><i class="fa fa-facebook"></i></a>
                           <a href="#"><i class="fa fa-twitter"></i></a>
                           <a href="#"><i class="fa fa-linkedin"></i></a>
                           <a href="#"><i class="fa fa-pinterest-p"></i></a>
                       </div>
                       <div class="header__top__right__language">
                           <img src="img/language.png" alt="">
                           <div>English</div>
                           <span class="arrow_carrot-down"></span>
                           <ul>
                               <li><a href="#">Spanis</a></li>
                               <li><a href="#">English</a></li>
                           </ul>
                       </div>
                       <div class="header__top__right__auth">
                           <a href="#"><i class="fa fa-user"></i> Login</a>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div> -->
   <div class="container">
     <div class="row">
       <div class="col-lg-3">
         <div class="header__logo">
           <a href="./index.html"
             ><img src="https://fakeimg.pl/150x60/" alt="" /></a
           ><!--自然改-->
         </div>
       </div>
       <div class="col-lg-6">
         <nav class="header__menu">
           <ul>
             <li>
               <a href="#">會員中心</a>
               <ul class="header__menu__dropdown">
                 <li><a href="#">帳戶管理</a></li>
                 <!--自然改-->
                 <li><a href="#">訂單查詢</a></li>
                 <!--自然改-->
                 <li><a href="#">我的錢包</a></li>
                 <!--自然改-->
                 <li><a href="#">我的最愛</a></li>
                 <!--自然改-->
                 <li><a href="#">會員權益</a></li>
                 <!--自然改-->
                 <li><a href="./contact.html">聯繫客服</a></li>
                 <!--自然改-->
                 <li><a href="#">買家FAQ</a></li>
                 <!--自然改-->
               </ul>
             </li>
             <li>
               <a href="#">賣家中心</a>
               <ul class="header__menu__dropdown">
                 <li><a href="#">訂單管理</a></li>
                 <!--自然改-->
                 <li><a href="#">商品管理</a></li>
                 <!--自然改-->
                 <li><a href="#">財務管理</a></li>
                 <!--自然改-->
                 <li><a href="#">帳戶管理</a></li>
                 <!--自然改-->
                 <li><a href="#">我的報表</a></li>
                 <!--自然改-->
                 <li><a href="#">賣家FAQ</a></li>
                 <!--自然改-->
               </ul>
             </li>
           </ul>
         </nav>
       </div>
       <div class="col-lg-3">
         <div class="header__cart">
           <ul>
             <li>
               <a href="#"><i class="fa fa-heart"></i> </a>
             </li>
             <!--自然改-->
             <li>
               <a href="./index.html"
                 ><i class="fa-solid fa-house"></i>
               </a>
             </li>
             <!--自然改--><!--這個圖示用來做回首頁-->
             <li>
               <a href="./shoping-cart.html"
                 ><i class="fa-solid fa-cart-shopping"></i>
               </a>
             </li>
             <!--自然改--><!--這個圖示用來做購物車-->
             <li>
               <a href="#"><i class="fa-solid fa-ticket"></i></a>
             </li>
             <!--自然改--><!--這個圖示用來做我的票券-->
             <li>
               <a href="#"><i class="fa-solid fa-person"></i></a>
             </li>
             <!--自然改--><!--這個圖示用來做登入-->
           </ul>
           <!-- <div class="header__cart__price">item: <span>$150.00</span></div> -->
         </div>
       </div>
     </div>
     <div class="humberger__open">
       <i class="fa fa-bars"></i>
     </div>
   </div>
 </header>
 <!-- Header Section End -->

 <section class="hero">
   <div class="container">
     <div class="row">
       <div class="col-lg-3">
         <div class="hero__categories">
           <div class="hero__categories__all">
             <i class="fa fa-bars"></i>
             <span>會員中心</span><!--韋爾改-->
           </div>
           <ul>
             <li><a href="#">帳戶管理</a></li>
             <!--韋爾改-->
             <li><a href="#">訂單查詢</a></li>
             <!--韋爾改-->
             <li><a href="#">我的錢包</a></li>
             <!--韋爾改-->
             <li><a href="#">我的最愛</a></li>
             <!--韋爾改-->
             <li><a href="#">會員權益</a></li>
             <!--韋爾改-->
             <li><a href="#">聯繫客服</a></li>
             <!--韋爾改-->
             <li><a href="#">買家FAQ</a></li>
             <!--韋爾改-->
             <!-- <li><a href="#">Fresh Onion</a></li>
           	 <li><a href="#">Papayaya & Crisps</a></li>
             <li><a href="#">Oatmeal</a></li>
             <li><a href="#">Fresh Bananas</a></li> -->
           </ul>
         </div>
       </div>
       <div class="col-lg-9">
       <!-- valuationdescription Begin -->
       <div class="card-header py-2">
	  	 <h5 class="m-0 font-weight-bold">評論訂單</h5>
	   </div>
		<%-- 錯誤表列 --%>
		<c:if test="${not empty errorMsgs}">
			<font style="color:red">請修正以下錯誤:</font>
			<ul>
				<c:forEach var="message" items="${errorMsgs}">
					<li style="color:red">${message}</li>
				</c:forEach>
			</ul>
		</c:if>
		
		<FORM METHOD="post" ACTION="orderMainFile.do" name="form1">
		<table>
			<tr>
				<td>訂單編號:<font color=red><b>*</b></font></td>
				<td><%=orderMainFileVO.getOrderserialnumber()%></td>
			</tr>
			<tr>
		<!-- 		<td >會員帳號:</td> -->
				<td><input type="hidden" name="memberserialnumber" size="45" value="<%=orderMainFileVO.getMemberserialnumber()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>賣家帳號:</td> -->
				<td><input type="hidden" name="sellerserialnumber" size="45"	value="<%=orderMainFileVO.getSellerserialnumber()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>訂單狀態:</td> -->
				<td><input type="hidden" name="orderstatusnumber" size="45"	value="<%=orderMainFileVO.getOrderstatusnumber()%>" /></td>
			</tr>
			
			
		<%-- 	<jsp:useBean id="orderStatustSvc" scope="page" class="com.orderStatus.model.OrderStatusService" /> --%>
		<!-- 	<tr> -->
		<!-- 		<td>訂單狀態:<font color=red><b>*</b></font></td> -->
		<!-- 		<td><select size="1" name="orderstatusnumber"> -->
		<%-- 			<c:forEach var="orderStatusVO" items="${orderStatustSvc.all}"> --%>
		<%-- 				<option value="${orderStatusVO.orderstatusnumber}" ${(orderMainFileVO.orderstatusnumber==orderStatusVO.orderstatusnumber)? 'selected':'' } >${orderStatusVO.orderstatusname} --%>
		<%-- 			</c:forEach> --%>
		<!-- 		</select></td> -->
		<!-- 	</tr> -->
			<tr>
		<!-- 		<td>優惠券編號:</td> -->
				<td><input type="hidden" name="couponserialnumber" size="45" value="<%=orderMainFileVO.getCouponserialnumber()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>賣家評價星等:</td> -->
				<td><input type="hidden" name="sellerevaluationstar" size="45" value="<%=orderMainFileVO.getSellerevaluationstar()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>會員評價星等:</td> -->
				<td><input type="hidden" name="memberevaluationstar" size="45" value="<%=orderMainFileVO.getMemberevaluationstar()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>賣家評價敘述:</td> -->
				<td><input type=hidden name="sellerevaluationdescription" size="45" value="<%=orderMainFileVO.getSellerevaluationdescription()%>" /></td>
			</tr>
			<tr>
				<td>評價敘述:</td>
				<td><input type="TEXT" name="memberevaluationdescription" size="45" value="<%=orderMainFileVO.getMemberevaluationdescription()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>訂單金額:</td> -->
				<td><input type="hidden" name="orderamount" size="45" value="<%=orderMainFileVO.getOrderamount()%>" /></td>
			</tr>
			<tr>
		<!-- 		<td>訂單日期:</td> -->
				<td><input type="hidden" name="orderdate" id="f_date1" type="text" ></td>
			</tr>
		</table>
		<br>
		<input type="hidden" name="action" value="update">
		<input type="hidden" name="orderserialnumber" value="<%=orderMainFileVO.getOrderserialnumber()%>">
		<input type="submit" value="送出">
		<input type="submit" value="回上一頁" href="listAllOrderMainFile.jsp"></FORM>		
		<!-- valuationdescription End -->
			  </div>
			</div>
		  </div>
		</section>

<!-- Footer Section Begin -->
<footer class="footer spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="footer__about">
          <div class="footer__about__logo">
            <a href="./index.html"
              ><img src="https://fakeimg.pl/150x60/" alt=""
            /></a>
          </div>
          <ul>
            <li>地址：100 台北市中正區濟南路一段321號</li>
            <!--自然改-->
            <li>電話：02-12345678</li>
            <!--自然改-->
            <li>Email: caldonic@gmail.com</li>
            <!--自然改-->
          </ul>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
        <div class="footer__widget">
          <h6>相關連結</h6>
          <ul class="header__menu__dropdown">
            <li><a href="#">帳戶管理</a></li>
            <!--自然改-->
            <li><a href="#">訂單查詢</a></li>
            <!--自然改-->
            <li><a href="#">我的錢包</a></li>
            <!--自然改-->
            <li><a href="#">我的最愛</a></li>
            <!--自然改-->
            <li><a href="#">會員權益</a></li>
            <!--自然改-->
            <li><a href="./contact.html">聯繫客服</a></li>
            <!--自然改-->
            <li><a href="#">買家FAQ</a></li>
            <!--自然改-->
          </ul>
          <ul class="header__menu__dropdown">
            <li><a href="#">訂單管理</a></li>
            <!--自然改-->
            <li><a href="#">商品管理</a></li>
            <!--自然改-->
            <li><a href="#">財務管理</a></li>
            <!--自然改-->
            <li><a href="#">帳戶管理</a></li>
            <!--自然改-->
            <li><a href="#">我的報表</a></li>
            <!--自然改-->
            <li><a href="#">賣家FAQ</a></li>
            <!--自然改-->
          </ul>
        </div>
      </div>
      <div class="col-lg-4 col-md-12">
        <div class="footer__widget">
          <!-- <h6>Join Our Newsletter Now</h6>
                  <p>Get E-mail updates about our latest shop and special offers.</p>
                  <form action="#">
                      <input type="text" placeholder="Enter your mail">
                      <button type="submit" class="site-btn">Subscribe</button>
                  </form> -->
          <div class="footer__widget__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa-solid fa-envelope"></i></a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="footer__copyright">
          <div class="footer__copyright__text">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              版權所有 copyright © 2022 TEAM LETITGO All Rights Reserved.
              <!--自然改-->
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          <!-- <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div> -->
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- Footer Section End -->
      
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
      
	<!-- Js oderlist datatables -->
	<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.3.0/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.print.min.js"></script>


</body>



<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>

<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '<%=orderMainFileVO.getOrderdate()%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        
   
        // ----------------------------------------------------------以下用來排定無法選擇的日期-----------------------------------------------------------

        //      1.以下為某一天之前的日期無法選擇
        //      var somedate1 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});

        
        //      2.以下為某一天之後的日期無法選擇
        //      var somedate2 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});


        //      3.以下為兩個日期之外的日期無法選擇 (也可按需要換成其他日期)
        //      var somedate1 = new Date('2017-06-15');
        //      var somedate2 = new Date('2017-06-25');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //		             ||
        //		            date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});
        
</script>
</html>