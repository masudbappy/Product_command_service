package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.List;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(indexes = @Index(name = "idx_category_id", columnList = "id"))
public class Category extends BaseEntity{
    @NotBlank
    @Size(max = 255)
    private String name;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    private List<SubCategory> subCategories;
}