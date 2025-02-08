package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(indexes = @Index(name = "idx_customizable_property_product", columnList = "product_id"))
public class CustomizableProperty extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @NotBlank
    @Size(max = 255)
    private String parameterName;

    @NotBlank
    @Size(max = 255)
    private String parameterValue;
}
