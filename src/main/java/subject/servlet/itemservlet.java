package subject.servlet;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import subject.service.impl.Itemservice;
import subject.vo.itemvo;
@WebServlet("/seller/item.do")
public class itemservlet extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		
		if ("getOne_For_Update".equals(action)) { // product.jsp中的更新請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			
				/***************************1.接收請求參數****************************************/
				Integer serialnumber = Integer.valueOf(req.getParameter("item_serial_number"));
				
				/***************************2.開始查詢資料****************************************/
				Itemservice itemSvc = new Itemservice();
				itemvo itemvo = itemSvc.getOneItem(serialnumber);
								
				/***************************3.查詢完成,準備轉交(Send the Success view)************/
				req.setAttribute("itemvo", itemvo);         // 資料庫取出的itemvo物件,存入req
				String url = "/seller/Updateproduct.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);
				}
		
		
		
			if ("insert".equals(action)) { // 來自新增Addproduct.jsp的請求  
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

				/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
				String name = req.getParameter("item_name");
				String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
				if (name == null || name.trim().length() == 0) {
					errorMsgs.add("商品名稱不能空白!");
				} else if(!name.trim().matches(nameReg)) { //以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("商品名稱只能是中、英文字母,且長度必需在2到10之間!");
	            }
				
				String description = req.getParameter("item_description");
				if (description == null || description.trim().length() == 0) {
					errorMsgs.add("商品敘述請勿空白");
				}			
								
				Integer price = null;
				try {
					price = Integer.valueOf(req.getParameter("item_price"));
				} catch (NumberFormatException e) {
					price = 0;
					errorMsgs.add("價格請填寫數字!");
				}
				
				Integer stock = null;
				try {
					stock = Integer.valueOf(req.getParameter("item_stock"));
				} catch (NumberFormatException e) {
					stock = 0;
					errorMsgs.add("庫存請填寫數字!");
				}
				
//				Integer sellerserialnumber = null;
//				try {
//					sellerserialnumber = Integer.valueOf(req.getParameter("seller_serial_number"));
//				} catch (NumberFormatException e) {	
//					System.out.println("沒抓到賣家pk!!");
//				}
					
				String categoryno =  req.getParameter("item_category_number");

				itemvo itemvo= new itemvo();
				itemvo.setName(name);
				itemvo.setDescription(description);
				itemvo.setPrice(price);
				itemvo.setStock(stock);
//				itemvo.setSellerserialnumber(sellerserialnumber);
				itemvo.setCategoryno(categoryno);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("itemvo", itemvo); // 含有輸入格式錯誤的itemvo物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/seller/Addproduct.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				Itemservice itemSvc = new Itemservice();
				itemvo = itemSvc.add(name, description, price, stock, categoryno);
				
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String url = "";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交至商品詳細頁.jsp
				successView.forward(req, res);				
		}
		
	
			if ("update".equals(action)) { // 來自更新商品頁的請求  
				
				List<String> errorMsgs = new LinkedList<String>();
				// Store this set in the request scope, in case we need to
				// send the ErrorPage view.
				req.setAttribute("errorMsgs", errorMsgs);

					/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
					Integer serialnumber = Integer.valueOf(req.getParameter("item_serial_number"));
					String name = req.getParameter("item_name");
					String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
					if (name == null || name.trim().length() == 0) {
						errorMsgs.add("商品名稱不能空白!");
					} else if(!name.trim().matches(nameReg)) { //以下練習正則(規)表示式(regular-expression)
						errorMsgs.add("商品名稱只能是中、英文字母,且長度必需在2到10之間!");
		            }
					
					String description = req.getParameter("item_description");
					if (description == null || description.trim().length() == 0) {
						errorMsgs.add("商品敘述請勿空白");
					}			
									
					Integer price = null;
					try {
						price = Integer.valueOf(req.getParameter("item_price"));
					} catch (NumberFormatException e) {
						price = 0;
						errorMsgs.add("價格請填寫數字!");
					}
					
					Integer stock = null;
					try {
						stock = Integer.valueOf(req.getParameter("item_stock"));
					} catch (NumberFormatException e) {
						stock = 0;
						errorMsgs.add("庫存請填寫數字!");
					}
					
//					Integer sellerserialnumber = null;
//					try {
//						sellerserialnumber = Integer.valueOf(req.getParameter("seller_serial_number"));
//					} catch (NumberFormatException e) {	
//						System.out.println("沒抓到賣家pk!!");
//					}
						
					String categoryno =  req.getParameter("item_category_number");

					itemvo itemvo= new itemvo();
					itemvo.setSerialnumber(serialnumber);		
					itemvo.setName(name);
					itemvo.setDescription(description);
					itemvo.setPrice(price);
					itemvo.setStock(stock);
//					itemvo.setSellerserialnumber(sellerserialnumber);
					itemvo.setCategoryno(categoryno);

					// Send the use back to the form, if there were errors
					if (!errorMsgs.isEmpty()) {
						req.setAttribute("itemvo", itemvo); // 含有輸入格式錯誤的itemvo物件,也存入req
						RequestDispatcher failureView = req
								.getRequestDispatcher("/seller/Updateproduct.jsp");
						failureView.forward(req, res);
						return;
					}
					
					/***************************2.開始新增資料***************************************/
					Itemservice itemSvc = new Itemservice();
					itemvo = itemSvc.update(serialnumber, name, description, price, stock, categoryno);
					
					/***************************3.新增完成,準備轉交(Send the Success view)***********/
					req.setAttribute("itemvo", itemvo);
					String url = "/seller/product.jsp";
					RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交至商品詳細頁.jsp
					successView.forward(req, res);				
			}
			
	
			if ("delete".equals(action)) { // 來自product.jsp

				List<String> errorMsgs = new LinkedList<String>();
				// Store this set in the request scope, in case we need to
				// send the ErrorPage view.
				req.setAttribute("errorMsgs", errorMsgs);
		
					/***************************1.接收請求參數***************************************/
				Integer serialnumber = Integer.valueOf(req.getParameter("item_serial_number"));
					
					/***************************2.開始刪除資料***************************************/
					 Itemservice itemSvc = new Itemservice();
					 itemSvc.delete(serialnumber);
					
					
					/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
					String url = "/seller/product.jsp";
					RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
					successView.forward(req, res);
			}
			
			
			
			
	
	
	
}
}
