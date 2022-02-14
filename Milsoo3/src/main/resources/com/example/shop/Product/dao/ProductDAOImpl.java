package com.example.shop.Product.dao;
import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.shop.Product.dto.ProductDTO;

@Repository
public abstract class ProductDAOImpl implements ProductDAO {
	 
	    //DAO니까 mybatis의 sqlSession을 주입받음
	    @Inject
	    SqlSession sqlSession;
	        
	    @Override
	    public ProductDTO detailProduct(int prod_index) { 
	        return sqlSession.selectOne(//sqlsession에 저장된 값중에 하나를 리턴한다 (상품번호)
	                "product.product_detail",prod_index);
	        //앞쪽에 namespace와 뒤쪽에 id를 적는다. 이렇게 해야 Mapper와 매핑이 된다.
	    
	 
	    }
	    
	}
