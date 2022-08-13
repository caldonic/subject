<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>checkVerification</title>
    <!-- <link
		  href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
		  rel="stylesheet"
		  integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
		  crossorigin="anonymous"
		/> -->
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
      rel="stylesheet"
    />

    <!-- Css Styles -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      rel="stylesheet"
    />
    <!--自然改-->
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/nice-select.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <style>
      /* .header {
			height: 100px;
			border: 2px solid red;
		  } */
      .content {
        /* height: 600px; */
        height: 100%;
        background-image: url(./img/login-1.jpg);
        background-size: cover;
      }
      .let-it-go {
        margin: 20% 0;
      }
      h1,
      h3 {
        text-align: center;
        color: antiquewhite;
      }
      .login {
        background-color: white;
        height: 440px;
      }
    </style>
  </head>
  <body>
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
    <section class="container-fluid content">
      <div class="row justify-content-center">
        <div
          class="col-4 p-5 rounded"
          style="background-color: white; margin-top: 30vh"
        >
        <div class="d-flex justify-content-center text-danger">${msg}</div>
        
          <form action="<%=request.getContextPath()%>/checkVerification" method="post" id="authCodeInfo">
            <h4 class="text-center mb-3">確認驗證碼</h4>
            <div class="d-flex justify-content-center">
              <label class="mr-2 mt-2" for="authCode">驗證碼: </label>
              <input type="text" name="authCode" id="authCode" />
              <button class="btn btn-warning text-white" id="submitBtn" type="button">
                Submit
              </button>
              
            </div>
            
          </form>
        </div>
      </div>
    </section>

    <!-- <h1>Footer</h1> -->
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
    <script src="js/axios.min.js"></script>
    <script>
      const authCode = document.getElementById('authCode');
      const authCodeInfo = document.getElementById('authCodeInfo');
      const submitBtn = document.getElementById('submitBtn');

      submitBtn.onclick = () => {
        let authCode = document.getElementById('authCode').value.trim();

        if (authCode === '') {
          alert('請勿空白!!');
          return false;
        }

        //表單submit
        document.getElementById('authCodeInfo').submit();
      };
    </script>
  </body>
</html>