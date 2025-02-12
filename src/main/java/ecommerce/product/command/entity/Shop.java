package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(name = "shops", indexes = @Index(name = "idx_shops_id", columnList = "id"))
public class Shop extends BaseEntity {
    @NotBlank
    @Size(min = 3, max = 255)
    @Column(nullable = false, length = 255)
    private String name;

    @Lob
    @Column(columnDefinition = "TEXT", nullable = true)
    @Size(max = 2000)
    private String description;

    @Size(max = 2048)
    @Column(length = 2048, nullable = true)
    private String imageUrl;

    @Size(max = 2048)
    @Column(length = 2048, nullable = true)
    private String bannerUrl;
}