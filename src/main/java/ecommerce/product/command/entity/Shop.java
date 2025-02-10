package ecommerce.product.command.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(indexes = @Index(name = "idx_shop_id", columnList = "id"))
public class Shop extends BaseEntity{
    @NotBlank
    @Size(max = 255)
    private String name;

    @Lob
    @Column(columnDefinition = "TEXT")
    private String description;

    @Size(max = 255)
    private String imageUrl;

    @Size(max = 255)
    private String bannerUrl;
}