package com.example.cotroller;

	import java.util.HashMap;
	import java.util.Map;
	 
	import javax.inject.Inject;
	 
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.servlet.ModelAndView;
	 
	import com.example.shop.Product.dto.ProductDTO;
	import com.example.shop.service.ProductServiceImpl;
	 
	@Controller
	@RequestMapping("/shop/product/*")
	public class ProductController {
	 
	    @Inject 
	    ProductServiceImpl productServiceImpl;
	    
	    @RequestMapping("list.do")
	    public ModelAndView list(ModelAndView mav){    
	    
	        //1. ModelAndView setViewName과 addObject 메서드 사용하여 데이터 담기
	        
	        mav.setViewName("/shop/product_list");  //상품리스트 페이지로
	        mav.addObject("list", productServiceImpl.listProduct());
	    
	        return mav;
	    };//상품목록 
	    //product_list.jsp>>>
	    @RequestMapping("/detail/{product_id}")
	    public ModelAndView detail(
	            @PathVariable("product_id") int product_id,
	            ModelAndView mav) {
	        mav.setViewName("/shop/product_detail");
	        mav.addObject("dto", productServiceImpl.detailProduct(product_id));
	    
	        return mav;
	    }//상품 디테일
	 
	    
	    @RequestMapping("write.do")
	    public String write() {
	        return "shop/product_write";
	    }//데이터처리 없이 글쓰기 페이지로 포워딩
	    

}
