package subject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

import subject.service.CouponVerifyService;
import subject.service.impl.CouponVerifyServiceImpl;
import subject.vo.Coupon;

@WebServlet("/CouponVerify")
//購物車coupon驗證
public class CouponVerifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/json;charset=UTF-8");
		Gson gson = new Gson();
		JsonObject resObj = new JsonObject();
		try {
			Coupon coupon = gson.fromJson(req.getReader(), Coupon.class);
			System.out.println(coupon);
			CouponVerifyService service = new CouponVerifyServiceImpl();
			final String errMsg = service.Couponverify(coupon.getCouponname());
			resObj.addProperty("errMsg", errMsg);		
		} catch (Exception e) {
			e.printStackTrace();
			resObj.addProperty("errMsg", "系統錯誤");
		}
		res.getWriter().append(gson.toJson(resObj));
	}
	
}
