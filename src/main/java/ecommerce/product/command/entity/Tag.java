package ecommerce.product.command.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Index;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(
        name = "tags",
        indexes = @Index(name = "idx_tag_id", columnList = "id")
)
public class Tag extends BaseEntity{
    @NotBlank
    @Size(max = 15)
    private String name;
}