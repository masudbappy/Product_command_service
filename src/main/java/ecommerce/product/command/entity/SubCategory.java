package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(name = "sub_categories", indexes = @Index(name = "idx_sub_categories_name_1", columnList = "name"))
public class SubCategory extends BaseEntity {
    @NotBlank
    @Size(min = 3, max = 255)
    @Column(nullable = false, length = 255, unique = true)
    private String name;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;
}