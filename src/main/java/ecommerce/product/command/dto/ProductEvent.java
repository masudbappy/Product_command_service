package ecommerce.product.command.dto;

import ecommerce.product.command.enums.EventType;
import ecommerce.product.command.entity.Product;
import lombok.*;

@Data @AllArgsConstructor
@NoArgsConstructor @Getter @Setter
public class ProductEvent {
    private EventType eventType;
    private Product product;
}
