package com.ecommerce.product_command_service.com.ecommerce.controller;

import com.ecommerce.product_command_service.com.ecommerce.dto.ProductEvent;
import com.ecommerce.product_command_service.com.ecommerce.entity.Product;
import com.ecommerce.product_command_service.com.ecommerce.service.ProductCommandService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/product")
public class ProductController {
    private final ProductCommandService productCommandService;

    public ProductController(ProductCommandService productCommandService) {
        this.productCommandService = productCommandService;
    }

    @PostMapping
    public Product createProduct(@RequestBody ProductEvent productEvent) {
        return productCommandService.createProduct(productEvent);
    }

    @PutMapping("/{id}")
    public Product updateProduct(@PathVariable long id, @RequestBody ProductEvent productEvent) {
        return productCommandService.updateProduct(id, productEvent);
    }
}
