package com.milsoosellers.biz.mypage;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Order_ListServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container=
				new GenericXmlApplicationContext("classpath:applicationContext.xml");
		
		OrderService orderService= (OrderService)container.getBean("order_ListService");
		
		Order_ListVO vo= new Order_ListVO();
		
		List<Order_ListVO> orderList= orderService.getOrderList();
		for(Order_ListVO o : orderList) {
			System.out.println(o.toString());
		}
		
		container.close();
	}
}
