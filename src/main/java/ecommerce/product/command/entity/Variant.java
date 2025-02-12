package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(name = "variants", indexes = @Index(name = "idx_variant_product", columnList = "product_id"))
public class Variant extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @NotBlank
    @Size(min = 2, max = 255)  // Specify size constraints based on your requirements
    @Column(nullable = false, length = 255)
    private String name;

    @NotNull
    @Min(0)
    @Column(nullable = false, columnDefinition = "integer default 0")
    private Integer quantity;

    @Lob
    @Column(columnDefinition = "TEXT")
    private String description;

    @NotNull
    @Min(0)
    @Column(nullable = false)
    private Double price;
}