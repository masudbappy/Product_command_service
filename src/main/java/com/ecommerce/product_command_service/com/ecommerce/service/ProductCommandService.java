package com.ecommerce.product_command_service.com.ecommerce.service;

import com.ecommerce.product_command_service.com.ecommerce.dto.ProductEvent;
import com.ecommerce.product_command_service.com.ecommerce.entity.Product;
import com.ecommerce.product_command_service.com.ecommerce.repository.ProductRepository;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class ProductCommandService {
    private final ProductRepository productRepository;
    private final KafkaTemplate<String, Object> kafkaTemplate;

    public ProductCommandService(ProductRepository productRepository, KafkaTemplate<String, Object> kafkaTemplate) {
        this.productRepository = productRepository;
        this.kafkaTemplate = kafkaTemplate;
    }

    public Product createProduct(ProductEvent productEvent) {
        Product productEntity = productRepository.save(productEvent.getProduct());
        ProductEvent event = new ProductEvent("CreateProduct", productEntity);
        kafkaTemplate.send("product-event-topic", event);
        return productEntity;
    }

    public Product updateProduct(long id, ProductEvent productEvent) {
        Product existingProduct = productRepository.findById(id).orElseThrow(() -> new RuntimeException("Product not found"));
        existingProduct.setName(productEvent.getProduct().getName());
        existingProduct.setCategoryId(productEvent.getProduct().getCategoryId());
        existingProduct.setSubCategoryId(productEvent.getProduct().getSubCategoryId());
        existingProduct.setDescription(productEvent.getProduct().getDescription());
        Product productEntity = productRepository.save(existingProduct);
        ProductEvent event = new ProductEvent("UpdateProduct", productEntity);
        kafkaTemplate.send("product-event-topic", event);
        return productEntity;
    }
}
