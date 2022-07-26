package subject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import model.hibernate.HibernateUtil;
import subject.dao.CouponDao;
import subject.dao.impl.CouponDaoImpl;
import subject.vo.Coupon;

@WebServlet("/CouponVerify")
public class CouponVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/json;charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		Coupon couponname = gson.fromJson(req.getReader(), Coupon.class);
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		try {
			CouponDao dao = new CouponDaoImpl(sessionFactory);
			couponname = dao.selectone(couponname);
			String resS = gson.toJson(couponname);
			res.getWriter().append(resS);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
