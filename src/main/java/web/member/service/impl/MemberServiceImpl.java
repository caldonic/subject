package web.member.service.impl;

import java.util.Objects;

import javax.naming.NamingException;

import web.member.dao.MemberDao;
import web.member.dao.impl.MemberDaoImpl;
import web.member.service.MemberService;
import web.vo.Member;

public class MemberServiceImpl implements MemberService {
	private MemberDao dao;

	public MemberServiceImpl () throws NamingException {
		dao = new MemberDaoImpl();
	}
	
	@Override
	public Member login(Member member) {
		String account = member.getAccount();
		String password = member.getPassword();
		System.out.println(account + " " + password);
		if (!checkValue(account) || !checkValue(password)) {
			System.out.println("帳號或密碼錯誤");
			return null;
		}
		member = dao.selectForLogin(member);
		return member;
	}
	
	@Override
	public Integer register(Member member) {
		Integer status = dao.insert(member);
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
