package com.milsoosellers.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.milsoosellers.biz.mypage.MemberVO;
import com.milsoosellers.biz.mypage.impl.MemberDAO;

@Controller
public class MemberController {

	@RequestMapping(value="/myinfo.do")
	public ModelAndView getMyinfo(MemberDAO dao, ModelAndView mav) {
		mav.addObject("member", dao.getMember());
		mav.setViewName("mypage/myinfo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/updateMember.do")
	public String updateMyinfo(MemberVO vo, MemberDAO dao) {
		dao.updateMember(vo);
		return "myorder.do";
	}
	
	@RequestMapping(value="/deleteMember.do")
	public String deleteMyinfo(MemberVO vo, MemberDAO dao) {
		dao.deleteMember(vo);
		return "index.jsp";
	}
}
