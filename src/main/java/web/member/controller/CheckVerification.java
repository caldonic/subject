package web.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class checkVerification
 */
@WebServlet("/checkVerification")
public class CheckVerification extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;  

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String inputAuthCode = req.getParameter("authCode");
		session = req.getSession();
		String authCode = (String) session.getAttribute("authCode");
		if (authCode.equals(inputAuthCode)) {
			System.out.println("驗證成功");
			req.getRequestDispatcher("/changePassword.jsp").forward(req, resp);
		} else {
			System.out.println("驗證失敗");
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
