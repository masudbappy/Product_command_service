package com.ecommerce.product_command_service.com.ecommerce.service;

import com.ecommerce.product_command_service.com.ecommerce.dto.ProductEvent;
import com.ecommerce.product_command_service.com.ecommerce.entity.Product;
import com.ecommerce.product_command_service.com.ecommerce.repository.ProductRepository;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class ProductCommandService {
    private final ProductRepository productRepository;
    private final KafkaTemplate<String, Object> kafkaTemplate;
    private final ObjectMapper objectMapper;

    public ProductCommandService(ProductRepository productRepository,
                                 KafkaTemplate<String, Object> kafkaTemplate) {
        this.productRepository = productRepository;
        this.kafkaTemplate = kafkaTemplate;
        this.objectMapper = new ObjectMapper();
    }

    public Product createProduct(Product product) {
        Product productEntity = productRepository.save(product);
        ProductEvent event = new ProductEvent("CreateProduct", productEntity);
        sendToTopic(productEntity, "CreateProduct");
        return productEntity;
    }

    public Product updateProduct(long id, Product product) {
        Product existingProduct = productRepository.findById(id).orElseThrow(() -> new RuntimeException("Product not found"));
        existingProduct.setName(product.getName());
        existingProduct.setCategoryId(product.getCategoryId());
        existingProduct.setSubCategoryId(product.getSubCategoryId());
        existingProduct.setDescription(product.getDescription());
        Product productEntity = productRepository.save(existingProduct);
        sendToTopic(productEntity, "UpdateProduct");
        return productEntity;
    }

    private void sendToTopic(Product product, String EventType) {
        String jsonString = "";
        try {
            jsonString = objectMapper.writeValueAsString(new ProductEvent(EventType, product));
        } catch (JsonProcessingException e) {
            log.error("Error processing JSON: {}", e.getMessage());
        }
        log.info("Sending message to Kafka topic: {}", jsonString);
        kafkaTemplate.send("product-event-topic", jsonString).whenComplete((result, exception) -> {
            if (exception != null) {
                log.error("Error sending message to Kafka topic: {}", exception.getMessage());
            } else {
                log.info("Result: {}", result);
            }
        });
        log.info("Message sent to Kafka topic");
    }
}
