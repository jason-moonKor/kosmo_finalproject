package com.example.shop.Product.dao;

import java.util.List;

import com.example.shop.Product.dao.ProductDAO;
import com.example.shop.Product.dto.ProductDTO;
 
public interface ProductDAO {

	    
	    List<ProductDTO> listProduct(); //상품 전체 목록
	    ProductDTO detailProduct(int prod_index); //상품 상세 정보
	    
	    void updateProduct(ProductDTO dto); //상품 상세 정보 수정
	    void deleteProduct(int prod_index); //등록한 상품 삭제
	    void insertProduct(ProductDTO dto); //상품 등록
	    String fileInfo(int prod_index); //파일의 정보
	    //파일 삭제할때 파일명 비교하기위해 파일명을 가져오는 메서드

}
