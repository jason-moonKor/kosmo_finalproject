package com.milsoosellers.view.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.order_list.impl.Order_ListDAO;

@Controller
public class GetOrderListController {
	
	@RequestMapping(value="/myorder.do", method= RequestMethod.GET)
	public ModelAndView getOrderList(Order_ListDAO dao, ModelAndView mav) {
		System.out.println("myorder");
		mav.addObject("orderList", dao.getOrderList());
		System.out.println("orderList : getOrderList() 수행");
		mav.setViewName("redirect:/mypage/myorder.jsp");
		return mav;
	}
}
