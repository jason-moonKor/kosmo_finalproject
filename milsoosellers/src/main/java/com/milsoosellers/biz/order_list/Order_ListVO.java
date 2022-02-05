package com.milsoosellers.biz.order_list;

public class Order_ListVO {
	private String member_id;
	private String prod_code;
	private String prod_name;
	private String count;
	private String total_price;
	private String order_date;
	private String address;
	private String order_status;
	

	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public String getProd_code() {
		return prod_code;
	}


	public void setProd_code(String prod_code) {
		this.prod_code = prod_code;
	}


	public String getProd_name() {
		return prod_name;
	}


	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}


	public String getCount() {
		return count;
	}


	public void setCount(String count) {
		this.count = count;
	}


	public String getTotal_price() {
		return total_price;
	}


	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}


	public String getOrder_date() {
		return order_date;
	}


	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getOrder_status() {
		return order_status;
	}


	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}


	@Override
	public String toString() {
		return "Order_ListVO [member_id= " + member_id + ", count= " + count + ", total_price= " + total_price
				+ ", order_date= " + order_date + ", address= " + address + ", order_status= " + order_status;
	}
	
	
}
