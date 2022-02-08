package com.milsoosellers.biz.order_list.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.milsoosellers.biz.order_list.OrderService;
import com.milsoosellers.biz.order_list.Order_ListVO;

@Service("order_ListService")
public class Order_ListImpl implements OrderService {
	@Autowired
	private Order_ListDAO order_ListDAO;
	
	@Override
	public List<Order_ListVO> getOrderList() {
		return order_ListDAO.getOrderList();
	}
	
}	
