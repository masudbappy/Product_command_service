package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(indexes = @Index(name = "idx_variant_product", columnList = "product_id"))
public class Variant extends BaseEntity{
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @NotBlank
    @Size(max = 255)
    private String name;

    @Min(0)
    private Integer quantity;

    @Lob
    private String description;

    @NotNull
    @Min(0)
    private Double price;
}