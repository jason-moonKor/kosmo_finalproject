package com.example.shop.service;
import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;
 
import com.example.shop.Product.dao.ProductDAO;
import com.example.shop.Product.dto.ProductDTO;
 
@Service
public class ProductServiceImpl implements ProductService {
 
    @Inject
    ProductDAO productDao;
    
    @Override
    public List<ProductDTO> listProduct() {
        
        return productDao.listProduct();
    }
 
    @Override
    public ProductDTO detailProduct(int prod_index) {
        
        return productDao.detailProduct(prod_index);
    }
 
    @Override
    public String fileInfo(int prod_index) {
        
        return productDao.fileInfo(prod_index);
    }
 
    @Override
    public void updateProduct(ProductDTO dto) {
        productDao.updateProduct(dto);
        
    }
 
    @Override
    public void deletePrduct(int prod_index) {
        productDao.deleteProduct(prod_index);
    }
 
    @Override
    public void insertProduct(ProductDTO dto) {
        productDao.insertProduct(dto);
    }
    
}
