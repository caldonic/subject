package subject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import subject.service.CouponVerifyService;
import subject.service.impl.CouponVerifyServiceImpl;
import subject.vo.Coupon;

@WebServlet("/GoldRemainingCheck")
public class GoldRemainingCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Gson gson = new Gson();
		JsonObject resObj = new JsonObject();
		try {
			Coupon coupon = gson.fromJson(req.getReader(), Coupon.class);
			CouponVerifyService couponVerifyService = new CouponVerifyServiceImpl();
			final String Msg = couponVerifyService.Couponverify(coupon.getCouponname()); // 傳入之參數交給couponVerifyService處理
			resObj.addProperty("Msg", Msg);

		} catch (Exception e) {
			e.printStackTrace();
			resObj.addProperty("Msg", "系統錯誤");
		}
		res.getWriter().append(gson.toJson(resObj));
	}
}
