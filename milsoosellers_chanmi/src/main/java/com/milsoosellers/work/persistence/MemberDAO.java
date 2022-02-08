package com.milsoosellers.work.persistence;

import com.milsoosellers.work.domain.Member;

public interface MemberDAO {

	public String getTime();
	public void save(Member member);
	public Member findById(String member_id);
}
