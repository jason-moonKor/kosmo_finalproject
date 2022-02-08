package com.milsoosellers.work.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.milsoosellers.work.domain.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void save(Member member) {

		sqlSession.insert("MemberMapper.save", member);
		
	}

	@Override
	public Member findById(String member_id) {
		
		return (Member) sqlSession.selectOne("MemberMapper.findById", member_id);
	}

	@Override
	public String getTime() {
		return sqlSession.selectOne("MemberMapper.getTime");
	}
}
