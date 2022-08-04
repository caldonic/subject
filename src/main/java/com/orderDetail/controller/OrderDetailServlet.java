package com.orderDetail.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orderDetail.model.OrderDetailService;
import com.orderDetail.model.OrderDetailVO;
import com.orderMainFile.model.OrderMainFileService;
import com.orderMainFile.model.OrderMainFileVO;

@WebServlet("/orderDetail/orderDetail.do")
public class OrderDetailServlet extends HttpServlet {
	
	@Override

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		
		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String str = req.getParameter("orderserialnumber");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入訂單編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/orderMainFile/select_page.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				Integer orderserialnumber = null;
				try {
					orderserialnumber = Integer.valueOf(str);
				} catch (Exception e) {
					errorMsgs.add("訂單編號格式不正確");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/orderMainFile/select_page.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************2.開始查詢資料*****************************************/
				OrderDetailService orderDetailSvc = new OrderDetailService();
				OrderDetailVO orderDetailVO = orderDetailSvc.getOneOrderDetail(orderserialnumber);
				if (orderDetailVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/orderMainFile/select_page.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************3.查詢完成,準備轉交(Send the Success view)*************/
				req.setAttribute("orderDetailVO", orderDetailVO); // 資料庫取出的orderMainFileVO物件,存入req
				String url = "/orderMainFile/listOneOrderMainFlie.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
				successView.forward(req, res);
		}
		
		
		if ("getOne_For_Update".equals(action)) { // 來自listAllEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			
				/***************************1.接收請求參數****************************************/
				Integer orderserialnumber = Integer.valueOf(req.getParameter("orderserialnumber"));
				
				/***************************2.開始查詢資料****************************************/
				OrderMainFileService orderMainFileSvc = new OrderMainFileService();
				OrderMainFileVO orderMainFileVO = orderMainFileSvc.getOneOrderMainFile(orderserialnumber);
								
				/***************************3.查詢完成,準備轉交(Send the Success view)************/
				req.setAttribute("orderMainFileVO", orderMainFileVO);         // 資料庫取出的orderMainFileVO物件,存入req
				String url = "/orderMainFile/update_orderMainFile_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);
		}
		
		
		if ("update".equals(action)) { // 來自update_emp_input.jsp的請求
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
		
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				Integer orderserialnumber = Integer.valueOf(req.getParameter("orderserialnumber").trim());
				Integer memberserialnumber = Integer.valueOf(req.getParameter("memberserialnumber").trim());
				Integer sellerserialnumber = Integer.valueOf(req.getParameter("sellerserialnumber").trim());
				String orderstatusnumber = String.valueOf(req.getParameter("orderstatusnumber").trim());
				Integer couponserialnumber = Integer.valueOf(req.getParameter("couponserialnumber").trim());
				Integer sellerevaluationstar = Integer.valueOf(req.getParameter("sellerevaluationstar").trim());
				Integer memberevaluationstar = Integer.valueOf(req.getParameter("memberevaluationstar").trim());
				String sellerevaluationdescription = String.valueOf(req.getParameter("sellerevaluationdescription").trim());
				String memberevaluationdescription = String.valueOf(req.getParameter("memberevaluationdescription").trim());
//				byte[] memberevaluationphoto = byte[].valueOf(req.getParameter("memberevaluationphoto").trim());
				Integer orderamount = Integer.valueOf(req.getParameter("orderamount").trim());
				java.sql.Date orderdate = java.sql.Date.valueOf(req.getParameter("orderdate").trim());
				
//				String ename = req.getParameter("ename");
//				String enameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
//				if (ename == null || ename.trim().length() == 0) {
//					errorMsgs.add("員工姓名: 請勿空白");
//				} else if(!ename.trim().matches(enameReg)) { //以下練習正則(規)表示式(regular-expression)
//					errorMsgs.add("員工姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到10之間");
//	            }
//				
//				String job = req.getParameter("job").trim();
//				if (job == null || job.trim().length() == 0) {
//					errorMsgs.add("職位請勿空白");
//				}	
//				
//				java.sql.Date hiredate = null;
//				try {
//					hiredate = java.sql.Date.valueOf(req.getParameter("hiredate").trim());
//				} catch (IllegalArgumentException e) {
//					hiredate=new java.sql.Date(System.currentTimeMillis());
//					errorMsgs.add("請輸入日期!");
//				}
//
//				Double sal = null;
//				try {
//					sal = Double.valueOf(req.getParameter("sal").trim());
//				} catch (NumberFormatException e) {
//					sal = 0.0;
//					errorMsgs.add("薪水請填數字.");
//				}
//
//				Double comm = null;
//				try {
//					comm = Double.valueOf(req.getParameter("comm").trim());
//				} catch (NumberFormatException e) {
//					comm = 0.0;
//					errorMsgs.add("獎金請填數字.");
//				}

//				Integer deptno = Integer.valueOf(req.getParameter("deptno").trim());

				OrderMainFileVO orderMainFileVO = new OrderMainFileVO();
				orderMainFileVO.setOrderserialnumber(orderserialnumber);
				orderMainFileVO.setMemberserialnumber(memberserialnumber);
				orderMainFileVO.setSellerserialnumber(sellerserialnumber);
				orderMainFileVO.setOrderstatusnumber(orderstatusnumber);
				orderMainFileVO.setCouponserialnumber(couponserialnumber);
				orderMainFileVO.setSellerevaluationstar(sellerevaluationstar);
				orderMainFileVO.setMemberevaluationstar(memberevaluationstar);
				orderMainFileVO.setSellerevaluationdescription(sellerevaluationdescription);
				orderMainFileVO.setMemberevaluationdescription(memberevaluationdescription);
//				orderMainFileVO.setMemberevaluationphoto(memberevaluationphoto);
				orderMainFileVO.setOrderamount(orderamount);
				orderMainFileVO.setOrderdate(orderdate);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("orderMainFileVO", orderMainFileVO); // 含有輸入格式錯誤的orderMainFileVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/orderMainFile/update_orderMainFile_input.jsp");
					failureView.forward(req, res);
					return; //程式中斷
				}
				
				/***************************2.開始修改資料*****************************************/
				OrderMainFileService orderMainFileSvc = new OrderMainFileService();
				orderMainFileVO = orderMainFileSvc.updateOrderMainFile(orderserialnumber, memberserialnumber, sellerserialnumber, orderstatusnumber, couponserialnumber,sellerevaluationstar, memberevaluationstar,sellerevaluationdescription,memberevaluationdescription,orderamount,orderdate);
				// ,memberevaluationphoto
				/***************************3.修改完成,準備轉交(Send the Success view)*************/
				req.setAttribute("orderMainFileVO", orderMainFileVO); // 資料庫update成功後,正確的的orderMainFileVO物件,存入req
				String url = "/orderMainFile/listOneOrderMainFlie.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);
		}

        if ("insert".equals(action)) { // 來自addEmp.jsp的請求  
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

				/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
//				Integer orderserialnumber = Integer.valueOf(req.getParameter("orderserialnumber").trim());
				Integer memberserialnumber = Integer.valueOf(req.getParameter("memberserialnumber").trim());
				Integer sellerserialnumber = Integer.valueOf(req.getParameter("sellerserialnumber").trim());
//				String orderstatusnumber = String.valueOf(req.getParameter("orderstatusnumber").trim());
				Integer couponserialnumber = Integer.valueOf(req.getParameter("couponserialnumber").trim());
				Integer sellerevaluationstar = Integer.valueOf(req.getParameter("sellerevaluationstar").trim());
				Integer memberevaluationstar = Integer.valueOf(req.getParameter("memberevaluationstar").trim());
//				String sellerevaluationdescription = String.valueOf(req.getParameter("sellerevaluationdescription").trim());
//				String memberevaluationdescription = String.valueOf(req.getParameter("memberevaluationdescription").trim());
//				Byte memberevaluationphoto = Byte.valueOf(req.getParameter("memberevaluationphoto").trim());
				Integer orderamount = Integer.valueOf(req.getParameter("orderamount").trim());
//				java.sql.Date orderdate = java.sql.Date.valueOf(req.getParameter("orderdate").trim());
				

				
				String orderstatusnumber = req.getParameter("orderstatusnumber");
				if (orderstatusnumber == null || orderstatusnumber.trim().length() == 0) {
					errorMsgs.add("請勿空白");
				}
				String sellerevaluationdescription = req.getParameter("sellerevaluationdescription");
				if (sellerevaluationdescription == null || sellerevaluationdescription.trim().length() == 0) {
					errorMsgs.add("請勿空白");
				}
				String memberevaluationdescription = req.getParameter("memberevaluationdescription");
				if (memberevaluationdescription == null || memberevaluationdescription.trim().length() == 0) {
					errorMsgs.add("請勿空白");
				}
				
//				String ename = req.getParameter("ename");
//				String enameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
//				if (ename == null || ename.trim().length() == 0) {
//					errorMsgs.add("員工姓名: 請勿空白");
//				} else if(!ename.trim().matches(enameReg)) { //以下練習正則(規)表示式(regular-expression)
//					errorMsgs.add("員工姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到10之間");
//	            }
//				
//				String job = req.getParameter("job").trim();
//				if (job == null || job.trim().length() == 0) {
//					errorMsgs.add("職位請勿空白");
//				}
//				
				java.sql.Date orderdate = null;
				try {
					orderdate = java.sql.Date.valueOf(req.getParameter("orderdate").trim());
				} catch (IllegalArgumentException e) {
					orderdate=new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入日期!");
				}
//				
//				Double sal = null;
//				try {
//					sal = Double.valueOf(req.getParameter("sal").trim());
//				} catch (NumberFormatException e) {
//					sal = 0.0;
//					errorMsgs.add("薪水請填數字.");
//				}
//				
//				Double comm = null;
//				try {
//					comm = Double.valueOf(req.getParameter("comm").trim());
//				} catch (NumberFormatException e) {
//					comm = 0.0;
//					errorMsgs.add("獎金請填數字.");
//				}
//				
//				Integer deptno = Integer.valueOf(req.getParameter("deptno").trim());

				OrderMainFileVO orderMainFileVO = new OrderMainFileVO();
				orderMainFileVO.setMemberserialnumber(memberserialnumber);
				orderMainFileVO.setSellerserialnumber(sellerserialnumber);
				orderMainFileVO.setOrderstatusnumber(orderstatusnumber);
				orderMainFileVO.setCouponserialnumber(couponserialnumber);
				orderMainFileVO.setSellerevaluationstar(sellerevaluationstar);
				orderMainFileVO.setMemberevaluationstar(memberevaluationstar);
				orderMainFileVO.setSellerevaluationdescription(sellerevaluationdescription);
				orderMainFileVO.setMemberevaluationdescription(memberevaluationdescription);
//				orderMainFileVO.setMemberevaluationphoto(memberevaluationphoto);
				orderMainFileVO.setOrderamount(orderamount);
				orderMainFileVO.setOrderdate(orderdate);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("orderMainFileVO", orderMainFileVO); // 含有輸入格式錯誤的orderMainFileVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/orderMainFile/addOrderMainFile.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				OrderMainFileService orderMainFileSvc = new OrderMainFileService();
				orderMainFileVO = orderMainFileSvc.addOrderMainFile(memberserialnumber, sellerserialnumber, orderstatusnumber, couponserialnumber,sellerevaluationstar, memberevaluationstar,sellerevaluationdescription,memberevaluationdescription,orderamount,orderdate);
				// memberevaluationphoto,
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String url = "/orderMainFile/listAllOrderMainFile.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);				
		}
		
		
		if ("delete".equals(action)) { // 來自listAllEmp.jsp

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
	
				/***************************1.接收請求參數***************************************/
				Integer orderserialnumber = Integer.valueOf(req.getParameter("orderserialnumber"));
				
				/***************************2.開始刪除資料***************************************/
				OrderMainFileService orderMainFileSvc = new OrderMainFileService();
				orderMainFileSvc.deleteOrderMainFile(orderserialnumber);
				
				/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
				String url = "/orderMainFile/listAllOrderMainFile.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);
		}
	}
}
