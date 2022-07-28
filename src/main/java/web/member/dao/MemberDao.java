package web.member.dao;

import web.vo.Member;

public interface MemberDao {

	Integer insert(Member member);

	Integer delete(Member member);

	Member selectForLogin(Member member);

}