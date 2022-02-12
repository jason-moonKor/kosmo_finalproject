package com.milsoosellers.biz.mypage.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.milsoosellers.biz.common.JDBCUtil;
import com.milsoosellers.biz.mypage.DestinationVO;

@Repository
public class DestinationDAO {

	// SQL
	private final String INSERT_ADDR= "INSERT INTO destination (DEST_ID, MEMBER_ID, ADDRESS, ZIPCODE) VALUES (?,?,?,?) ;";
	
	private final String DELETE_ADDR= "DELETE FROM destination WHERE member_id=? AND dest_id= ? ; ";
	
	private final String GET_ADDRLIST= "SELECT d.member_id, dest_id, member_tel, address, zipcode "
			+ "FROM destination AS d JOIN member AS m "
			+ "ON d.member_id= m.member_id "
			+ "WHERE m.member_id= 'aaa' ;";
	
	private final String UPDATE_ADDR= "update destination as d join `member` as m "
			+ "on d.member_id= m.member_id "
			+ "set m.member_tel= ?, d.dest_id= ?, d.address=?, d.zipcode= ? "
			+ "where d.member_id= ? and d.dest_id= ? ;";
	
	private final String GET_ADDR= "SELECT m.member_id, dest_id, member_tel, address, zipcode "
			+ "FROM destination AS d JOIN `member` AS m "
			+ "ON d.member_id= m.member_id "
			+ "WHERE d.member_id=? AND d.dest_id= ? ;";

	
	// JDBC 
	private Connection conn= null;
	private PreparedStatement pstmt= null;
	private ResultSet rs= null;
	
	// CRUD (JDBCUtil)
	public void insertDest(DestinationVO vo) {
		System.out.println("==> JDBC로 insertDest() 수행");
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(INSERT_ADDR);
			pstmt.setString(1, vo.getDest_id());
			pstmt.setString(2, vo.getMember_id());
			pstmt.setString(3, vo.getAddress());
			pstmt.setString(4, vo.getZipcode());
			System.out.println(pstmt.toString());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
	}
	
	public void deleteDest(DestinationVO vo) {
		System.out.println("==> JDBC로 deleteDest() 수행");
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(DELETE_ADDR);
			pstmt.setString(1, vo.getMember_id());
			pstmt.setString(2, vo.getDest_id());
			System.out.println(pstmt.toString());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
	}
	
	public void updateDest(DestinationVO vo) {
		System.out.println("==> JDBC로 updateDest() 수행");

		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(UPDATE_ADDR);
			pstmt.setString(1, vo.getMember_tel());
			pstmt.setString(2, vo.getDest_id());
			pstmt.setString(3, vo.getAddress());
			pstmt.setString(4, vo.getZipcode());
			pstmt.setString(5, vo.getMember_id());
			pstmt.setString(6, vo.getOrigin_dest_id());
			System.out.println(pstmt.toString());
			pstmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
	}
	
	public DestinationVO getDest(DestinationVO vo) {
		System.out.println("==> JDBC로 getDest() 수행");
		DestinationVO dest= null;
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(GET_ADDR);
			pstmt.setString(1, vo.getMember_id());
			pstmt.setString(2, vo.getDest_id());
			System.out.println(pstmt.toString());
			rs= pstmt.executeQuery();
			if(rs.next()) {
				dest= new DestinationVO();
				dest.setMember_id(rs.getString("MEMBER_ID"));
				dest.setDest_id(rs.getString("DEST_ID"));
				dest.setMember_tel(rs.getString("MEMBER_TEL"));
				dest.setAddress(rs.getString("ADDRESS"));
				dest.setZipcode(rs.getString("ZIPCODE"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return dest;
	}
	
	public List<DestinationVO> getDestList(){
		System.out.println("==> JDBC로 getDestList() 수행");
		List<DestinationVO> destList= new ArrayList<DestinationVO>();
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(GET_ADDRLIST);
			//pstmt.setString(1, "abcd");
			rs= pstmt.executeQuery();
			while(rs.next()) {
				DestinationVO dest= new DestinationVO();
				dest.setMember_id(rs.getString("MEMBER_ID"));
				dest.setDest_id(rs.getString("DEST_ID"));
				dest.setMember_tel(rs.getString("MEMBER_TEL"));
				dest.setAddress(rs.getString("ADDRESS"));
				dest.setZipcode(rs.getString("ZIPCODE"));
				
				System.out.println(rs.getString("MEMBER_ID"));
				System.out.println(rs.getString("DEST_ID"));
				System.out.println(rs.getString("MEMBER_TEL"));
				System.out.println(rs.getString("ADDRESS"));
				System.out.println(rs.getString("ZIPCODE"));
				destList.add(dest);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return destList;
	}
}
