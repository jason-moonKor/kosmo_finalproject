package com.example.shop.service;

import java.util.List;
 
import com.example.shop.Product.dto.ProductDTO;
 
public interface ProductService {
 
    //메서드는 DAO클래스와 동일
    List<ProductDTO> listProduct();
    ProductDTO detailProduct(int Prod_index);
    String fileInfo(int Prod_index);
    void updateProduct(ProductDTO dto);
    void deletePrduct(int Prod_index);
    void insertProduct(ProductDTO dto);
}
