package subject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.orderMainFile.model.OrderMainFileServiceNew;

import suject.cart.Cart;
import suject.cart.Cartlist;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/json;charset=UTF-8");
		Gson gson = new Gson();
		Cart cart = gson.fromJson(req.getReader(), Cart.class);
		
		System.out.println("couponname=" + cart.couponname);    //測試couponname接收
		System.out.println("goldremaining=" + cart.goldremaining);//測試購物金接收

		for (Cartlist cartlist : cart.cartlist) { //測試商品接收(疊代用法)
			System.out.println("cartobj=" + cartlist);
		}
//		for (int i = 0; i < cart.cartlist.size(); i++) {     //一般用法
//			System.out.println("cartobj=" + cart.cartlist);
//
//		}
		
//	    =======訂單生成於資料庫區============
//		try {
//			OrderMainFileHibernateService orderMainFileHibernateService = new OrderMainFileHibernateServiceImpl();
//			String orderresult = orderMainFileHibernateService.orderMaininsert(cart.couponname);
//			System.out.println("orderresult資料庫" + orderresult);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		try {
			 OrderMainFileServiceNew orderMainFileServiceNew = new OrderMainFileServiceNew();
		String orderresultanddetail=orderMainFileServiceNew.insertWithOrderDetail(cart.couponname);
		System.out.println("orderresultanddetail="+orderresultanddetail);
		}catch (Exception e) {
			e.printStackTrace();
		}
//	    ======訂單生成於資料庫區結束========
		
	}
}
