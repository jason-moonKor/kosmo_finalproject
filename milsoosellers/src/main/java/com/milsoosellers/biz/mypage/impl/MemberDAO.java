package com.milsoosellers.biz.mypage.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.milsoosellers.biz.common.JDBCUtil;
import com.milsoosellers.biz.mypage.MemberVO;

public class MemberDAO {
	
	// SQL
	private final String SELECT_MEMBER= "SELECT member_id, member_passwd, member_name, "
			+ "member_tel, member_email, member_addr "
			+ "FROM member  "
			+ "WHERE member_id= ? ; ";
	
	private final String SELECT_DEST= "SELECT dest_id FROM destination WHERE member_id= ? ;";
	
	private final String UPDATE_MEMBER= "UPDATE member "
			+ "SET member_passwd= ?, member_name= ?, member_addr= ?, member_tel= ?, member_email= ? "
			+ "WHERE member_id= ? ;";
	
	private final String DELETE_MEMBER= "DELETE FROM member WHERE member_id= ? AND member_passwd= ? ;";
	
	
	// JDBC 
	private Connection conn= null;
	private PreparedStatement pstmt= null;
	private ResultSet rs= null;
	
	// CRUD (JDBCUtil)
	public MemberVO getMember() {
		System.out.println("==> JDBC로 getMember() 수행");
		MemberVO member= null;
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(SELECT_MEMBER);
			pstmt.setString(1, "aaa");
			System.out.println(pstmt.toString());
			rs= pstmt.executeQuery();
			if(rs.next()) {
				member= new MemberVO();
				member.setMember_id(rs.getString("MEMBER_ID"));
				member.setMember_passwd(rs.getString("MEMBER_PASSWD"));
				member.setMember_name(rs.getString("MEMBER_NAME"));
				member.setMember_tel(rs.getString("MEMBER_TEL"));
				member.setMember_email(rs.getString("MEMBER_EMAIL"));
				member.setMember_addr(rs.getString("MEMBER_ADDR"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return member;
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("==> JDBC로 updateMember() 수행 ");
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(UPDATE_MEMBER);
			pstmt.setString(1, vo.getMember_passwd());
			pstmt.setString(2, vo.getMember_name());
			pstmt.setString(3, vo.getMember_addr());
			pstmt.setString(4, vo.getMember_tel());
			pstmt.setString(5, vo.getMember_email());
			pstmt.setString(6, vo.getMember_id());
			System.out.println(pstmt.toString());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}		
	}
	
	public void deleteMember(MemberVO vo) {
		System.out.println("==> JDBC로 deleteMember() 수행");
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(DELETE_MEMBER);
			pstmt.setString(1, vo.getMember_id());
			pstmt.setString(2, vo.getMember_passwd());
			System.out.println(pstmt.toString());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
	}
}
