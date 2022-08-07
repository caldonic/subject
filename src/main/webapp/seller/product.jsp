
<%@page import="subject.vo.itemvo" %>
	<%@page import="subject.service.impl.Itemservice" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				<%@ page import="java.util.*" %>

					<% Itemservice itemSvc = new Itemservice(); List<itemvo> list = itemSvc.getAll();
						pageContext.setAttribute("list", list);
						%>					
						<!DOCTYPE html>
						<html lang="en">

						<head>
							<meta charset="utf-8" />
							<meta name="viewport" content="width=device-width, initial-scale=1" />
							<title>樂意購 | 賣家後台</title>

							<!-- Google Font: Source Sans Pro -->
							<link rel="stylesheet"
								href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
							<!-- Font Awesome Icons -->
							<link rel="stylesheet"
								href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
								integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
								crossorigin="anonymous" referrerpolicy="no-referrer" />
							<!-- Theme style -->
							<link rel="stylesheet" href="css/adminlte.min.css" />
							<style>
								/* 圖片拖曳css */
								#drop_zone {
									border: 1px dashed #ccc;
									height: 50px;
									/* position: relative; */
								}

								#drop_zone span.text {
									/* position: absolute; */
									/* display: inline-block; */
									left: 50%;
									top: 50%;
									transform: translate(-50%, -50%);
									z-index: -1;
									color: lightgray;
								}

								#drop_zone.-on {
									border: 1px dashed lightblue;
									box-shadow: 3px 3px 5px lightblue inset, -3px -3px 5px lightblue inset;
								}

								/* 圖片預覽css */
								#preview {
									border: 1px solid lightgray;
									display: inline-block;
									width: 250px;
									min-height: 150px;
									/* position: relative; */
								}

								#preview span.text {
									/* position: absolute;
      display: inline-block; */
									left: 50%;
									top: 50%;
									transform: translate(-50%, -50%);
									z-index: -1;
									color: lightgray;
								}

								#preview img.preview_img {
									width: 100%;
								}
							</style>
						</head>



						<body class="hold-transition sidebar-mini">

							<!-- 主要開發區塊 -->
							<div class="wrapper">

								<!-- Navbar header區塊-->
								<nav id="navbar-header"
									class="main-header navbar navbar-expand navbar-white navbar-light">
									<!-- Left navbar links -->
									<ul class="navbar-nav">
										<!-- 漢堡條 -->
										<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#"
												role="button"><i class="fas fa-bars"></i></a></li>
										<!-- 文字區域 -->
										<li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link"> 賣家中心
											</a></li>
										<li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link">
												<ion-icon name="arrow-forward-outline"></ion-icon>
											</a></li>
										<li class="nav-item d-none d-sm-inline-block"><a href="#"
												class="nav-link">商品管理</a></li>

									</ul>

									<!-- Right navbar links -->
									<ul class="navbar-nav ml-auto">

										<!-- 掃描票券icon -->
										<li class="nav-item"><a class="nav-link" data-widget="" href="#" role="button">
												<ion-icon name="scan-outline"></ion-icon>
											</a></li>



										<!-- 右邊登出icon -->
										<li class="nav-item"><a class="nav-link" data-widget="login-out" href="#"
												role="button"> <i class="fas fa-arrow-right-from-bracket"></i>
											</a></li>
									</ul>
								</nav>
								<!-- /.navbar -->


								<!-- Main Sidebar Container 主側邊欄-->
								<aside id="sidebar" class="main-sidebar sidebar-dark-primary elevation-4">
									<!-- Brand Logo -->
									<a href="#" class="brand-link"> <img src="images/logo_onlyImg.svg"
											alt="LetItGo Logo" class="brand-image img-circle elevation-3"
											style="opacity: 0.8" />
										<span class="brand-text font-weight-light">樂意購</span>
									</a>

									<!-- Sidebar -->
									<div class="sidebar">
										<!-- Sidebar user panel (optional) -->
										<div class="user-panel mt-3 pb-3 mb-3 d-flex">
											<div class="image">
												<img src="https://fakeimg.pl/160/" class="img-circle elevation-2"
													alt="User Image" />
											</div>
											<div class="info">
												<a href="#" class="d-block">尾玉牛肉麵</a>
											</div>
										</div>

										<!-- Sidebar Menu -->
										<nav class="mt-2">
											<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview"
												role="menu" data-accordion="false">
												<!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
												<li class="nav-item"><a href="#" class="nav-link">
														<ion-icon name="newspaper-outline"></ion-icon>
														<!-- <i class="fa-solid fa-house-chimney-medical"></i> -->
														<p>
															訂單管理
															<!-- <i class="right fas fa-angle-left"></i> -->
														</p>
													</a></li>
												<li class="nav-item menu-open"><a href="#" class="nav-link  active">
														<ion-icon name="fast-food-outline"></ion-icon>
														<!-- <i class="fa-solid fa-calendar-check"></i> -->
														<p>
															商品管理
															<!-- <i class="right fas fa-angle-left"></i> -->
														</p>
													</a></li>

												<li class="nav-item"><a href="#" class="nav-link">
														<ion-icon name="home-outline"></ion-icon>
														<!-- <i class="fa-solid fa-hand-holding-heart"></i> -->
														<p>
															帳戶管理
															<!-- <i class="right fas fa-angle-left"></i> -->
														</p>
													</a></li>
												

												<li class="nav-item"><a href="#" class="nav-link">
														<ion-icon name="library-outline"></ion-icon>
														<!-- <i class="fa-solid fa-book-open"></i> -->
														<p>
															FAQ
															<!-- <i class="right fas fa-angle-left"></i> -->
														</p>
													</a>
													</ul>
										</nav>
										<!-- /.sidebar-menu -->
									</div>
									<!-- /.sidebar -->
								</aside>

								<!-- Content Wrapper. Contains page content 主頁面欄位-->

								<div class="content-wrapper">
									<!-- Content Header (Page header) -->
									<div class="content-header">
										<div class="container-fluid">
											<div class="row mb-2">


												<!-- Main content -->
												<!-- 整塊主欄 -->
												<div class="col-12">
													<div class="card">
														<!-- tab那一條 -->
														<div class="card-header p-2">
															<ul class="nav nav-pills">
																<li class="nav-item"><a class="nav-link active"
																		href="#activity" data-toggle="tab">我的商品</a></li>
																<li class="nav-item"><a class="nav-link"
																		href="#timeline" data-toggle="tab">新增/更新商品 </a>
																</li>

															</ul>
														</div>


														<!-- tab所有頁面 -->
														<div class="card-body">
															<div class="tab-content">
																<!-- tab下  頁面一(我的商品頁面) -->
																<div class="active tab-pane" id="activity">

																	<table class="table table-head-fixed text-nowrap">
																		<thead>
																			<tr>
																				<th>商品編號</th>
																				<th>商品名稱</th>
																				<th>商品描述</th>
																				<th>市售價格</th>
																				<th>促銷價格</th>
																				<th>數量</th>
																				<th>操作</th>
																				<th></th>
																			</tr>
																		</thead>

																		<tbody>
																			<%@ include file="page1.file" %>
																				<c:forEach var="itemvo" items="${list}"
																					begin="<%=pageIndex%>"
																					end="<%=pageIndex+rowsPerPage-1%>">
																					<tr>
																						<td>${itemvo.serialnumber}</td>
																						<td>${itemvo.name}</td>
																						<!-- 塞圖片!!!!! -->
																						<td>${itemvo.description}</td>
																						<td>${itemvo.price}</td>
																						<td>${itemvo.price}</td>
																						<td>${itemvo.stock}</td>
																						<td>
																							
																							<FORM METHOD="post"
																								ACTION="<%=request.getContextPath()%>/seller/item.do"
																								style="margin-bottom: 0px;">
																								<input type="submit"
																									value="更新"> <input
																									type="hidden"
																									name="item_serial_number"
																									value="${itemvo.serialnumber}">
																								<input type="hidden"
																									name="action"
																									value="getOne_For_Update">
																							</FORM>
																						</td>
																						<td>																						
																							<FORM METHOD="post"
																								ACTION="<%=request.getContextPath()%>/seller/item.do"
																								style="margin-bottom: 0px;">
																								<input type="submit"
																									value="刪除"> <input
																									type="hidden"
																									name="item_serial_number"
																									value="${itemvo.serialnumber}">
																								<input type="hidden"
																									name="action"
																									value="delete">
																							</FORM>
																						</td>
																					</tr>
																				</c:forEach>
																		</tbody>
																	</table>
																	<%@ include file="page2.file" %>


																</div>
																<!-- /.tab-pane1 -->

																		
																</div>


																</div>
																<!--/.card card-primary card-outline -->

															</div>
															<!--/.tab-pane2 -->

														</div>
														<!--/.tab-content -->


													</div>
													<!-- /.card-body -->

												</div>
												<!-- /.card -->
											</div>
											<!-- /.col-12(整個tab) -->

										</div>
										<!-- /.row mb-2 -->


									</div>
									<!-- /.container-fluid -->
								</div>
								<!-- /.content-header -->
							</div>
							<!-- /.content-wrapper -->
							</div>
							<!-- /.wrapper -->

							<!-- ============ Footer段落 ============ -->
							<footer class="main-footer">
								<!-- 讓footer維持滿的 -->

								<div class="col-12">
									<!-- To the right -->
									<div class="float-right d-none d-sm-inline">Tibame TGA102 第三組</div>
									<!-- Default to the left -->
									<strong>Copyright &copy; 2022
										<!-- 下面連結要不要換成關於我們頁面連結 --> <a href="https://adminlte.io">TEAM LETITGO </a>.
									</strong> All rights reserved.
							</footer>

							<!-- Control Sidebar -->
							<aside class="control-sidebar control-sidebar-dark">
								<!-- Control sidebar content goes here -->
							</aside>
							<!-- /.control-sidebar -->
							</div>
							<!-- /.col -->
							<!-- ============ Footer段落 ============ -->
							<!-- /.content-wrapper -->
							</div>

							<!-- jQuery -->
							<script src="plugins/jquery/jquery.min.js"></script>
							<!-- Bootstrap 4 -->
							<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
							<!-- AdminLTE App -->
							<script src="js/adminlte.min.js"></script>
							<!-- ionicon  -->
							<script type="module"
								src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
							<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


						</body>

						</html>