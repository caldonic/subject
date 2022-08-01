package subject.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import suject.cart.Cart;
import suject.cart.Cartlist;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/json;charset=UTF-8");
		Gson gson = new Gson();
		Cart cart = gson.fromJson(req.getReader(), Cart.class);
		System.out.println("couponname=" + cart.couponname);

//		for (int i = 0; i < cart.cartlist.size(); i++) {     //一般用法
//			System.out.println("cartobj=" + cart.cartlist);
//
//		}

		for (Cartlist cartlist : cart.cartlist) { // 疊代用法
			System.out.println("cartobj=" + cartlist);

		}
	}
}
