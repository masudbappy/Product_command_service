package com.ecommerce.product_command_service.com.ecommerce.service;

import com.ecommerce.product_command_service.com.ecommerce.entity.Product;
import com.ecommerce.product_command_service.com.ecommerce.repository.ProductRepository;
import org.springframework.stereotype.Service;

@Service
public class ProductCommandService {
    private final ProductRepository productRepository;

    public ProductCommandService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product createProduct(Product product) {
        return productRepository.save(product);
    }

    public Product updateProduct(long id, Product product) {
        Product existingProduct = productRepository.findById(id).orElseThrow(() -> new RuntimeException("Product not found"));
        existingProduct.setName(product.getName());
        existingProduct.setCategoryId(product.getCategoryId());
        existingProduct.setSubCategoryId(product.getSubCategoryId());
        existingProduct.setDescription(product.getDescription());
        return productRepository.save(existingProduct);
    }
}
