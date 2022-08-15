package com.advert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.advert.model.advertDAO;
import com.advert.model.advertVO;
import com.google.gson.Gson;
import com.orderDetail.model.OrderDetailDAO;
import com.orderDetail.model.OrderDetailVO;

@MultipartConfig
@WebServlet("/advert/advert.img")
public class advertImgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Gson gs = new Gson();

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		String action = req.getParameter("action");
		if ("getImg".equals(action)) {
			advertDAO dao = new advertDAO();
			String advertserialnumber = req.getParameter("itemNo");
			if (advertserialnumber != null) {
				Integer i1 = Integer.parseInt(advertserialnumber);
				advertVO vo = dao.findByItemPK(i1);
				ServletOutputStream out = res.getOutputStream();
				out.write(vo.getPhoto());
				out.flush();
				out.close();
			}
		}	
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doGet(req, res);
//		req.setCharacterEncoding("UTF-8");
	}
}
