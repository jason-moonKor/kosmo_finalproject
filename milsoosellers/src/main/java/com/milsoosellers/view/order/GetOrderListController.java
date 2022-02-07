package com.milsoosellers.view.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.order_list.Order_ListVO;
import com.milsoosellers.biz.order_list.impl.Order_ListDAO;

@Controller
@RequestMapping("/mypage")
public class GetOrderListController {
	
	@RequestMapping(value="/myorder", method= RequestMethod.GET)
	public ModelAndView getOrderList(Order_ListVO vo, Order_ListDAO dao, ModelAndView mav) {
		mav.addObject("order_list", dao.getOrderList(vo));
		mav.setViewName("myorder.jsp");
		return mav;
	}
}
