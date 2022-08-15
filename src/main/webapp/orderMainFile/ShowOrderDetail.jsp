<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.orderDetail.model.*"%>
<%@ page import="com.orderMainFile.model.*"%>

<%
OrderDetailService detailSvc = new OrderDetailService();
List<OrderDetailVO> listOrderDetail = detailSvc.getAllOrderDetail();
pageContext.setAttribute("listOrderDetail", listOrderDetail);
%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Ogani Template" />
<meta name="keywords" content="Ogani, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>LetItGo | 會員中心</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	rel="stylesheet" />
<!--自然改-->

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/nice-select.css" type="text/css" />
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css" />
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />

<!-- Css OrderDetail datatables -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />

<style>
	
	h6 {
		font-size: 28px;
	}
	
	/* OrderDetail Css Styles */
	h5 {
		font-size: 24px;
		color: #4e4c4c;
	}
	
	/* all btn */
    .btn {
	    font-size: 10px;
	    border-radius: 5px;
	    background-color: #7fad39;
	    border-color: #7fad39;
    }
    
    .btn:hover {
	   	background-color: #688c32;
	   	border-color: #688c32;
    }
	
	/* datatables */
	#orderdetail_tb {
    	border-radius: 5px;
    }
    
    #orderdetail_tb thead,
	#orderdetail_tb th,
	#orderdetail_tb td {
		text-align: center;
	} 
	
	.dataTables_wrapper .dataTables_length,
    .dataTables_wrapper .dataTables_filter,
    .dataTables_wrapper .dataTables_info,
    .dataTables_wrapper .dataTables_processing,
    .dataTables_wrapper .dataTables_paginate {
        font-size: 15px;
        border-radius: 5px;
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
            <a href="#"><img src="/subject/src/main/webapp/img/logo.png" alt=""></a><!--自然改-->
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="./my_favorite.jsp"><i class="fa fa-heart"></i> </a></li><!--自然改-->
                <li><a href="./index.jsp"><i class="fa-solid fa-house"></i> </a></li><!--自然改--><!--這個圖示用來做回首頁-->
                <li><a href="./shoping-cart.html"><i class="fa-solid fa-cart-shopping"></i> </a></li><!--自然改--><!--這個圖示用來做購物車-->
                <li><a href="./listAllTicket.jsp"><i class="fa-solid fa-ticket"></i></a></li> <!--自然改--><!--這個圖示用來做我的票券-->
                <li><a href="./logout"><i class="fa-solid fa-person"></i></a></li> <!--自然改--><!--這個圖示用來做登入-->
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
                <!-- <li class="active"><a href="./index.jsp">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li> -->
                <li><a href="#">會員中心</a>
                    <ul class="header__menu__dropdown">
                                    <li><a href="./memberupdate/listAllMemberupdate.jsp">帳戶管理</a></li> <!--自然改-->
                                    <li><a href="./orderMainFile/OrderMainFile.jsp">訂單查詢</a></li> <!--自然改-->
                                    <li><a href="./MemberBenefits.html">會員權益</a></li> <!--自然改-->
                                    <li><a href="./CustomerService.html">聯繫客服</a></li> <!--自然改-->
                                    <li><a href="./FAQ.html">買家FAQ</a></li> <!--自然改-->
                    </ul>
                </li>
                <li><a href="#">賣家中心</a>
                    <ul class="header__menu__dropdown">
                                    <li><a href="./seller/Order">訂單管理</a></li> <!--自然改-->
                                    <li><a href="./seller/product.jsp">商品管理</a></li> <!--自然改-->
                                    <li><a href="./seller/Seller">帳戶管理</a></li> <!--自然改-->

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
                        <a href="./index.jsp"><img src="./img/Frame 6.svg" alt=""></a><!--自然改-->
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="#">會員中心</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./memberupdate/listAllMemberupdate.jsp">帳戶管理</a></li> <!--自然改-->
                                    <li><a href="./orderMainFile/OrderMainFile.jsp">訂單查詢</a></li> <!--自然改-->
                                    <li><a href="./MemberBenefits.html">會員權益</a></li> <!--自然改-->
                                    <li><a href="./CustomerService.html">聯繫客服</a></li> <!--自然改-->
                                    <li><a href="./FAQ.html">買家FAQ</a></li> <!--自然改-->

                                </ul>
                            </li>
                            <li><a href="#">賣家中心</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./seller/Order">訂單管理</a></li> <!--自然改-->
                                    <li><a href="./seller/product.jsp">商品管理</a></li> <!--自然改-->
                                    <li><a href="./seller/Seller">帳戶管理</a></li> <!--自然改-->

                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="./my_favorite.jsp"><i class="fa fa-heart"></i> </a></li><!--自然改-->
                            <li><a href="./index.jsp"><i class="fa-solid fa-house"></i> </a></li><!--自然改--><!--這個圖示用來做回首頁-->
                            <li><a href="./shoping-cart.html"><i class="fa-solid fa-cart-shopping"></i> </a></li><!--自然改--><!--這個圖示用來做購物車-->
                            <li><a href="./ticket/listAllTicket.jsp"><i class="fa-solid fa-ticket"></i></a></li> <!--自然改--><!--這個圖示用來做我的票券-->
                            <li><a href="./login.html"><i class="fa-solid fa-person"></i></a></li> <!--自然改--><!--這個圖示用來做登入-->
                            <li><a href="./logout"><i class="fa fa-sign-out"></i></a></li> <!--自然改--><!--這個圖示用來做登入-->
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
							<i class="fa fa-bars"></i> <span>會員中心</span>
							<!--韋爾改-->
						</div>
						<ul>
							<li><a href="listAllMemberupdate.jsp">帳戶管理</a></li>
			                <!--韋爾改-->
			                <li><a href="listAllOrderMainFile.jsp">訂單查詢</a></li>
			                <!--韋爾改-->
			                <li><a href="./walletrecord/listAllWalletrecord.jsp">我的錢包</a></li>
			                <!--韋爾改-->
			                <li><a href="./ticket/listAllTicket.jsp">我的票夾</a></li>
			                <li><a href="#">我的最愛</a></li>
			                <!--韋爾改-->
			                <li><a href="./MemberBenefits.html">會員權益</a></li>
			                <!--韋爾改-->
			                <li><a href="./CustomerService.html">聯繫客服</a></li>
			                <!--韋爾改-->
			                <li><a href="./FAQ.html">買家FAQ</a></li>
							<!-- <li><a href="#">Fresh Onion</a></li>
           					<li><a href="#">Papayaya & Crisps</a></li>
				            <li><a href="#">Oatmeal</a></li>
				            <li><a href="#">Fresh Bananas</a></li> -->
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<!-- OrderDetail Begin -->
					<div class="card-header py-2">
						<h5 class="m-0 font-weight-bold">訂 單 明 細</h5>
					</div>
					<table id="orderdetail_tb"
						class="table table-striped table-hover responsive nowrap">
						<thead>
							<tr>
								<th scope="row">訂單編號</th>
								<th>商品名稱</th>
								<th>商品數量</th>
								<th>商品金額</th>
								<th width="15%">商品圖片</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="OrderDetailVO" items="${listOrderDetail}"
								begin="${offset}" end="<%=listOrderDetail.size()%>">
								<c:if
									test="${OrderMainFileVO.orderserialnumber == OrderDetailVO.orderserialnumber}">

									<tr>
										<td>${OrderDetailVO.orderserialnumber}</td>
										<td>${OrderDetailVO.itemname}</td>
										<td>${OrderDetailVO.orderdetailquantity}</td>
										<td>${OrderDetailVO.orderdetailprice}</td>
										<td>
										<img src ="<%=request.getContextPath()%>/OrderDetail/OrderDetail.img?action=getImg&itemNo=${OrderDetailVO.itemserialnumber}" alt="No image">
										</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
					<input type="button" value="回上一頁" class="btn btn-primary" onclick="location.href='OrderMainFile.jsp'">
					<!-- OrderDetail End -->
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
                            <a href="./index.jsp"><img src="./img/Frame 6.svg" alt=""></a>
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
                                            <li><a href="./memberupdate/listAllMemberupdate.jsp">帳戶管理</a></li> <!--自然改-->
                                            <li><a href="./orderMainFile/OrderMainFile.jsp">訂單查詢</a></li> <!--自然改-->
                                            <li><a href="./MemberBenefits.html">會員權益</a></li> <!--自然改-->
                                            <li><a href="./CustomerService.html">聯繫客服</a></li> <!--自然改-->
                                            <li><a href="./FAQ.html">買家FAQ</a></li> <!--自然改-->

                        </ul>
                        <ul class="header__menu__dropdown">
                                            <li><a href="./seller/Order">訂單管理</a></li> <!--自然改-->
                                            <li><a href="./seller/product.jsp">商品管理</a></li> <!--自然改-->
                                            <li><a href="./seller/Seller">帳戶管理</a></li> <!--自然改-->
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
<!--                         <div class="footer__widget__social"> -->
<!--                             <a href="#"><i class="fa fa-facebook"></i></a> -->
<!--                             <a href="#"><i class="fa fa-instagram"></i></a> -->
<!--                             <a href="#"><i class="fa-solid fa-envelope"></i></a> -->
<!--                         </div> -->
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
	
	<!-- Footer Section Begin -->
<%-- 	<jsp:include page="/footer.jsp"></jsp:include> --%>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.nice-select.min.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<script src="../js/jquery.slicknav.js"></script>
	<script src="../js/mixitup.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/main.js"></script>

	<!-- Js OrderDetail datatables -->
	<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

	<script>
	$(document).ready( function () { 
			$('#orderdetail_tb').DataTable({
				responsive: true,
				language: {
	            	url: "https://cdn.datatables.net/plug-ins/1.12.1/i18n/zh-HANT.json",
	            },
	            lengthMenu: [
	            	[5, 20, 50, -1],
	                [5, 20, 50, "All"],
	            ],
// 	            "columns": [
// 	            	null,
// 	                null,
// 	                null,
// 	                null,
// 	                { "width": "10%" }

// 	              ],

			});  
		}); 
	</script>

</body>
</html>