package com.milsoosellers.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.mypage.impl.DestinationDAO;

@Controller
public class GetDestListController {

	@RequestMapping(value="/myaddr.do", method= RequestMethod.GET)
	public ModelAndView getDestList(DestinationDAO dao) {
		ModelAndView mav= new ModelAndView();
		mav.addObject("destList", dao.getDestList());
		mav.setViewName("mypage/myaddr.jsp");
		System.out.println(mav.getModel());
		return mav;
	}
	
	
}
