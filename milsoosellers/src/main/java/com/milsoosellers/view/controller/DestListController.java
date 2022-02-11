package com.milsoosellers.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.mypage.DestinationVO;
import com.milsoosellers.biz.mypage.impl.DestinationDAO;

@Controller
public class DestListController {

	@RequestMapping(value="/myaddr.do", method= RequestMethod.GET)
	public ModelAndView getDestList(DestinationDAO dao) {
		ModelAndView mav= new ModelAndView();
		mav.addObject("destList", dao.getDestList());
		mav.setViewName("mypage/myaddr.jsp");
		System.out.println(mav.getModel());
		return mav;
	}
	
	@RequestMapping(value="/getaddr.do", method= RequestMethod.GET)
	public ModelAndView getDest(DestinationVO vo, DestinationDAO dao, ModelAndView mav) {
		mav.addObject("dest", dao.getDest(vo));
		mav.setViewName("mypage/getaddr.jsp");
		System.out.println(mav.getModel());
		return mav;
	}
	
	@RequestMapping(value="/updateaddr.do", method= RequestMethod.GET)
	public String updateDest(DestinationVO vo, DestinationDAO dao) {
		System.out.println("updateaddr.do 실행");
		dao.updateDest(vo);
		return "myaddr.do";
	}
	
	
	
}
