<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.product_seller.model.*"%>


<%
    Product_seller_Service sellerSvc = new Product_seller_Service();
	List<Product_seller_VO> sellerlist = sellerSvc.getAll();
	pageContext.setAttribute("sellerlist",sellerlist);
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet"><!--自然改-->

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->
<!--     test123 -->
<!-- 		<tr> -->
<%-- 		<td>${Item_VO.item_serial_number}</td> --%>
<%-- 		<td>${Item_VO.item_name}</td> --%>
<%-- 		<td>${Item_VO.item_description}</td> --%>
<%-- 		<td>${Item_VO.item_price}</td> --%>
<%-- 		<td>${Item_VO.item_stock}</td> --%>
<%-- 		<td>${Item_VO.seller_serial_number}</td> --%>
<%-- 		<td>${Item_VO.item_category_number}</td> --%>
<%-- 		<td>${Item_VO.item_status_number}</td>	 --%>
<!-- 		</tr> -->
		
		
<!-- 		<tr> -->
<%-- 		<td>${Product_seller_VO.seller_serial_number}</td> --%>

<!-- 		</tr> -->



<!--     <table> -->
<%--     	<c:forEach var="Product_seller_VO" items="${sellerlist}" begin="${offset}" end="<%=sellerlist.size()%>"> --%>
<%--     	    	<c:if test="${Item_VO.seller_serial_number == Product_seller_VO.seller_serial_number}"> --%>
    	
<%-- 		<td>${Product_seller_VO.company_name}</td> --%>
		
<%-- 		         </c:if> --%>
		
<%-- 	</c:forEach> --%>
<!-- 	</table> -->

    <!-- Header Section Begin -->
    <header class="header">
    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="https://fakeimg.pl/150x60/" alt=""></a><!--自然改-->
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> </a></li><!--自然改-->
                <li><a href="./index.html"><i class="fa-solid fa-house"></i> </a></li><!--自然改--><!--這個圖示用來做回首頁-->
                <li><a href="./shoping-cart.html"><i class="fa-solid fa-cart-shopping"></i> </a></li><!--自然改--><!--這個圖示用來做購物車-->
                <li><a href="#"><i class="fa-solid fa-ticket"></i></a></li> <!--自然改--><!--這個圖示用來做我的票券-->
                <li><a href="#"><i class="fa-solid fa-person"></i></a></li> <!--自然改--><!--這個圖示用來做登入-->
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
                <li><a href="#">會員中心</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="#">帳戶管理</a></li> <!--自然改-->
                        <li><a href="#">訂單查詢</a></li> <!--自然改-->
                        <li><a href="#">我的錢包</a></li> <!--自然改-->
                        <li><a href="#">我的最愛</a></li> <!--自然改-->
                        <li><a href="#">會員權益</a></li> <!--自然改-->
                        <li><a href="./contact.html">聯繫客服</a></li> <!--自然改-->
                        <li><a href="#">買家FAQ</a></li> <!--自然改-->
                    </ul>
                </li>
                <li><a href="#">賣家中心</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="#">訂單管理</a></li> <!--自然改-->
                        <li><a href="#">商品管理</a></li> <!--自然改-->
                        <li><a href="#">財務管理</a></li> <!--自然改-->
                        <li><a href="#">帳戶管理</a></li> <!--自然改-->
                        <li><a href="#">我的報表</a></li> <!--自然改-->
                        <li><a href="#">賣家FAQ</a></li> <!--自然改-->
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
                        <a href="./index.html"><img src="https://fakeimg.pl/150x60/" alt=""></a><!--自然改-->
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="#">會員中心</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="#">帳戶管理</a></li> <!--自然改-->
                                    <li><a href="#">訂單查詢</a></li> <!--自然改-->
                                    <li><a href="#">我的錢包</a></li> <!--自然改-->
                                    <li><a href="#">我的最愛</a></li> <!--自然改-->
                                    <li><a href="#">會員權益</a></li> <!--自然改-->
                                    <li><a href="./contact.html">聯繫客服</a></li> <!--自然改-->
                                    <li><a href="#">買家FAQ</a></li> <!--自然改-->

                                </ul>
                            </li>
                            <li><a href="#">賣家中心</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="#">訂單管理</a></li> <!--自然改-->
                                    <li><a href="#">商品管理</a></li> <!--自然改-->
                                    <li><a href="#">財務管理</a></li> <!--自然改-->
                                    <li><a href="#">帳戶管理</a></li> <!--自然改-->
                                    <li><a href="#">我的報表</a></li> <!--自然改-->
                                    <li><a href="#">賣家FAQ</a></li> <!--自然改-->
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> </a></li><!--自然改-->
                            <li><a href="./index.html"><i class="fa-solid fa-house"></i> </a></li><!--自然改--><!--這個圖示用來做回首頁-->
                            <li><a href="./shoping-cart.html"><i class="fa-solid fa-cart-shopping"></i> </a></li><!--自然改--><!--這個圖示用來做購物車-->
                            <li><a href="#"><i class="fa-solid fa-ticket"></i></a></li> <!--自然改--><!--這個圖示用來做我的票券-->
                            <li><a href="#"><i class="fa-solid fa-person"></i></a></li> <!--自然改--><!--這個圖示用來做登入-->
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

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>賣家名稱</h2>
                        <div class="breadcrumb__option">

                            <span>
    	<c:forEach var="Product_seller_VO" items="${sellerlist}" begin="${offset}" end="<%=sellerlist.size()%>">
    	    	<c:if test="${Item_VO.seller_serial_number == Product_seller_VO.seller_serial_number}">
    	
		<td>${Product_seller_VO.company_name}</td>
		
		         </c:if>
		
	</c:forEach>
	</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

     <!-- Product Details Section Begin -->
     <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/product/details/beefnoodle1.jpg" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/beefnoodle2.jpg"
                                src="img/product/details/beefnoodle2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/beefnoodle3.jpg"
                                src="img/product/details/beefnoodle3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/beefnoodle4.jpg"
                                src="img/product/details/beefnoodle4.jpg" alt="">
                            <img data-imgbigurl="img/product/details/beefnoodle5.jpg"
                                src="img/product/details/beefnoodle5.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${Item_VO.item_name}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>2 份評價</span>
                        </div>
                        <div  style="text-decoration:line-through">${Item_VO.item_price}</div>
                        <div class="product__details__price">${Math.round(Item_VO.item_price*0.9)}</div>
                        <p></p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="primary-btn">加入購物車</a>
<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Item_category_Servlet" >
        <input type="hidden" name="item_category_number", value="212">
        <input type="hidden" name="action" value="add_myfavorite">
        <input type="submit" value="加到我的最愛">
    </FORM>
                            <ul>                            
                            <li><b>票券剩餘</b> <span>${Item_VO.item_stock} <b>份</b> <samp>庫存緊張!</samp></span></li>
                            <li><b>已售出</b> <span>287</span> <b>份</b></li>
                            <li><b>票券資訊</b> <span>尾玉招牌牛肉麵 一碗 可免費加麵</span></li>
                            <li><b>好康到相報</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">商品說明</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">如何使用/取消政策</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">評價 <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>商品說明頁</h6>
                                    <p>${Item_VO.item_description}


                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>如何使用/取消政策頁</h6>
                                    <p>
                                        如何使用
                                        <ul>                                            
                                            <li>不需預約，到店時請告知使用兌換券</li>
                                            <li>請於入場時出示票券</li>
                                            <li>本優惠可內用及外帶，每人每次不限使用張數</li>                                            
                                            <li>本優惠不得與店內其他優惠活動合併使用</li>                                          
                                        </ul>
                                    </p>
                                    <p>
                                        取消政策
                                        <ul>                                                                                      
                                            <li>票券無使用期限，但優惠效期至<spam>2022-8-7</spam>止，逾優惠效期經確認未使用可辦理退貨。</li>                                            
                                                                                       
                                        </ul>
                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>評價頁</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                        sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                        eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                        Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                        sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                        diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                        Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                        Proin eget tortor risus.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    




    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="https://fakeimg.pl/150x60/" alt=""></a>
                        </div>
                        <ul>
                            <li>地址：100 台北市中正區濟南路一段321號</li><!--自然改-->
                            <li>電話：02-12345678</li><!--自然改-->
                            <li>Email: caldonic@gmail.com</li><!--自然改-->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>相關連結</h6>
                        <ul class="header__menu__dropdown">
                            <li><a href="#">帳戶管理</a></li> <!--自然改-->
                            <li><a href="#">訂單查詢</a></li> <!--自然改-->
                            <li><a href="#">我的錢包</a></li> <!--自然改-->
                            <li><a href="#">我的最愛</a></li> <!--自然改-->
                            <li><a href="#">會員權益</a></li> <!--自然改-->
                            <li><a href="./contact.html">聯繫客服</a></li> <!--自然改-->
                            <li><a href="#">買家FAQ</a></li> <!--自然改-->

                        </ul>
                        <ul class="header__menu__dropdown">
                            <li><a href="#">訂單管理</a></li> <!--自然改-->
                            <li><a href="#">商品管理</a></li> <!--自然改-->
                            <li><a href="#">財務管理</a></li> <!--自然改-->
                            <li><a href="#">帳戶管理</a></li> <!--自然改-->
                            <li><a href="#">我的報表</a></li> <!--自然改-->
                            <li><a href="#">賣家FAQ</a></li> <!--自然改-->
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
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> 版權所有 copyright © 2022 TEAM LETITGO All Rights Reserved.  <!--自然改-->
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
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



</body>

</html>