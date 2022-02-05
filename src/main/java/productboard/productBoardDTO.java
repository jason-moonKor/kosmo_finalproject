package productboard;

public class productBoardDTO {
	//멤버 변수 선언
	
	//상품인덱스
	private int prod_ID;
	//상품명
	private String prod_name;
	//상품가격
	private int prod_price;
	//상품이미지
	private String prod_img;
	//카테고리
	private String prod_category;
	//상품코드
	private String prod_code;
	//원래파일이름
	private String oFile;
	//서버파일이름
	private String sFile;
	
	// 게터 & 세터
	public int getProd_ID() {
		return prod_ID;
	}
	public void setProd_ID(int prod_ID) {
		this.prod_ID = prod_ID;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public String getProd_img() {
		return prod_img;
	}
	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}
	public String getProd_category() {
		return prod_category;
	}
	public void setProd_category(String prod_category) {
		this.prod_category = prod_category;
	}
	public String getProd_code() {
		return prod_code;
	}
	public void setProd_code(String prod_code) {
		this.prod_code = prod_code;
	}
	public String getoFile() {
		return oFile;
	}
	public void setoFile(String oFile) {
		this.oFile = oFile;
	}
	public String getsFile() {
		return sFile;
	}
	public void setsFile(String sFile) {
		this.sFile = sFile;
	}
	
	

}
