package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(name = "customizable_properties", indexes = @Index(name = "idx_customizable_properties_product_id", columnList = "product_id"))
public class CustomizableProperty extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @NotBlank
    @Size(max = 255)
    @Column(name = "param_name", nullable = false, length = 255)
    private String parameterName;

    @NotBlank
    @Size(max = 255)
    @Column(name = "param_value", nullable = false, length = 255)
    private String parameterValue;
}