package com.milsoosellers.work.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.milsoosellers.work.domain.Member;
import com.milsoosellers.work.persistence.MemberDAO;

@Controller
public class MemberController {

	@Autowired
	MemberDAO memberDAO;
	
	@GetMapping("login")
	public String loginView() {
		return "login";
	}
	
	@GetMapping("register")
	public String registerView() {
		return "signup";
	}
	
	@PostMapping("register")
	public String registerPost(Member member) {
		System.out.println(member.getMem_name());
		memberDAO.save(member);
		return "redirect:/login";
	}
	
	@PostMapping("login")
	public String loginPost(HttpServletRequest request, HttpSession session) {
		String member_id =  (String)request.getParameter("member_id");
		String mem_passwd =  (String)request.getParameter("mem_passwd");
		
		System.out.println(member_id + mem_passwd);
		
		Member member = memberDAO.findById(member_id);
		
		if (member != null) {
			if (member.getMem_passwd().equals(mem_passwd)) {				
				session.setAttribute("loginMember", member);
				return "main";
			} else {
				return "login";
			}
		} else return "login";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
}
