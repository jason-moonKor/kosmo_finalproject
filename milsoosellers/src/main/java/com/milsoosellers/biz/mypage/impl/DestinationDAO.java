package com.milsoosellers.biz.mypage.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.milsoosellers.biz.common.JDBCUtil;
import com.milsoosellers.biz.mypage.DestinationVO;
import com.milsoosellers.biz.mypage.MemberVO;

@Repository
public class DestinationDAO {

	// SQL
	private final String ADDR_SELECT= "SELECT dest_id, mem_tel, address, zipcode "
			+ "FROM destination AS d JOIN `member` AS m "
			+ "ON d.member_id= m.member_id "
			+ "WHERE m.member_id='aaa';";

	
	// JDBC 
	private Connection conn= null;
	private PreparedStatement pstmt= null;
	private ResultSet rs= null;
	
	// CRUD (JDBCUtil)
	public List<DestinationVO> getDestList(){
		List<DestinationVO> destList= new ArrayList<DestinationVO>();
		List<MemberVO> memList= new ArrayList<MemberVO>();
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(ADDR_SELECT);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				DestinationVO dest= new DestinationVO();
				MemberVO mem= new MemberVO();
				
				dest.setDest_id(rs.getString("DEST_ID"));
				mem.setMember_tel(rs.getString("MEM_TEL"));
				dest.setAddress(rs.getString("ADDRESS"));
				dest.setZipcode(rs.getString("ZIPCODE"));
				
				System.out.println(rs.getString("DEST_ID"));
				System.out.println(rs.getString("MEM_TEL"));
				System.out.println(rs.getString("ADDRESS"));
				System.out.println(rs.getString("ZIPCODE"));
				destList.add(dest);
				memList.add(mem);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return destList;
	}
}
