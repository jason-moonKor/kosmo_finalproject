package com.milsoosellers.view.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.order_list.Order_ListVO;
import com.milsoosellers.biz.order_list.impl.Order_ListDAO;

@Controller
public class GetOrderListController {
	
	@RequestMapping("/mypage/getOrderList.my")
	public ModelAndView getOrderList(Order_ListVO vo, Order_ListDAO dao, ModelAndView mav) {
		mav.addObject("order_list", dao.getOrderList(vo));
		mav.setViewName("mypage/myorder.jsp");
		return mav;
	}
}
