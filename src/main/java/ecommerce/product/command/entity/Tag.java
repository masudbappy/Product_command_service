package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(name = "tags", indexes = @Index(name = "idx_tags_name", columnList = "name"))
public class Tag extends BaseEntity {
    @NotBlank
    @Size(min = 2, max = 15)
    @Column(nullable = false, unique = true, length = 15)
    private String name;
}