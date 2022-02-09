package com.milsoosellers.biz.mypage;

public class MemberVO {
	private String member_id;
	private String member_passwd;
	private String member_name;
	private String member_addr;
	private String member_tel;
	private String member_email;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_passwd() {
		return member_passwd;
	}
	public void setMember_passwd(String member_passwd) {
		this.member_passwd = member_passwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	
	@Override
	public String toString() {
		return "Member [ member_id= " + member_id + ", member_passwd= " + member_passwd + ", member_name= " + member_name 
				+ ", member_addr= " + member_addr + ", member_tel= " + member_tel + ", member_email= " + member_email + " ]";
	}
	
}
