package com.milsoosellers.biz.mypage;

public class DestinationVO {
	private String dest_id;
	private String member_id;
	private String member_tel;
	private String zipcode;
	private String address;
	private String origin_dest_id;
	
	public String getOrigin_dest_id() {
		return origin_dest_id;
	}
	public void setOrigin_dest_id(String origin_dest_id) {
		this.origin_dest_id = origin_dest_id;
	}
	public String getDest_id() {
		return dest_id;
	}
	public void setDest_id(String dest_id) {
		this.dest_id = dest_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "DestinatinoVO [ dest_id= " + dest_id + ", member_id= " + member_id + ", zipcode= " + zipcode + ", address= " + address + " ]";
	}
}
