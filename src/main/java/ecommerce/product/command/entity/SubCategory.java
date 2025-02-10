package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(indexes = @Index(name = "idx_subcategory_category", columnList = "category_id"))
public class SubCategory extends BaseEntity{
    @NotBlank
    @Size(max = 255)
    @Column(nullable = false, length = 255, unique = true)
    private String name;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;
}