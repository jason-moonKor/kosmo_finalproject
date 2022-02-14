package com.example.shop.Product.dto;

public class ProductDTO  {
	/* 상품 인덱스 */
	private int Prod_index;
	/* 상품 이름 */
	private String Prod_name;
	/* 상품 가격 */
	private int Prod_price;
	/* 상품 이미지 */
	private String Prod_image;
	/* 상품 아이디 */
	private String Prod_id;
	/* 상품 카트 */
	private String Prod_cart;
	/* 상품 코드 */
	private String Prod_code;
	
	//멤버 변수별 겟터 셋터
	public int getProd_index() {
		return Prod_index;
	}
	public void setProd_index(int prod_index) {
		Prod_index = prod_index;
	}
	public String getProd_name() {
		return Prod_name;
	}
	public void setProd_name(String prod_name) {
		Prod_name = prod_name;
	}
	public int getProd_price() {
		return Prod_price;
	}
	public void setProd_price(int prod_price) {
		Prod_price = prod_price;
	}
	public String getProd_image() {
		return Prod_image;
	}
	public void setProd_image(String prod_image) {
		Prod_image = prod_image;
	}
	public String getProd_id() {
		return Prod_id;
	}
	public void setProd_id(String prod_id) {
		Prod_id = prod_id;
	}
	public String getProd_cart() {
		return Prod_cart;
	}
	public void setProd_cart(String prod_cart) {
		Prod_cart = prod_cart;
	}
	public String getProd_code() {
		return Prod_code;
	}
	public void setProd_code(String prod_code) {
		Prod_code = prod_code;
	}
	
	
	@Override

	public String toString() {

		return "Product [Prod_index= " + Prod_index + ", Prod_name =" + Prod_price + ", Prod_image = " + ", Prod_id="
				+ Prod_cart + ", Prod_code =" + "]" ;
	}

	
	
	
	

}
