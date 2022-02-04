package com.milsoosellers.biz.order_list.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.milsoosellers.biz.order_list.Order_ListVO;

//@Repository("order_ListDAO")
@Repository
public class Order_ListDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// SQL 명령어
	private final String ORDER_SELECT= "SELECT * FROM ORDER_LIST";

	// CRUD (Spring JDBC)
	public List<Order_ListVO> getOrderList(Order_ListVO vo){
		System.out.println("==> SpringJDBC로 getOrderList() 수행");
		return jdbcTemplate.query(ORDER_SELECT, new OrderRowMapper());
	}
	
	/*
	// JDBC 관련 변수
	private Connection conn= null;
	private PreparedStatement pstmt= null;
	private ResultSet rs= null;
	*/
		
	/*
	// CRUD (JDBCUtil)
	public List<Order_ListVO> getOrderList(Order_ListVO vo){
		System.out.println("==> JDBC로 getOrderList() 수행");
		List<Order_ListVO> orderList= new ArrayList<Order_ListVO>();
		try {
			conn= JDBCUtil.getConnection();
			pstmt= conn.prepareStatement(ORDER_SELECT);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				Order_ListVO order= new Order_ListVO();
				order.setMember_id(rs.getString("MEMBER_ID"));
				order.setCount(rs.getString("COUNT"));
				order.setTotal_price(rs.getString("TOTAL_PRICE"));
				order.setOrder_date(rs.getString("ORDER_DATE"));
				order.setAddress(rs.getString("ADDRESS"));
				order.setOrder_status(rs.getString("ORDER_STATUS"));
				orderList.add(order);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return orderList;
	}
	*/
}
class OrderRowMapper implements RowMapper<Order_ListVO>{

	public Order_ListVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		Order_ListVO order= new Order_ListVO();
		order.setMember_id(rs.getString("MEMBER_ID"));
		order.setCount(rs.getString("COUNT"));
		order.setTotal_price(rs.getString("TOTAL_PRICE"));
		order.setOrder_date(rs.getString("ORDER_DATE"));
		order.setAddress(rs.getString("ADDRESS"));
		order.setOrder_status(rs.getString("ORDER_STATUS"));
		return order;
	}
	
}