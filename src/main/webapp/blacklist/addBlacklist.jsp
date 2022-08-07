<%@page import="subject.blacklist.model.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="subject.blacklist.model.*"%>

<%
  BlacklistVO blacklistVO = (BlacklistVO) request.getAttribute("blacklistVO");
%>
<%= blacklistVO==null %>--${blacklistVO}--
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>樂意購 | 賣家後台</title>

    <!-- Google Font: Source Sans Pro -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"
    />
    <!-- Font Awesome Icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- Theme style -->
    <link rel="stylesheet" href="blacklisthtml/css/adminlte.min.css" />
<style>
/*   table#table-1 { */
/* 	background-color: #CCCCFF; */
/*     border: 1px solid black; */
/*     text-align: center; */
/*   } */
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
   button {
  	border:1px solid rgb(0,123,255);
  	border-radius:2px;
   
  }
  table {
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>
<class class="hold-transition sidebar-mini">
    <!-- 主要開發區塊 -->
    <div class="wrapper">
      <!-- Navbar header區塊-->
      <nav
        id="navbar-header"
        class="main-header navbar navbar-expand navbar-white navbar-light"
      >
        <!-- Left navbar links -->
        <ul class="navbar-nav">
          <!-- 漢堡條 -->
          <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"
              ><i class="fas fa-bars"></i
            ></a>
          </li>
          <!-- 文字區域 -->
          <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link"> 賣家中心 </a>
          </li>
          <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link"
              ><ion-icon name="arrow-forward-outline"></ion-icon
            ></a>
          </li>
          <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link">帳戶管理</a>
          </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
          <!-- 掃描票券icon -->
          <li class="nav-item">
            <a class="nav-link" data-widget="" href="#" role="button">
              <ion-icon name="scan-outline"></ion-icon>
            </a>
          </li>

          <!-- Notifications Dropdown Menu -->
          <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
              <i class="far fa-bell"></i>
              <span class="badge badge-warning navbar-badge">15</span>
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
              <span class="dropdown-item dropdown-header"
                >15 Notifications</span
              >
              <div class="dropdown-divider"></div>
              <a href="#" class="dropdown-item">
                <i class="fas fa-envelope mr-2"></i> 4 new messages
                <span class="float-right text-muted text-sm">3 mins</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="#" class="dropdown-item">
                <i class="fas fa-users mr-2"></i> 8 friend requests
                <span class="float-right text-muted text-sm">12 hours</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="#" class="dropdown-item">
                <i class="fas fa-file mr-2"></i> 3 new reports
                <span class="float-right text-muted text-sm">2 days</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="#" class="dropdown-item dropdown-footer"
                >See All Notifications</a
              >
            </div>
          </li>
          <!-- 右邊登入icon -->
          <!-- <li class="nav-item">
          <a class="nav-link" data-widget="login-in" href="#" role="button">
            <i class="fas fa-arrow-right-to-bracket"></i>
          </a>
        </li> -->

          <!-- 右邊登出icon -->
          <li class="nav-item">
            <a class="nav-link" data-widget="login-out" href="#" role="button">
              <i class="fas fa-arrow-right-from-bracket"></i>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.navbar -->

      <!-- Main Sidebar Container 主側邊欄-->
      <aside id="sidebar" class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
          <img
            src="images/logo_onlyImg.svg"
            alt="LetItGo Logo"
            class="brand-image img-circle elevation-3"
            style="opacity: 0.8"
          />
          <span class="brand-text font-weight-light">樂意購</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
          <!-- Sidebar user panel (optional) -->
          <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
              <img
                src="https://fakeimg.pl/160/"
                class="img-circle elevation-2"
                alt="User Image"
              />
            </div>
            <div class="info">
              <a href="#" class="d-block">尾玉牛肉麵</a>
            </div>
          </div>

          <!-- Sidebar Menu -->
          <nav class="mt-2">
            <ul
              class="nav nav-pills nav-sidebar flex-column"
              data-widget="treeview"
              role="menu"
              data-accordion="false"
            >
              <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <ion-icon name="newspaper-outline"></ion-icon>
                  <!-- <i class="fa-solid fa-house-chimney-medical"></i> -->
                  <p>
                    訂單管理
                    <!-- <i class="right fas fa-angle-left"></i> -->
                  </p>
                </a>
                <!-- <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>醫師管理</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>病歷填寫</p>
                    </a>
                  </li>
                </ul> -->
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <ion-icon name="fast-food-outline"></ion-icon>
                  <!-- <i class="fa-solid fa-calendar-check"></i> -->
                  <p>
                    商品管理
                    <!-- <i class="right fas fa-angle-left"></i> -->
                  </p>
                </a>
                <!-- <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>護理人員管理</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>劃假</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>班表系統</p>
                    </a>
                  </li>
                </ul> -->
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <ion-icon name="cash-outline"></ion-icon>
                  <!-- <i class="fa-solid fa-store"></i> -->
                  <p>
                    財務管理
                    <!-- <i class="right fas fa-angle-left"></i> -->
                  </p>
                </a>
              </li>
              <li class="nav-item menu-open">
                <a href="#" class="nav-link active">
                  <ion-icon name="home-outline"></ion-icon>
                  <!-- <i class="fa-solid fa-hand-holding-heart"></i> -->
                  <p>
                    帳戶管理
                    <!-- <i class="right fas fa-angle-left"></i> -->
                  </p>
                </a>
                <!-- <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>提案</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>方案贊助</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>寄送資訊</p>
                    </a>
                  </li>
                </ul> -->
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <ion-icon name="stats-chart-outline"></ion-icon>
                  <!-- <i class="fa-brands fa-facebook-messenger"></i> -->
                  <p>
                    我的報表
                    <!-- <i class="right fas fa-angle-left"></i> -->
                  </p>
                </a>
              </li>

              <li class="nav-item">
                <a href="#" class="nav-link">
                  <ion-icon name="library-outline"></ion-icon>
                  <!-- <i class="fa-solid fa-book-open"></i> -->
                  <p>
                    FAQ
                    <!-- <i class="right fas fa-angle-left"></i> -->
                  </p>
                </a>
              </li>
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
              <!-- 碼德就是你害我一直找footer為什麼一直跑掉 -->
              <!-- <div class="col-sm-6">    
              <h1 class="m-0">Starter Page</h1>              
            </div> -->
              <!-- 還有你啦= = -->
              <!-- /.col -->
              <!-- <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item">
                  <a href="#">Home</a>
                </li>
                <li class="breadcrumb-item active">Starter Page</li>
              </ol>
            </div>  -->
              <!-- /.col -->

              <!-- Main content -->
              <!-- 整塊主欄 -->
              <div class="col-12">
                <div class="card">
                  <!-- tab那一條 -->
                  <div class="card-header p-2">
                    <ul class="nav nav-pills">
                      <li class="nav-item">
                        <a
                          class="nav-link active"
                          href="#activity"
                          data-toggle="tab"
                          >我的資訊</a
                        >
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#timeline" data-toggle="tab"
                          >我的評價
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#settings" data-toggle="tab"
                          >黑名單</a
                        >
                      </li>
                    </ul>
                  </div>

                  <!-- tab所有頁面 -->
                  <div class="card-body">
                    <div class="tab-content">
                      <!-- tab下  頁面一(我的資訊頁面) -->
                      <div class="active tab-pane" id="activity">
                        <table class="table table-head-fixed text-nowrap">
                          <thead>
                            <tr>
                              <th>商品編號</th>
                              <th>商品名稱</th>
                              <th>市售價格</th>
                              <th>促銷價格</th>
                              <th>數量</th>
                              <th>狀態</th>
                              <th>操作</th>
                            </tr>
                          </thead>

                          <tbody>
                            <tr>
                              <td>0087</td>
                              <td>尾玉牛肉麵</td>
                              <!-- 要塞圖片嗎? -->
                              <td>$199</td>
                              <td>$187</td>
                              <td>87</td>
                              <td>上架中</td>
                              <td><button>更新</button></td>
                            </tr>

                            <tr>
                              <td>0087</td>
                              <td>尾玉牛肉麵</td>
                              <!-- 要塞圖片嗎? -->
                              <td>$199</td>
                              <td>$187</td>
                              <td>87</td>
                              <td>上架中</td>
                              <td><button>更新</button></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <!-- /.tab-pane1 -->

                      <!-- tab下  頁面二(我的評價頁面) -->

                      <div class="tab-pane" id="timeline">
                        <div class="card-body">
                          <table class="table table-bordered table-hover">
                            <thead>
                              <tr style="text-align: center">
                                <th>評價人</th>
                                <th>訂單編號</th>
                              </tr>
                            </thead>

                            <tbody>
                              <!--下拉彈出行-->
                              <tr
                                data-widget="expandable-table"
                                aria-expanded="true"
                                style="text-align: center"
                              >
                                <td>1636001</td>
                                <td>22050829805497</td>
                              </tr>

                              <tr class="expandable-body">
                                <td colspan="8">
                                  <!-- 下拉的部分 -->

                                  <!-- <ul>
                                    <li>訂單編號： abc8787</li>
                                    <li>兌換狀態： 已兌換</li>
                                    <li>買家資訊： Amber</li>
                                  </ul> -->
                                  <br />
                                  <table
                                    class="table table-bordered table-hover"
                                  >
                                    <thead>
                                      <tr>
                                        <th>序號</th>
                                        <th>商品名稱</th>
                                        <th>星等</th>
                                        <th>評價內容</th>
                                        <!-- <th>評價</th> -->
                                      </tr>
                                    </thead>

                                    <tbody>
                                      <tr>
                                        <td>1</td>
                                        <td>尾玉招牌牛肉麵</td>
                                        <td>★★★</td>
                                        <td>商品裡有蟲</td>
                                        <!-- <td>
                                          <button>評價</button>
                                        </td> -->
                                      </tr>

                                      <tr>
                                        <td colspan="4">
                                          <div class="task_add_block">
                                            <input
                                              type="text"
                                              class="task_name"
                                              placeholder="賣家評論"
                                            />
                                            <button
                                              type="button"
                                              class="task_add"
                                            >
                                              新增
                                            </button>
                                          </div>

                                          <div class="task_list_parent">
                                            <ul class="task_list"></ul>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>2</td>
                                        <td>紅燒招牌牛肉麵</td>
                                        <td>★★★★★</td>
                                        <td>食物很新鮮</td>
                                        <!-- <td>
                                          <button>評價</button>
                                        </td> -->
                                      </tr>
                                      <!-- <tr>
                                        <td colspan="4">
                                          <div class="task_add_block">
                                            <input
                                              type="text"
                                              class="task_name"
                                              placeholder="賣家評論"
                                            />
                                            <button
                                              type="button"
                                              class="task_add"
                                            >
                                              新增
                                            </button>
                                          </div>

                                          <div class="task_list_parent">
                                            <ul class="task_list"></ul>
                                          </div>
                                        </td>
                                      </tr> -->
                                    </tbody>
                                  </table>

                                  <ul class="float-sm-right">
                                    <!-- <li>訂單金額： $987</li>
                                    <li>成交手續費： -$ 5</li>
                                    <li>訂單進帳： $982</li> -->
                                  </ul>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>

                        <!-- <table class="table table-head-fixed text-nowrap">
                          <thead style="width: 500px">
                            <tr>
                              <th style="width: 200px; text-align: center">
                                評價人
                              </th>

                              <th style="width: 200px; text-align: center">
                                產品名稱
                              </th>

                              <th style="width: 200px; text-align: center">
                                星等
                              </th>

                              <th style="width: 200px; text-align: center">
                                評價內容
                              </th>

                              <th style="width: 150px; text-align: center">
                                照片
                              </th>

                              <th style="width: 150px; text-align: center">
                                回應
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td style="text-align: center">1636001</td>

                              <td style="text-align: center">套餐A</td>

                              <td
                                style="
                                  color: yellow;
                                  font-size: 20px;
                                  text-align: center;
                                "
                              >
                                ★★★★★
                              </td>

                              <td style="text-align: center">食物很新鮮</td>

                              <td style="text-align: center">
                                <img
                                  src="https://res.klook.com/image/upload/q_85/c_fill,w_750/v1623047306/blog/ki8nlin2g1ee9vooxvnh.jpg"
                                  style="width: 200px"
                                />
                              </td>
                              <td style="text-align: center">
                                <button>回覆</button>
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: center">1636002</td>

                              <td style="text-align: center">套餐B</td>

                              <td
                                style="
                                  color: yellow;
                                  font-size: 20px;
                                  text-align: center;
                                "
                              >
                                ★★★
                              </td>

                              <td style="text-align: center">食物味道普通</td>

                              <td style="text-align: center">
                                <img
                                  src="https://angelababy.tw/wp-content/uploads/flickr/51038389578_4dd25ff0e7_b.jpg"
                                  style="width: 200px"
                                  alt=""
                                />
                              </td>
                              <td style="text-align: center">
                                <button>回覆</button>
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: center">1636003</td>

                              <td style="text-align: center">套餐C</td>

                              <td
                                style="
                                  color: yellow;
                                  font-size: 20px;
                                  text-align: center;
                                "
                              >
                                ★
                              </td>

                              <td style="text-align: center">餐點裡有菜蟲</td>

                              <td style="text-align: center">
                                <img
                                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPv05m-Jhbsw2yAwyIh2vUes-gjHClUgPU1A&usqp=CAU"
                                  style="width: 200px"
                                  alt=""
                                />
                              </td>
                              <td style="text-align: center">
                                <button>回覆</button>
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: center">1636004</td>

                              <td style="text-align: center">套餐D</td>

                              <td
                                style="
                                  color: yellow;
                                  font-size: 20px;
                                  text-align: center;
                                "
                              >
                                ★★★★
                              </td>

                              <td style="text-align: center">餐點好吃便宜</td>

                              <td style="text-align: center">
                                <img
                                  src="https://candylife.tw/wp-content/uploads/20201018124226_66.jpg"
                                  style="width: 200px"
                                  alt=""
                                />
                              </td>
                              <td style="text-align: center">
                                <button>回覆</button>
                              </td>
                            </tr>
                          </tbody>
                        </table> -->
                      </div>
                      <!-- /.tab-pane2 -->

                      <!-- tab下  頁面三(黑名單頁面) -->
                      <div class="tab-pane" id="settings">
                        <table class="table table-head-fixed text-nowrap">
                          <thead style="width: 1000px">
                            <!--韋爾改-->
                            <!-- <tr>
                              <th style="width: 1000px; text-align: center">
                                黑名單編號
                              </th>

                              <th style="width: 1000px; text-align: center">
                                會員編號
                              </th>

                              <th style="width: 1000px; text-align: center">
                                回應
                              </th>
                            </tr> -->
                          </thead>
                          
<table id="table-1">
	<tr><td>
		 <button><a href="listAllBlacklist.jsp">回黑名單總覽</a></button>
	</td></tr>
</table>
<br>
<h3>資料新增:</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red"></font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/blacklist/blacklist.do" name="form1">
<table>
	<tr>
		<td>賣家流水編號</td>
		<td><input type="TEXT" name="serialnumber" size="40" 
			 value="<%= (blacklistVO==null)? "1000" : blacklistVO.getSerialnumber()%>" /></td>
	</tr>
	<tr>
		<td>會員流水編號:</td>
		<td><input type="TEXT" name="memberserialnumber" size="40" 
			 value="<%= (blacklistVO==null)? "163600?" : blacklistVO.getMemberserialnumber()%>" /></td>
	</tr>
	<tr>
		<td>會員帳號:</td>
		<td><input type="TEXT" name="account" size="40" 
			 value="<%= (blacklistVO==null)? "abc002" : blacklistVO.getAccount()%>" /></td>
	</tr>
	<tr>
		<td>黑名單狀態:</td>
		<td><input type="TEXT" name="blackliststatus" size="40" 
			 value="<%= (blacklistVO==null)? "true" : blacklistVO.isBlackliststatus()%>" readonly /></td>
	</tr>
	

<%-- 	<jsp:useBean id="deptSvc" scope="page" class="com.dept.model.DeptService" /> --%>
<!-- 	<tr> -->
<!-- 		<td>部門:<font color=red><b>*</b></font></td> -->
<!-- 		<td><select size="1" name="deptno"> -->
<%-- 			<c:forEach var="deptVO" items="${deptSvc.all}"> --%>
<%-- 				<option value="${deptVO.deptno}" ${(empVO.deptno==deptVO.deptno)? 'selected':'' } >${deptVO.dname} --%>
<%-- 			</c:forEach> --%>
<!-- 		</select></td> -->
<!-- 	</tr> -->

</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="送出新增"></FORM>
                        </table>
                      </div>
                      <!-- /.tab-pane2 -->
                    </div>
                    <!---tab-pane3 -->
                  </div>
                  <!-- /.tab-content -->
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col-12(主欄) -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->
    </div>
    <!-- /.content-wrapper -->

    <!-- ============ Footer段落 ============ -->
    <footer class="main-footer">
      <!-- 讓footer維持滿的 -->
      <div class="col-12">
        <!-- To the right -->
        <div class="float-right d-none d-sm-inline">Tibame TGA102 第三組</div>
        <!-- Default to the left -->
        <strong
          >Copyright &copy; 2022
          <!-- 下面連結要不要換成關於我們頁面連結 -->
          <a href="https://adminlte.io">TEAM LETITGO </a>.</strong
        >
        All rights reserved.
      </div>
    </footer>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    <!-- /.col -->
    <!-- ============ Footer段落 ============ -->
    <!-- /.content-wrapper -->

    <!-- jQuery -->
    <script src="blacklisthtml/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="blacklisthtml/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="blacklisthtml/js/adminlte.min.js"></script>
    <!-- ionicon  -->
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
 
</html>