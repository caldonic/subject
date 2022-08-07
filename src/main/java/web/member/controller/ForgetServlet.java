package web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.member.dao.MemberDao;
import web.member.dao.impl.MemberDaoImpl;
import web.member.service.MailService;
import web.member.service.impl.MailServiceImpl;
import web.vo.Member;

/**
 * Servlet implementation class ForgetServlet
 */
@WebServlet("/forget")
public class ForgetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		session = req.getSession();

		MemberDao dao;
		try {
			dao = new MemberDaoImpl();
			Member member = new Member();
			member.setEmail(email);
			member = dao.selectEmail(member);
			MailService service = new MailServiceImpl();
			String authCode = service.getAuthCode();
			service.sendMail(email, " LETITGO樂易購 電子信箱驗證信函", "驗證碼: " + authCode);
			session.setAttribute("authCode", authCode);
			System.out.println("已寄出驗證信!!");
			req.getRequestDispatcher("/checkVerification.jsp").forward(req, resp);
			session.setAttribute("account", member.getAccount());
			System.out.println(member.getAccount());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
