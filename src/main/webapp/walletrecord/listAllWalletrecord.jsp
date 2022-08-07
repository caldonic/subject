<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="subject.walletrecord.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	WalletrecordService walletrecordSvc = new WalletrecordService();
    List<WalletrecordVO> list = walletrecordSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
 <meta charset="UTF-8" />
    <meta name="description" content="Ogani Template" />
    <meta name="keywords" content="Ogani, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>LETITGO</title>

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
    <link rel="stylesheet" href="walletrecordhtml/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/elegant-icons.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/nice-select.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/slicknav.min.css" type="text/css" />
    <link rel="stylesheet" href="walletrecordhtml/css/style.css" type="text/css" />
    <style>
      table thead th {
        text-align: center;
        border: 1px solid rgb(185, 185, 185);
      }
      tr td {
        text-align: center;
        border: 1px solid rgb(185, 185, 185);
      }

      label.account {
        font-size: 30px;
        background-color: rgb(185, 185, 185);
        border: 1px solid rgb(185, 185, 185);
      }

      label.gold {
        font-size: 30px;
        background-color: rgb(185, 185, 185);
        border: 1px solid rgb(185, 185, 185);
      }
    </style>
 


</head>
<body >
 <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
    </div>
   
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
            <li class="active"><a href="./index.html">Home</a></li>
            <li><a href="./shop-grid.html">Shop</a></li>
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
                  <!-- <a href="#">會員中心</a> -->
                  <ul class="header__menu__dropdown">
                    <!-- <li><a href="#">帳戶管理</a></li> -->
                    <!--自然改-->
                    <!-- <li><a href="#">訂單查詢</a></li> -->
                    <!--自然改-->
                    <!-- <li><a href="#">我的錢包</a></li> -->
                    <!--自然改-->
                    <!-- <li><a href="#">我的最愛</a></li> -->
                    <!--自然改-->
                    <!-- <li><a href="#">會員權益</a></li> -->
                    <!--自然改-->
                    <!-- <li><a href="./contact.html">聯繫客服</a></li> -->
                    <!--自然改-->
                    <!-- <li><a href="#">買家FAQ</a></li> -->
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
          </div>
        </div>
        <div class="humberger__open">
          <i class="fa fa-bars"></i>
        </div>
      </div>
    </header>
    <!-- Header Section End -->
    <!-- Hero Section Begin -->
    <section class="hero">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <div class="hero__categories">
              <div class="hero__categories__all">
                <i class="fa fa-bars"></i>
                <span>會員中心</span>
                <!--韋爾改-->
              </div>
              <ul>
                <li><a href="AccountManagement&ticket.html">帳戶管理</a></li>
                <!--韋爾改-->
                <li><a href="order.html">訂單查詢</a></li>
                <!--韋爾改-->
                <li><a href="wallet.html">我的錢包</a></li>
                <!--韋爾改-->
                <li><a href="#">我的最愛</a></li>
                <!--韋爾改-->
                <li><a href="MemberBenefits.html">會員權益</a></li>
                <!--韋爾改-->
                <li><a href="CustomerService.html">聯繫客服</a></li>
                <!--韋爾改-->
                <li><a href="FAQ.html">買家FAQ</a></li>
                <!--韋爾改-->
                <!-- <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li> -->
              </ul>
            </div>
          </div>
          <div class="col-lg-9">
<!--             <table> -->
<!--               <tr> -->
<!--                 <td -->
<!--                   style="
/*                     font-size: 20px; */
/*                     font-weight: bold; */
/*                     color: white; */
/*                     width: 200px; */
/*                     height: 50px; */
/*                     background-color: rgb(127, 173, 57); */
/*                   " */
                > -->
<!--                   帳 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp號 -->
<!--                 </td> -->
<!--                 <td style="font-size: 30px; width: 300px; height: 50px"> -->
<!--                   ABCDEFG -->
<!--                 </td> -->
<!--               </tr> -->
<!--               <tr> -->
<!--                 <td -->
<!--                   style=" 
                     font-size: 20px; 
                     font-weight: bold; 
                    color: white; 
                     width: 200px; 
                     height: 50px; 
                     background-color: rgb(127, 173, 57); 
                   " 
                 > -->
<!--                   購物金餘額 -->
<!--                 </td> -->
<!--                 <td style="font-size: 30px; width: 300px; height: 50px"> -->
<!--                   330元 -->
<!--                 </td> -->
<!--               </tr> -->
<!--             </table> -->
          

            <table style="height: 100px; width: 850px">
              <thead style="background-color: rgb(127, 173, 57); color: white">
        <th style="width:180px">錢包使用紀錄編號</th>
        <th>日期</th>
<!-- 		<th>會員流水編號</th> -->
<!-- 		<th>訂單流水編號</th>		 -->
		<th>購物金額增減</th>
		<th>錢包使用紀錄備註</th>
		<th>購物金餘額</th>
              </thead>
<%@ include file="page1.file" %> 
	<c:forEach var="walletrecordVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
          <tr>
            <td>${walletrecordVO.walletrecordnumber}</td>
            <td><fmt:formatDate value="${walletrecordVO.walletrecordtime}" pattern="yyyy.MM.dd "/></td>
<%-- 			<td>${walletrecordVO.memberserialnumber}</td> --%>
<%-- 			<td>${walletrecordVO.orderserialnumber}</td>			 --%>
			<td>${walletrecordVO.goldadjustmentamount}</td>
			<td>${walletrecordVO.walletrecordnote}</td> 
			<td>${walletrecordVO.goldremaining}</td>
         </tr>
              </c:forEach>
</table>
<%@ include file="page2.file" %>
            </table>

           
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
    <script src="walletrecordhtml/js/jquery-3.3.1.min.js"></script>
    <script src="walletrecordhtml/js/bootstrap.min.js"></script>
    <script src="walletrecordhtml/js/jquery.nice-select.min.js"></script>
    <script src="walletrecordhtml/js/jquery-ui.min.js"></script>
    <script src="walletrecordhtml/js/jquery.slicknav.js"></script>
    <script src="walletrecordhtml/js/mixitup.min.js"></script>
    <script src="walletrecordhtml/js/owl.carousel.min.js"></script>
    <script src="walletrecordhtml/js/main.js"></script>
</body>
</html>