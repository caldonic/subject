package web.seller.service.impl;

import java.util.Objects;

import javax.naming.NamingException;

import web.seller.dao.SellerDao;
import web.seller.dao.impl.SellerDaoImpl;
import web.seller.service.SellerService;
import web.vo.Seller;

public class SellerServiceImpl implements SellerService {
	private SellerDao dao;

	public SellerServiceImpl () throws NamingException {
		dao = new SellerDaoImpl();
	}
	

	@Override
	public Seller login(Seller seller) {
		String account = seller.getAccount();
		String password = seller.getPassword();
		System.out.println(account + " " + password);
		if (!checkValue(account) || !checkValue(password)) {
			System.out.println("帳號或密碼錯誤");
			return null;
		}
		seller = dao.selectForLogin(seller);
		return seller;
	}
	
	
	@Override
	public Integer register(Seller seller) {
		Integer status = dao.insert(seller);
		return status;
	}

	private boolean checkValue(String value) {
		if (value == null || Objects.equals(value, "")) {
			System.out.println(value);
			return false;
		}
		return true;
	}
}
