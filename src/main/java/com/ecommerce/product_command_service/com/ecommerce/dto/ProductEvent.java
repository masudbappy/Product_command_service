package com.ecommerce.product_command_service.com.ecommerce.dto;

import com.ecommerce.product_command_service.com.ecommerce.entity.Product;
import lombok.*;

@Data @AllArgsConstructor
@NoArgsConstructor @Getter @Setter
public class ProductEvent {
    private String eventType;
    private Product product;
}
