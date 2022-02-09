package com.milsoosellers.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.mypage.impl.Order_ListDAO;

@Controller
public class GetOrderListController {
	
	@RequestMapping(value="/myorder.do", method= RequestMethod.GET)
	public ModelAndView getOrderList(Order_ListDAO dao) {
		ModelAndView mav= new ModelAndView();
		System.out.println("myorder");
		mav.addObject("orderList", dao.getOrderList());
		mav.setViewName("mypage/myorder.jsp");
		System.out.println(mav.getModel());
		return mav;
	}
	
	@RequestMapping(value="/myrefund.do", method= RequestMethod.GET)
	public ModelAndView getRefundList(Order_ListDAO dao) {
		ModelAndView mav= new ModelAndView();
		System.out.println("myorder");
		mav.addObject("orderList", dao.getOrderList());
		mav.setViewName("mypage/myrefund.jsp");
		System.out.println(mav.getModel());
		return mav;
	}
}
