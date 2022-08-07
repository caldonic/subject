package web.member.controller;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.member.dao.MemberDao;
import web.member.dao.impl.MemberDaoImpl;
import web.vo.Member;

/**
 * Servlet implementation class checkVerification
 */
@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String newPassword = req.getParameter("newPassword");
		String checkPassword = req.getParameter("checkPassword");
		session = req.getSession();
		String account = (String) session.getAttribute("account");
		Boolean np = newPassword != null && newPassword.trim().length() != 0;
		Boolean cp = checkPassword != null && checkPassword.trim().length() != 0;
		
		Member member = new Member();
		MemberDao dao;
		try {
			dao = new MemberDaoImpl();
			if (np && cp && newPassword.equals(checkPassword)) {
				System.out.println("兩次密碼輸入相同!!");
				member.setPassword(newPassword);
				member.setAccount(account);
				Integer status = dao.updatePassword(member);
				System.out.println("UpdatePassword:" + status);
				req.getRequestDispatcher("/login.html").forward(req, resp);
			} else {
				System.out.println("兩次密碼輸入不相同，請再次確認!!");
				return;
			}
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
