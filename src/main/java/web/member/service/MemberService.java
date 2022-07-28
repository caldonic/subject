package web.member.service;

import web.vo.Member;

public interface MemberService {

	Member login(Member member);
	
	Integer register(Member member);

}